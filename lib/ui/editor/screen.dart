import 'package:flutter/material.dart';
import 'package:rfw/rfw.dart' show FullyQualifiedWidgetName, RemoteWidget;
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:signals/signals_flutter.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';

import '../../../../src/libraries/core.dart';
import '../widgets/actions.dart';
import '../widgets/code_themes.dart';
import '../widgets/controllers/code.dart';
import '../widgets/controllers/rfw.dart';
import 'model.dart';

class Editor extends StatefulWidget {
  const Editor({super.key});

  @override
  State<Editor> createState() => _EditorState();
}

class _EditorState extends State<Editor> {
  final codeTheme = signal(CodeTheme.standard());
  final model = EditorViewModel(
    json: CodeController(),
    code: RfwController(),
    libraries: [CoreLibrary()],
  );
  final boxes = listSignal<(String, Rect)>([]);
  final showOutline = signal(false);

  @override
  void initState() {
    super.initState();
    model.init();
    model.loadDefault();
  }

  @override
  void dispose() {
    model.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final jsonEditor = Watch.builder(
      builder: (context) => TextFormField(
        decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(8),
        ),
        expands: true,
        maxLines: null,
        controller: model.json
          ..codeTheme = codeTheme()
          ..formatException = model.jsonError$(),
        autovalidateMode: AutovalidateMode.always,
        validator: FormBuilderValidators.compose([
          FormBuilderValidators.json(),
          (val) {
            final e = model.jsonError$();
            if (e != null) {
              return e.toString();
            }
            return null;
          },
        ]),
      ),
    );
    final rfwEditor = Watch.builder(
      builder: (context) => TextFormField(
        decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(8),
        ),
        expands: true,
        maxLines: null,
        controller: model.code
          ..codeTheme = codeTheme()
          ..parserException = model.codeError$(),
        autovalidateMode: AutovalidateMode.always,
        validator: FormBuilderValidators.compose([
          FormBuilderValidators.required(),
          (val) {
            final e = model.codeError$();
            if (e != null) {
              return e.toString();
            }
            return null;
          },
          (val) {
            if (val != null) {
              final hasRoot = val.contains('widget root = ');
              if (!hasRoot) {
                return 'Must have root widget';
              }
            }
            return null;
          },
        ]),
      ),
    );
    final preview = Watch.builder(
      builder: (context) {
        if (model.rfw$().text.isEmpty) {
          return const SizedBox.expand();
        }
        return RemoteWidget(
          runtime: model.runtime,
          data: model.data,
          widget: FullyQualifiedWidgetName(
            model.library,
            model.widget$(),
          ),
          onEvent: (event, args) {
            model.onEvent(context, event, args);
          },
        );
      },
    );
    final treeView = Watch.builder(
      builder: (context) {
        return AnimatedTreeView<RfwNode>(
          padding: const EdgeInsets.all(20),
          treeController: model.treeController,
          nodeBuilder: (context, entry) {
            return InkWell(
              onTap: () {
                model.treeController.toggleExpansion(
                  entry.node,
                );
                model.selected$.value = entry.node;
              },
              child: TreeIndentation(
                entry: entry,
                guide: const IndentGuide.connectingLines(indent: 20),
                child: () {
                  if (entry.node.prefix != null) {
                    return Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '${entry.node.prefix}:',
                            style: TextStyle(
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSurface
                                  .withOpacity(0.6),
                            ),
                          ),
                          const TextSpan(text: ' '),
                          TextSpan(
                            text: entry.node.title,
                            style: TextStyle(
                              color: entry.node.color,
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                  return Text(
                    entry.node.title,
                    style: TextStyle(
                      color: entry.node.color,
                    ),
                  );
                }(),
              ),
            );
          },
        );
      },
    );
    return Stack(
      children: [
        Positioned.fill(
          child: Scaffold(
            appBar: AppBar(
              title: const Text('RFW Studio'),
              centerTitle: false,
              actions: [
                if (MediaQuery.sizeOf(context).width > 600)
                  Tooltip(
                    message: 'Debug widget locations',
                    child: Switch(
                      value: showOutline(),
                      onChanged: (val) {
                        showOutline.value = val;
                        boxes.clear();
                        if (val == true) {
                          for (final l in model.libraries) {
                            for (final k in l.keys.keys) {
                              final keys = l.keys[k] ?? [];
                              for (final key in keys) {
                                final t = key.target;
                                if (t == null) continue;
                                final ctx = t.currentContext;
                                if (ctx == null) continue;
                                final box =
                                    ctx.findRenderObject() as RenderBox?;
                                if (box == null) continue;
                                final position = box.localToGlobal(Offset.zero);
                                final item = (k, position & box.size);
                                boxes.add(item);
                              }
                            }
                          }
                        }
                      },
                    ),
                  ),
              ],
            ),
            body: NotificationListener<CodeSelection>(
              onNotification: (notification) {
                toast(context, notification.value);
                return true;
              },
              child: Form(
                key: model.formKey,
                child: LayoutBuilder(
                  builder: (context, dimens) {
                    if (dimens.maxWidth < 600 || dimens.maxHeight < 600) {
                      return DefaultTabController(
                        length: 4,
                        initialIndex: 1,
                        child: Column(
                          children: [
                            const SizedBox(
                              child: TabBar.secondary(tabs: [
                                Tab(text: 'JSON (Data)'),
                                Tab(text: 'RFW (UI)'),
                                Tab(text: 'Preview'),
                                Tab(text: 'Tree View'),
                              ]),
                            ),
                            Expanded(
                              child: TabBarView(
                                children: [
                                  jsonEditor,
                                  rfwEditor,
                                  preview,
                                  treeView,
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    }
                    return Row(
                      children: [
                        Flexible(
                          child: Column(
                            children: [
                              Flexible(flex: 4, child: jsonEditor),
                              const Divider(height: 1),
                              Flexible(flex: 6, child: rfwEditor),
                            ],
                          ),
                        ),
                        const VerticalDivider(width: 1),
                        Flexible(
                          child: Column(
                            children: [
                              Flexible(flex: 7, child: preview),
                              if (dimens.maxHeight > 600) ...[
                                const Divider(height: 1),
                                Flexible(flex: 3, child: treeView),
                              ],
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
        ),
        for (final child in boxes.watch(context))
          Positioned.fromRect(
            rect: child.$2,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned.fill(
                  child: Container(
                    foregroundDecoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.red,
                      ),
                    ),
                    child: const SizedBox.expand(),
                  ),
                ),
                Positioned(
                  top: -10,
                  left: 0,
                  child: Material(
                    color: Colors.transparent,
                    child: Text(
                      child.$1,
                      style: const TextStyle(fontSize: 8),
                    ),
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
