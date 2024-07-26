import 'package:flutter/widgets.dart';
import 'package:rfw/rfw.dart';

import '../schema/core.dart';

typedef LibraryComponent = ({
  Schema schema,
  Widget Function(
    BuildContext context,
    GlobalKey Function() createKey,
    DataSource source,
  ) builder,
});

abstract class BaseLibrary {
  final String name;
  final List<List<String>> alias;
  final List<String> import;

  var keys = <String, List<WeakReference<GlobalKey>>>{};

  GlobalKey createKey(String component) {
    final current = keys[component];
    if (current != null) {
      keys[component] = [
        ...current,
        WeakReference(GlobalKey()),
      ];
    } else {
      keys[component] = [WeakReference(GlobalKey())];
    }
    return keys[component]!.last.target!;
  }

  BaseLibrary({
    required this.name,
    required this.import,
    this.alias = const [],
  });

  Map<String, LibraryComponent> build();

  // Map<String, LocalWidgetBuilder> get definitions => {
  //       for (final entry in build().entries) ...{
  //         entry.key: (context, source) {
  //           return entry.value.builder(context, createKey(entry.key), source);
  //         },
  //       },
  //     };
}
