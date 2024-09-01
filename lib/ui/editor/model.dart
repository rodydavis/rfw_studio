import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart' show Colors;
import 'package:flutter/widgets.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:rfw/formats.dart';
import 'package:rfw/rfw.dart';
import 'package:signals/signals_flutter.dart';

import '../../src/libraries/base.dart';
import '../widgets/actions.dart';
import '../widgets/controllers/code.dart';
import '../widgets/controllers/rfw.dart';

class EditorViewModel {
  EditorViewModel({
    required this.code,
    required this.json,
    required this.libraries,
  });
  final List<BaseLibrary> libraries;
  final cleanup = <EffectCleanup>[];
  final RfwController code;
  final CodeController json;
  final runtime = Runtime();
  final data = DynamicContent();
  final formKey = GlobalKey<FormState>();
  late final rfw$ = valueNotifierToSignal(code);
  late final data$ = valueNotifierToSignal(json);
  final codeError$ = signal<ParserException?>(null);
  final jsonError$ = signal<FormatException?>(null);
  final library = const LibraryName(<String>['main']);
  final widget$ = signal('root');
  final selected$ = signal<RfwNode?>(null);

  final treeController = TreeController<RfwNode>(
    roots: [],
    childrenProvider: (val) => val.children.toList(),
    defaultExpansionState: true,
  );

  late final library$ = computed(() {
    final str = rfw$.value.text.trim();
    if (str.isEmpty) return null;
    try {
      codeError$.value = null;
      final lib = parseLibraryFile(str);
      runtime.update(library, lib);
      return lib;
    } catch (error) {
      if (error is ParserException) {
        codeError$.value = error;
      }
    }
  });

  void init() {
    for (final library in libraries) {
      final lib = LocalWidgetLibrary({
        for (final entry in library.build().entries) ...{
          entry.key: (context, source) {
            return entry.value.builder(
              context,
              () => library.createKey(entry.key),
              source,
            );
          },
        },
      });
      runtime.update(LibraryName(library.import), lib);
      for (final alias in library.alias) {
        runtime.update(LibraryName(alias), lib);
      }
    }
    cleanup.add(effect(() {
      final lib = library$.value;
      if (lib == null) return;
      final widgets = lib.widgets;
      final w = widget$.value;
      final widget = widgets.firstWhereOrNull((e) => e.name == w);
      if (widget == null) return;
      // print((w, widget.initialState, widget.root, lib.toString()));
      final items = lib.widgets.map(RfwNode.parse).toList();
      treeController.roots = items;
    }));
    cleanup.add(effect(() {
      final txt = data$().text.trim();
      if (txt.isEmpty) return;
      try {
        jsonError$.value = null;
        data.updateAll(jsonDecode(txt));
      } catch (err) {
        if (err is FormatException) {
          jsonError$.value = err;
        }
      }
    }));
  }

  void dispose() {
    for (final cb in cleanup) {
      cb();
    }
    json.dispose();
    code.dispose();
  }

  void clearKeys() {
    for (final library in libraries) {
      library.keys.clear();
    }
  }

  void onEvent(BuildContext context, String name, DynamicMap arguments) {
    debugPrint('user triggered event "$name" with data: $arguments');
    toast(context, '$name ${jsonEncode(arguments)}');
  }

  static const encoder = JsonEncoder.withIndent(' ');

  void loadDefault() {
    batch(() {
      json.text = encoder.convert(jsonDecode(_defaultJson));
      code.text = _defaultRfw;
    });
  }
}

const _defaultJson = '''
{
  "greet": {"name": "World"}
}
''';

const _defaultRfw = '''
import widgets;

widget root = Column(
  children: [
    Button(
      child: Text(text: ["Hello ", data.greet.name]),
      onPressed: event "click" {},
    ),
    Button(
      child: Text(text: ["Hello ", data.greet.name]),
      onPressed: event "click" {},
    ),
    Button(
      child: Text(text: ["Hello ", data.greet.name]),
      onPressed: event "click" {},
    ),
    Button(
      child: Text(text: ["Hello ", data.greet.name]),
      onPressed: event "click" {},
    ),
  ] 
);

widget Button { down: false } = GestureDetector(
  onTap: args.onPressed,
  onTapDown: set state.down = true,
  onTapUp: set state.down = false,
  onTapCancel: set state.down = false,
  child: Container(
    duration: 50,
    margin: switch state.down {
      false: [ 0.0, 0.0, 2.0, 2.0 ],
      true: [ 2.0, 2.0, 0.0, 0.0 ],
    },
    padding: [ 12.0, 8.0 ],
    decoration: {
      type: "shape",
      shape: {
        type: "stadium",
        side: { width: 1.0 },
      },
      gradient: {
        type: "linear",
        begin: { x: -0.5, y: -0.25 },
        end: { x: 0.0, y: 0.5 },
        colors: [ 0xFFFFFF99, 0xFFEEDD00 ],
        stops: [ 0.0, 1.0 ],
        tileMode: "mirror",
      },
      shadows: switch state.down {
        false: [ { blurRadius: 4.0, spreadRadius: 0.5, offset: { x: 1.0, y: 1.0, } } ],
        default: [],
      },
    },
    child: DefaultTextStyle(
      style: {
        color: 0xFF000000,
        fontSize: 32.0,
      },
      child: args.child,
    ),
  ),
);
''';

class RfwNode {
  final String title;
  final String? prefix;
  final RfwNode? parent;
  final Color? color;
  final List<RfwNode> children = [];
  Object source;

  RfwNode(
    this.source,
    this.title, {
    this.prefix,
    this.parent,
    this.color,
  });

  static RfwNode parse(
    Object? target, {
    RfwNode? parent,
    String? prefix,
  }) {
    return switch (target) {
      WidgetDeclaration val => () {
          final node = RfwNode(
            target,
            val.name,
            parent: parent,
            prefix: prefix,
            color: Colors.blueGrey,
          );
          node.children.add(RfwNode.parse(val.root, parent: node));
          return node;
        }(),
      ConstructorCall val => () {
          final node = RfwNode(
            target,
            val.name,
            parent: parent,
            prefix: prefix,
            color: Colors.blue,
          );
          for (final item in val.arguments.entries) {
            node.children.add(RfwNode.parse(
              item.value,
              parent: node,
              prefix: item.key,
            ));
          }
          return node;
        }(),
      Switch val => () {
          final node = RfwNode(
            target,
            'Switch',
            parent: parent,
            prefix: prefix,
            color: Colors.orange,
          );
          for (final item in val.outputs.entries) {
            node.children.add(RfwNode.parse(
              item.value,
              parent: node,
              prefix: item.key?.toString(),
            ));
          }
          return node;
        }(),
      ArgsReference _ => RfwNode(
          target,
          'Args',
          parent: parent,
          prefix: prefix,
          color: Colors.brown,
        ),
      DataReference _ => RfwNode(
          target,
          'Data',
          parent: parent,
          prefix: prefix,
          color: Colors.purple,
        ),
      AnyEventHandler _ => RfwNode(
          target,
          'Event',
          parent: parent,
          prefix: prefix,
          color: Colors.teal,
        ),
      // ArgsReference val => ArgsNode(val, parent),
      // AnyEventHandler val => EventNode(val, parent),
      // DataReference val => DataNode(val, parent),
      // Object? val => ValueNode(val, parent),

      final List<Object?> children => () {
          final node = RfwNode(
            target,
            '',
            parent: parent,
            prefix: prefix,
            color: Colors.green,
          );
          for (final child in children) {
            node.children.add(
              RfwNode.parse(
                child,
                parent: node,
                prefix: child?.toString(),
              ),
            );
          }
          return node;
        }(),
      (Object? _) => RfwNode(
          target ?? Object(),
          'Value',
          parent: parent,
          prefix: prefix,
        )
    };
  }
}
