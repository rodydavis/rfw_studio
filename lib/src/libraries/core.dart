import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:rfw/rfw.dart';

import '../schema/core.dart';
import '../schema/decoders.dart';
import 'base.dart';

class CoreLibrary extends BaseLibrary {
  CoreLibrary()
      : super(
          name: 'Core',
          import: ['widgets'],
          alias: [
            ['core', 'widgets']
          ],
        );

  @override
  Map<String, LibraryComponent> build() {
    return {
      'AnimationDefaults': (
        schema: Schema(
          type: DataType.object,
          properties: {
            'duration': DurationSchema(nullable: true),
            'curve': CurveSchema(nullable: true),
            'child': WidgetSchema(),
          },
        ),
        builder: (context, createKey, source) {
          return AnimationDefaults(
            key: createKey(),
            duration: ArgumentDecoders.duration(source, ['duration'], context),
            curve: ArgumentDecoders.curve(source, ['curve'], context),
            child: source.child(['child']),
          );
        },
      ),
      'Align': (
        schema: Schema(
          type: DataType.object,
          properties: {
            'duration': DurationSchema(nullable: true),
            'curve': CurveSchema(nullable: true),
            'alignment': AlignmentSchema(nullable: true),
            'widthFactor': NumberSchema(nullable: true),
            'heightFactor': NumberSchema(nullable: true),
            'onEnd': VoidHandlerSchema(nullable: true),
            'child': WidgetSchema(nullable: true),
          },
        ),
        builder: (context, createKey, source) {
          return AnimatedAlign(
            key: createKey(),
            duration: ArgumentDecoders.duration(source, ['duration'], context),
            curve: ArgumentDecoders.curve(source, ['curve'], context),
            alignment: ArgumentDecoders.alignment(source, ['alignment']) ??
                Alignment.center,
            widthFactor: source.v<double>(['widthFactor']),
            heightFactor: source.v<double>(['heightFactor']),
            onEnd: source.voidHandler(['onEnd']),
            child: source.optionalChild(['child']),
          );
        },
      ),
      'AspectRatio': (
        schema: Schema(
          type: DataType.object,
          properties: {
            'aspectRatio': NumberSchema(nullable: true),
            'child': WidgetSchema(nullable: true),
          },
        ),
        builder: (context, createKey, source) {
          return AspectRatio(
            key: createKey(),
            aspectRatio: source.v<double>(['aspectRatio']) ?? 1.0,
            child: source.optionalChild(['child']),
          );
        },
      ),
      'Center': (
        schema: Schema(
          type: DataType.object,
          properties: {
            'widthFactor': NumberSchema(nullable: true),
            'heightFactor': NumberSchema(nullable: true),
            'child': WidgetSchema(nullable: true),
          },
        ),
        builder: (context, createKey, source) {
          return Center(
            key: createKey(),
            widthFactor: source.v<double>(['widthFactor']),
            heightFactor: source.v<double>(['heightFactor']),
            child: source.optionalChild(['child']),
          );
        },
      ),
      'ClipRRect': (
        schema: Schema(
          type: DataType.object,
          properties: {
            'borderRadius': BorderRadiusSchema(nullable: true),
            'clipBehavior': Clip.values.toSchema(),
            'child': WidgetSchema(nullable: true),
          },
        ),
        builder: (context, createKey, source) {
          return ClipRRect(
            key: createKey(),
            borderRadius:
                ArgumentDecoders.borderRadius(source, ['borderRadius']) ??
                    BorderRadius.zero,
            // CustomClipper<RRect> clipper,
            clipBehavior: ArgumentDecoders.enumValue<Clip>(
                    Clip.values, source, ['clipBehavior']) ??
                Clip.antiAlias,
            child: source.optionalChild(['child']),
          );
        },
      ),
      'ColoredBox': (
        schema: Schema(
          type: DataType.object,
          properties: {
            'color': ColorSchema(nullable: true),
            'child': WidgetSchema(nullable: true),
          },
        ),
        builder: (context, createKey, source) {
          return ColoredBox(
            key: createKey(),
            color: ArgumentDecoders.color(source, ['color']) ??
                const Color(0xFF000000),
            child: source.optionalChild(['child']),
          );
        },
      ),
      'Column': (
        schema: Schema(
          type: DataType.object,
          properties: {
            'mainAxisAlignment': MainAxisAlignment.values.toSchema(),
            'mainAxisSize': MainAxisSize.values.toSchema(),
            'crossAxisAlignment': CrossAxisAlignment.values.toSchema(),
            'textDirection': TextDirection.values.toSchema(),
            'verticalDirection': VerticalDirection.values.toSchema(),
            'textBaseline': TextBaseline.values.toSchema(),
            'children': Schema(
              type: DataType.array,
              items: WidgetSchema(),
            ),
          },
        ),
        builder: (context, createKey, source) {
          return Column(
            key: createKey(),
            mainAxisAlignment: ArgumentDecoders.enumValue<MainAxisAlignment>(
                    MainAxisAlignment.values, source, ['mainAxisAlignment']) ??
                MainAxisAlignment.start,
            mainAxisSize: ArgumentDecoders.enumValue<MainAxisSize>(
                    MainAxisSize.values, source, ['mainAxisSize']) ??
                MainAxisSize.max,
            crossAxisAlignment: ArgumentDecoders.enumValue<CrossAxisAlignment>(
                    CrossAxisAlignment.values,
                    source,
                    ['crossAxisAlignment']) ??
                CrossAxisAlignment.center,
            textDirection: ArgumentDecoders.enumValue<TextDirection>(
                TextDirection.values, source, ['textDirection']),
            verticalDirection: ArgumentDecoders.enumValue<VerticalDirection>(
                    VerticalDirection.values, source, ['verticalDirection']) ??
                VerticalDirection.down,
            textBaseline: ArgumentDecoders.enumValue<TextBaseline>(
                TextBaseline.values, source, ['textBaseline']),
            children: source.childList(['children']),
          );
        },
      ),
      'Container': (
        schema: Schema(
          type: DataType.object,
          properties: {
            'duration': DurationSchema(nullable: true),
            'curve': CurveSchema(nullable: true),
            'alignment': AlignmentSchema(nullable: true),
            'padding': EdgeInsetsGeometrySchema(nullable: true),
            'color': ColorSchema(nullable: true),
            'decoration': DecorationSchema(nullable: true),
            'foregroundDecoration': DecorationSchema(nullable: true),
            'width': NumberSchema(nullable: true),
            'height': NumberSchema(nullable: true),
            'constraints': BoxConstraintsSchema(nullable: true),
            'margin': EdgeInsetsGeometrySchema(nullable: true),
            'transform': Matrix4Schema(nullable: true),
            'transformAlignment': AlignmentSchema(nullable: true),
            'clipBehavior': Clip.values.toSchema(),
            'onEnd': VoidHandlerSchema(nullable: true),
            'child': WidgetSchema(nullable: true),
          },
        ),
        builder: (context, createKey, source) {
          return AnimatedContainer(
            key: createKey(),
            duration: ArgumentDecoders.duration(source, ['duration'], context),
            curve: ArgumentDecoders.curve(source, ['curve'], context),
            alignment: ArgumentDecoders.alignment(source, ['alignment']),
            padding: ArgumentDecoders.edgeInsets(source, ['padding']),
            color: ArgumentDecoders.color(source, ['color']),
            decoration: ArgumentDecoders.decoration(source, ['decoration']),
            foregroundDecoration:
                ArgumentDecoders.decoration(source, ['foregroundDecoration']),
            width: source.v<double>(['width']),
            height: source.v<double>(['height']),
            constraints:
                ArgumentDecoders.boxConstraints(source, ['constraints']),
            margin: ArgumentDecoders.edgeInsets(source, ['margin']),
            transform: ArgumentDecoders.matrix(source, ['transform']),
            transformAlignment:
                ArgumentDecoders.alignment(source, ['transformAlignment']),
            clipBehavior: ArgumentDecoders.enumValue<Clip>(
                    Clip.values, source, ['clipBehavior']) ??
                Clip.none,
            onEnd: source.voidHandler(['onEnd']),
            child: source.optionalChild(['child']),
          );
        },
      ),
      'DefaultTextStyle': (
        schema: Schema(
          type: DataType.object,
          properties: {
            'duration': DurationSchema(nullable: true),
            'curve': CurveSchema(nullable: true),
            'style': TextStyleSchema(nullable: true),
            'softWrap': BooleanSchema(nullable: true),
            'overflow': TextOverflow.values.toSchema(),
            'maxLines': IntegerSchema(nullable: true),
            'textWidthBasis': TextWidthBasis.values.toSchema(),
            'textHeightBehavior': TextHeightBehaviorSchema(nullable: true),
            'onEnd': VoidHandlerSchema(nullable: true),
            'child': WidgetSchema(),
          },
        ),
        builder: (context, createKey, source) {
          return AnimatedDefaultTextStyle(
            key: createKey(),
            duration: ArgumentDecoders.duration(source, ['duration'], context),
            curve: ArgumentDecoders.curve(source, ['curve'], context),
            style: ArgumentDecoders.textStyle(source, ['style']) ??
                const TextStyle(),
            textAlign: ArgumentDecoders.enumValue<TextAlign>(
                TextAlign.values, source, ['textAlign']),
            softWrap: source.v<bool>(['softWrap']) ?? true,
            overflow: ArgumentDecoders.enumValue<TextOverflow>(
                    TextOverflow.values, source, ['overflow']) ??
                TextOverflow.clip,
            maxLines: source.v<int>(['maxLines']),
            textWidthBasis: ArgumentDecoders.enumValue<TextWidthBasis>(
                    TextWidthBasis.values, source, ['textWidthBasis']) ??
                TextWidthBasis.parent,
            textHeightBehavior: ArgumentDecoders.textHeightBehavior(
                source, ['textHeightBehavior']),
            onEnd: source.voidHandler(['onEnd']),
            child: source.child(['child']),
          );
        },
      ),
      'Directionality': (
        schema: Schema(
          type: DataType.object,
          properties: {
            'textDecoration': TextDirection.values.toSchema(),
            'child': WidgetSchema(),
          },
        ),
        builder: (context, createKey, source) {
          return Directionality(
            key: createKey(),
            textDirection: ArgumentDecoders.enumValue<TextDirection>(
                    TextDirection.values, source, ['textDirection']) ??
                TextDirection.ltr,
            child: source.child(['child']),
          );
        },
      ),
      'Expanded': (
        schema: Schema(
          type: DataType.object,
          properties: {
            'flex': IntegerSchema(nullable: true),
            'child': WidgetSchema(),
          },
        ),
        builder: (context, createKey, source) {
          return Expanded(
            key: createKey(),
            flex: source.v<int>(['flex']) ?? 1,
            child: source.child(['child']),
          );
        },
      ),
      'FittedBox': (
        schema: Schema(
          type: DataType.object,
          properties: {
            'fit': BoxFit.values.toSchema(),
            'alignment': AlignmentSchema(nullable: true),
            'clipBehavior': Clip.values.toSchema(),
            'child': WidgetSchema(nullable: true),
          },
        ),
        builder: (context, createKey, source) {
          return FittedBox(
            key: createKey(),
            fit: ArgumentDecoders.enumValue<BoxFit>(
                    BoxFit.values, source, ['fit']) ??
                BoxFit.contain,
            alignment: ArgumentDecoders.alignment(source, ['alignment']) ??
                Alignment.center,
            clipBehavior: ArgumentDecoders.enumValue<Clip>(
                    Clip.values, source, ['clipBehavior']) ??
                Clip.none,
            child: source.optionalChild(['child']),
          );
        },
      ),
      'FractionallySizedBox': (
        schema: Schema(
          type: DataType.object,
          properties: {
            'alignment': AlignmentSchema(),
            'widthFactor': NumberSchema(nullable: true),
            'heightFactor': NumberSchema(nullable: true),
            'child': WidgetSchema(),
          },
        ),
        builder: (context, createKey, source) {
          return FractionallySizedBox(
            key: createKey(),
            alignment: ArgumentDecoders.alignment(source, ['alignment']) ??
                Alignment.center,
            widthFactor: source.v<double>(['widthFactor']),
            heightFactor: source.v<double>(['heightFactor']),
            child: source.child(['child']),
          );
        },
      ),
      'GestureDetector': (
        schema: Schema(
          type: DataType.object,
          properties: {
            'onTap': VoidHandlerSchema(nullable: true),
            'onTapDown': HandlerSchema(nullable: true),
            'onTapUp': HandlerSchema(nullable: true),
            'onTapCancel': VoidHandlerSchema(nullable: true),
            'onDoubleTap': VoidHandlerSchema(nullable: true),
            'onLongPress': VoidHandlerSchema(nullable: true),
            'behavior': HitTestBehavior.values.toSchema(),
            'child': WidgetSchema(nullable: true),
          },
        ),
        builder: (context, createKey, source) {
          return GestureDetector(
            key: createKey(),
            onTap: source.voidHandler(['onTap']),
            onTapDown: source.handler([
              'onTapDown'
            ], (VoidCallback trigger) => (TapDownDetails details) => trigger()),
            onTapUp: source.handler(['onTapUp'],
                (VoidCallback trigger) => (TapUpDetails details) => trigger()),
            onTapCancel: source.voidHandler(['onTapCancel']),
            onDoubleTap: source.voidHandler(['onDoubleTap']),
            onLongPress: source.voidHandler(['onLongPress']),
            behavior: ArgumentDecoders.enumValue<HitTestBehavior>(
                HitTestBehavior.values, source, ['behavior']),
            child: source.optionalChild(['child']),
          );
        },
      ),
      'GridView': (
        schema: Schema(
          type: DataType.object,
          properties: {
            'scrollDirection': Axis.values.toSchema(),
            'reverse': BooleanSchema(),
            'primary': BooleanSchema(nullable: true),
            'shrinkWrap': BooleanSchema(),
            'padding': EdgeInsetsGeometrySchema(),
            'gridDelegate': GridDelegateSchema(),
            'addAutomaticKeepAlives': BooleanSchema(),
            'addRepaintBoundaries': BooleanSchema(),
            'addSemanticIndexes': BooleanSchema(),
            'cacheExtent': NumberSchema(nullable: true),
            'semanticChildCount': IntegerSchema(nullable: true),
            'dragStartBehavior': DragStartBehavior.values.toSchema(),
            'restorationId': StringSchema(nullable: true),
            'clipBehavior': Clip.values.toSchema(),
            'children': Schema(
              type: DataType.array,
              items: WidgetSchema(),
            ),
          },
        ),
        builder: (context, createKey, source) {
          return GridView.builder(
            key: createKey(),
            scrollDirection: ArgumentDecoders.enumValue<Axis>(
                    Axis.values, source, ['scrollDirection']) ??
                Axis.vertical,
            reverse: source.v<bool>(['reverse']) ?? false,
            // controller,
            primary: source.v<bool>(['primary']),
            // physics,
            shrinkWrap: source.v<bool>(['shrinkWrap']) ?? false,
            padding: ArgumentDecoders.edgeInsets(source, ['padding']),
            gridDelegate:
                ArgumentDecoders.gridDelegate(source, ['gridDelegate']) ??
                    const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
            itemBuilder: (BuildContext context, int index) =>
                source.child(['children', index]),
            itemCount: source.length(['children']),
            addAutomaticKeepAlives:
                source.v<bool>(['addAutomaticKeepAlives']) ?? true,
            addRepaintBoundaries:
                source.v<bool>(['addRepaintBoundaries']) ?? true,
            addSemanticIndexes: source.v<bool>(['addSemanticIndexes']) ?? true,
            cacheExtent: source.v<double>(['cacheExtent']),
            semanticChildCount: source.v<int>(['semanticChildCount']),
            dragStartBehavior: ArgumentDecoders.enumValue<DragStartBehavior>(
                    DragStartBehavior.values, source, ['dragStartBehavior']) ??
                DragStartBehavior.start,
            keyboardDismissBehavior:
                ArgumentDecoders.enumValue<ScrollViewKeyboardDismissBehavior>(
                        ScrollViewKeyboardDismissBehavior.values,
                        source,
                        ['keyboardDismissBehavior']) ??
                    ScrollViewKeyboardDismissBehavior.manual,
            restorationId: source.v<String>(['restorationId']),
            clipBehavior: ArgumentDecoders.enumValue<Clip>(
                    Clip.values, source, ['clipBehavior']) ??
                Clip.hardEdge,
          );
        },
      ),
      'Icon': (
        schema: Schema(
          type: DataType.object,
          properties: {
            '0': IconDataSchema(),
            'size': NumberSchema(nullable: true),
            'color': ColorSchema(nullable: true),
            'semanticLabel': StringSchema(nullable: true),
            'textDirection': TextDirection.values.toSchema(),
          },
        ),
        builder: (context, createKey, source) {
          return Icon(
            key: createKey(),
            ArgumentDecoders.iconData(source, []) ?? Icons.flutter_dash,
            size: source.v<double>(['size']),
            color: ArgumentDecoders.color(source, ['color']),
            semanticLabel: source.v<String>(['semanticLabel']),
            textDirection: ArgumentDecoders.enumValue<TextDirection>(
                TextDirection.values, source, ['textDirection']),
          );
        },
      ),
      'IconTheme': (
        schema: Schema(
          type: DataType.object,
          properties: {
            'data': IconThemeDataSchema(nullable: true),
            'child': WidgetSchema(),
          },
        ),
        builder: (context, createKey, source) {
          return IconTheme(
            key: createKey(),
            data: ArgumentDecoders.iconThemeData(source, []) ??
                const IconThemeData(),
            child: source.child(['child']),
          );
        },
      ),
      'IntrinsicHeight': (
        schema: Schema(
          type: DataType.object,
          properties: {
            'child': WidgetSchema(nullable: true),
          },
        ),
        builder: (context, createKey, source) {
          return IntrinsicHeight(
            key: createKey(),
            child: source.optionalChild(['child']),
          );
        },
      ),
      'IntrinsicWidth': (
        schema: Schema(
          type: DataType.object,
          properties: {
            'stepWidth': NumberSchema(nullable: true),
            'stepHeight': NumberSchema(nullable: true),
            'child': WidgetSchema(nullable: true),
          },
        ),
        builder: (context, createKey, source) {
          return IntrinsicWidth(
            key: createKey(),
            stepWidth: source.v<double>(['width']),
            stepHeight: source.v<double>(['height']),
            child: source.optionalChild(['child']),
          );
        },
      ),
      'Image': (
        schema: Schema(
          type: DataType.object,
          properties: {
            'image': ImageProviderSchema(),
            'semanticLabel': StringSchema(nullable: true),
            'excludeFromSemantics': BooleanSchema(nullable: true),
            'width': NumberSchema(nullable: true),
            'height': NumberSchema(nullable: true),
            'color': ColorSchema(nullable: true),
            'blendMode': BlendMode.values.toSchema(),
            'fit': BoxFit.values.toSchema(),
            'alignment': AlignmentSchema(nullable: true),
            'repeat': ImageRepeat.values.toSchema(),
            'centerSlice': RectSchema(nullable: true),
            'matchTextDirection': BooleanSchema(nullable: true),
            'gaplessPlayback': BooleanSchema(nullable: true),
            'isAntiAlias': BooleanSchema(nullable: true),
            'filterQuality': FilterQuality.values.toSchema(),
          },
        ),
        builder: (context, createKey, source) {
          return Image(
            key: createKey(),
            image: ArgumentDecoders.imageProvider(source, []) ??
                const AssetImage('error.png'),
            // ImageFrameBuilder? frameBuilder,
            // ImageLoadingBuilder? loadingBuilder,
            // ImageErrorWidgetBuilder? errorBuilder,
            semanticLabel: source.v<String>(['semanticLabel']),
            excludeFromSemantics:
                source.v<bool>(['excludeFromSemantics']) ?? false,
            width: source.v<double>(['width']),
            height: source.v<double>(['height']),
            color: ArgumentDecoders.color(source, ['color']),
            // Animation<double>? opacity,
            colorBlendMode: ArgumentDecoders.enumValue<BlendMode>(
                BlendMode.values, source, ['blendMode']),
            fit: ArgumentDecoders.enumValue<BoxFit>(
                BoxFit.values, source, ['fit']),
            alignment: ArgumentDecoders.alignment(source, ['alignment']) ??
                Alignment.center,
            repeat: ArgumentDecoders.enumValue<ImageRepeat>(
                    ImageRepeat.values, source, ['repeat']) ??
                ImageRepeat.noRepeat,
            centerSlice: ArgumentDecoders.rect(source, ['centerSlice']),
            matchTextDirection: source.v<bool>(['matchTextDirection']) ?? false,
            gaplessPlayback: source.v<bool>(['gaplessPlayback']) ?? false,
            isAntiAlias: source.v<bool>(['isAntiAlias']) ?? false,
            filterQuality: ArgumentDecoders.enumValue<FilterQuality>(
                    FilterQuality.values, source, ['filterQuality']) ??
                FilterQuality.low,
          );
        },
      ),
      'ListBody': (
        schema: Schema(
          type: DataType.object,
          properties: {
            'mainAxis': Axis.values.toSchema(),
            'reverse': BooleanSchema(nullable: true),
            'children': Schema(type: DataType.array, items: WidgetSchema()),
          },
        ),
        builder: (context, createKey, source) {
          return ListBody(
            key: createKey(),
            mainAxis: ArgumentDecoders.enumValue<Axis>(
                    Axis.values, source, ['mainAxis']) ??
                Axis.vertical,
            reverse: source.v<bool>(['reverse']) ?? false,
            children: source.childList(['children']),
          );
        },
      ),
      'ListView': (
        schema: Schema(
          type: DataType.object,
          properties: {
            'scrollDirection': Axis.values.toSchema(),
            'reverse': BooleanSchema(nullable: true),
            'primary': BooleanSchema(nullable: true),
            'shrinkWrap': BooleanSchema(nullable: true),
            'padding': EdgeInsetsGeometrySchema(nullable: true),
            'itemExtent': NumberSchema(nullable: true),
            'prototypeItem': WidgetSchema(nullable: true),
            'children': Schema(type: DataType.array, items: WidgetSchema()),
            'clipBehavior': Clip.values.toSchema(),
            'addAutomaticKeepAlives': BooleanSchema(nullable: true),
            'addRepaintBoundaries': BooleanSchema(nullable: true),
            'addSemanticIndexes': BooleanSchema(nullable: true),
            'cacheExtent': NumberSchema(nullable: true),
            'semanticChildCount': IntegerSchema(nullable: true),
            'dragStartBehavior': DragStartBehavior.values.toSchema(),
            'keyboardDismissBehavior':
                ScrollViewKeyboardDismissBehavior.values.toSchema(),
            'restorationId': StringSchema(nullable: true),
          },
        ),
        builder: (context, createKey, source) {
          return ListView.builder(
            key: createKey(),
            scrollDirection: ArgumentDecoders.enumValue<Axis>(
                    Axis.values, source, ['scrollDirection']) ??
                Axis.vertical,
            reverse: source.v<bool>(['reverse']) ?? false,
            // ScrollController? controller,
            primary: source.v<bool>(['primary']),
            // ScrollPhysics? physics,
            shrinkWrap: source.v<bool>(['shrinkWrap']) ?? false,
            padding: ArgumentDecoders.edgeInsets(source, ['padding']),
            itemExtent: source.v<double>(['itemExtent']),
            prototypeItem: source.optionalChild(['prototypeItem']),
            itemCount: source.length(['children']),
            itemBuilder: (BuildContext context, int index) =>
                source.child(['children', index]),
            clipBehavior: ArgumentDecoders.enumValue<Clip>(
                    Clip.values, source, ['clipBehavior']) ??
                Clip.hardEdge,
            addAutomaticKeepAlives:
                source.v<bool>(['addAutomaticKeepAlives']) ?? true,
            addRepaintBoundaries:
                source.v<bool>(['addRepaintBoundaries']) ?? true,
            addSemanticIndexes: source.v<bool>(['addSemanticIndexes']) ?? true,
            cacheExtent: source.v<double>(['cacheExtent']),
            semanticChildCount: source.v<int>(['semanticChildCount']),
            dragStartBehavior: ArgumentDecoders.enumValue<DragStartBehavior>(
                    DragStartBehavior.values, source, ['dragStartBehavior']) ??
                DragStartBehavior.start,
            keyboardDismissBehavior:
                ArgumentDecoders.enumValue<ScrollViewKeyboardDismissBehavior>(
                        ScrollViewKeyboardDismissBehavior.values,
                        source,
                        ['keyboardDismissBehavior']) ??
                    ScrollViewKeyboardDismissBehavior.manual,
            restorationId: source.v<String>(['restorationId']),
          );
        },
      ),
      'Opacity': (
        schema: Schema(
          type: DataType.object,
          properties: {
            'duration': DurationSchema(nullable: true),
            'curve': CurveSchema(nullable: true),
            'opacity': NumberSchema(nullable: true),
            'onEnd': VoidHandlerSchema(nullable: true),
            'alwaysIncludeSemantics': BooleanSchema(nullable: true),
            'child': WidgetSchema(nullable: true),
          },
        ),
        builder: (context, createKey, source) {
          return AnimatedOpacity(
            key: createKey(),
            duration: ArgumentDecoders.duration(source, ['duration'], context),
            curve: ArgumentDecoders.curve(source, ['curve'], context),
            opacity: source.v<double>(['opacity']) ?? 0.0,
            onEnd: source.voidHandler(['onEnd']),
            alwaysIncludeSemantics:
                source.v<bool>(['alwaysIncludeSemantics']) ?? true,
            child: source.optionalChild(['child']),
          );
        },
      ),
      'Padding': (
        schema: Schema(
          type: DataType.object,
          properties: {
            'duration': DurationSchema(nullable: true),
            'curve': CurveSchema(nullable: true),
            'padding': EdgeInsetsGeometrySchema(nullable: true),
            'onEnd': VoidHandlerSchema(nullable: true),
            'child': WidgetSchema(nullable: true),
          },
        ),
        builder: (context, createKey, source) {
          return AnimatedPadding(
            key: createKey(),
            duration: ArgumentDecoders.duration(source, ['duration'], context),
            curve: ArgumentDecoders.curve(source, ['curve'], context),
            padding: ArgumentDecoders.edgeInsets(source, ['padding']) ??
                EdgeInsets.zero,
            onEnd: source.voidHandler(['onEnd']),
            child: source.optionalChild(['child']),
          );
        },
      ),
      'Placeholder': (
        schema: Schema(
          type: DataType.object,
          properties: {
            'color': ColorSchema(nullable: true),
            'strokeWidth': NumberSchema(nullable: true),
            'fallbackWidth': NumberSchema(nullable: true),
            'fallbackHeight': NumberSchema(nullable: true),
          },
        ),
        builder: (context, createKey, source) {
          return Placeholder(
            key: createKey(),
            color: ArgumentDecoders.color(source, ['color']) ??
                const Color(0xFF455A64),
            strokeWidth: source.v<double>(['strokeWidth']) ?? 2.0,
            fallbackWidth: source.v<double>(['placeholderWidth']) ?? 400.0,
            fallbackHeight: source.v<double>(['placeholderHeight']) ?? 400.0,
          );
        },
      ),
      'Positioned': (
        schema: Schema(
          type: DataType.object,
          properties: {
            'duration': DurationSchema(nullable: true),
            'curve': CurveSchema(nullable: true),
            'start': NumberSchema(nullable: true),
            'top': NumberSchema(nullable: true),
            'end': NumberSchema(nullable: true),
            'bottom': NumberSchema(nullable: true),
            'width': NumberSchema(nullable: true),
            'height': NumberSchema(nullable: true),
            'onEnd': VoidHandlerSchema(nullable: true),
            'child': WidgetSchema(),
          },
        ),
        builder: (context, createKey, source) {
          return AnimatedPositionedDirectional(
            key: createKey(),
            duration: ArgumentDecoders.duration(source, ['duration'], context),
            curve: ArgumentDecoders.curve(source, ['curve'], context),
            start: source.v<double>(['start']),
            top: source.v<double>(['top']),
            end: source.v<double>(['end']),
            bottom: source.v<double>(['bottom']),
            width: source.v<double>(['width']),
            height: source.v<double>(['height']),
            onEnd: source.voidHandler(['onEnd']),
            child: source.child(['child']),
          );
        },
      ),
      'Rotation': (
        schema: Schema(
          type: DataType.object,
          properties: {
            'duration': DurationSchema(nullable: true),
            'curve': CurveSchema(nullable: true),
            'turns': NumberSchema(nullable: true),
            'alignment': AlignmentSchema(nullable: true),
            'filterQuality': FilterQuality.values.toSchema(),
            'onEnd': VoidHandlerSchema(nullable: true),
            'child': WidgetSchema(nullable: true),
          },
        ),
        builder: (context, createKey, source) {
          return AnimatedRotation(
            key: createKey(),
            duration: ArgumentDecoders.duration(source, ['duration'], context),
            curve: ArgumentDecoders.curve(source, ['curve'], context),
            turns: source.v<double>(['turns']) ?? 0.0,
            alignment: (ArgumentDecoders.alignment(source, ['alignment']) ??
                    Alignment.center)
                .resolve(Directionality.of(context)),
            filterQuality: ArgumentDecoders.enumValue<FilterQuality>(
                FilterQuality.values, source, ['filterQuality']),
            onEnd: source.voidHandler(['onEnd']),
            child: source.optionalChild(['child']),
          );
        },
      ),
      'Row': (
        schema: Schema(
          type: DataType.object,
          properties: {
            'mainAxisAlignment': MainAxisAlignment.values.toSchema(),
            'mainAxisSize': MainAxisSize.values.toSchema(),
            'crossAxisAlignment': CrossAxisAlignment.values.toSchema(),
            'textDirection': TextDirection.values.toSchema(),
            'verticalDirection': VerticalDirection.values.toSchema(),
            'textBaseline': TextBaseline.values.toSchema(),
            'children': Schema(
              type: DataType.array,
              items: WidgetSchema(),
            ),
          },
        ),
        builder: (context, createKey, source) {
          return Row(
            key: createKey(),
            mainAxisAlignment: ArgumentDecoders.enumValue<MainAxisAlignment>(
                    MainAxisAlignment.values, source, ['mainAxisAlignment']) ??
                MainAxisAlignment.start,
            mainAxisSize: ArgumentDecoders.enumValue<MainAxisSize>(
                    MainAxisSize.values, source, ['mainAxisSize']) ??
                MainAxisSize.max,
            crossAxisAlignment: ArgumentDecoders.enumValue<CrossAxisAlignment>(
                    CrossAxisAlignment.values,
                    source,
                    ['crossAxisAlignment']) ??
                CrossAxisAlignment.center,
            textDirection: ArgumentDecoders.enumValue<TextDirection>(
                TextDirection.values, source, ['textDirection']),
            verticalDirection: ArgumentDecoders.enumValue<VerticalDirection>(
                    VerticalDirection.values, source, ['verticalDirection']) ??
                VerticalDirection.down,
            textBaseline: ArgumentDecoders.enumValue<TextBaseline>(
                TextBaseline.values, source, ['textBaseline']),
            children: source.childList(['children']),
          );
        },
      ),
      'SafeArea': (
        schema: Schema(
          type: DataType.object,
          properties: {
            'left': BooleanSchema(nullable: true),
            'top': BooleanSchema(nullable: true),
            'right': BooleanSchema(nullable: true),
            'bottom': BooleanSchema(nullable: true),
            'minimum': EdgeInsetsGeometrySchema(nullable: true),
            'maintainBottomViewPadding': BooleanSchema(nullable: true),
            'child': WidgetSchema(),
          },
        ),
        builder: (context, createKey, source) {
          return SafeArea(
            key: createKey(),
            left: source.v<bool>(['left']) ?? true,
            top: source.v<bool>(['top']) ?? true,
            right: source.v<bool>(['right']) ?? true,
            bottom: source.v<bool>(['bottom']) ?? true,
            minimum: (ArgumentDecoders.edgeInsets(source, ['minimum']) ??
                    EdgeInsets.zero)
                .resolve(Directionality.of(context)),
            maintainBottomViewPadding:
                source.v<bool>(['maintainBottomViewPadding']) ?? false,
            child: source.child(['child']),
          );
        },
      ),
      'Scale': (
        schema: Schema(
          type: DataType.object,
          properties: {
            'duration': DurationSchema(nullable: true),
            'curve': CurveSchema(nullable: true),
            'scale': NumberSchema(nullable: true),
            'alignment': AlignmentSchema(nullable: true),
            'filterQuality': FilterQuality.values.toSchema(),
            'onEnd': VoidHandlerSchema(nullable: true),
            'child': WidgetSchema(nullable: true),
          },
        ),
        builder: (context, createKey, source) {
          return AnimatedScale(
            key: createKey(),
            duration: ArgumentDecoders.duration(source, ['duration'], context),
            curve: ArgumentDecoders.curve(source, ['curve'], context),
            scale: source.v<double>(['scale']) ?? 1.0,
            alignment: (ArgumentDecoders.alignment(source, ['alignment']) ??
                    Alignment.center)
                .resolve(Directionality.of(context)),
            filterQuality: ArgumentDecoders.enumValue<FilterQuality>(
                FilterQuality.values, source, ['filterQuality']),
            onEnd: source.voidHandler(['onEnd']),
            child: source.optionalChild(['child']),
          );
        },
      ),
      'SingleChildScrollView': (
        schema: Schema(
          type: DataType.object,
          properties: {
            'scrollDirection': Axis.values.toSchema(),
            'reverse': BooleanSchema(nullable: true),
            'padding': EdgeInsetsGeometrySchema(nullable: true),
            'primary': BooleanSchema(nullable: true),
            'dragStartBehavior': DragStartBehavior.values.toSchema(),
            'clipBehavior': Clip.values.toSchema(),
            'restorationId': StringSchema(nullable: true),
            'keyboardDismissBehavior':
                ScrollViewKeyboardDismissBehavior.values.toSchema(),
            'child': WidgetSchema(nullable: true),
          },
        ),
        builder: (context, createKey, source) {
          return SingleChildScrollView(
            key: createKey(),
            scrollDirection: ArgumentDecoders.enumValue<Axis>(
                    Axis.values, source, ['scrollDirection']) ??
                Axis.vertical,
            reverse: source.v<bool>(['reverse']) ?? false,
            padding: ArgumentDecoders.edgeInsets(source, ['padding']),
            primary: source.v<bool>(['primary']) ?? true,
            dragStartBehavior: ArgumentDecoders.enumValue<DragStartBehavior>(
                    DragStartBehavior.values, source, ['dragStartBehavior']) ??
                DragStartBehavior.start,
            clipBehavior: ArgumentDecoders.enumValue<Clip>(
                    Clip.values, source, ['clipBehavior']) ??
                Clip.hardEdge,
            restorationId: source.v<String>(['restorationId']),
            keyboardDismissBehavior:
                ArgumentDecoders.enumValue<ScrollViewKeyboardDismissBehavior>(
                        ScrollViewKeyboardDismissBehavior.values,
                        source,
                        ['keyboardDismissBehavior']) ??
                    ScrollViewKeyboardDismissBehavior.manual,
            // ScrollPhysics? physics,
            // ScrollController? controller,
            child: source.optionalChild(['child']),
          );
        },
      ),
      'SizedBox': (
        schema: Schema(
          type: DataType.object,
          properties: {
            'width': NumberSchema(nullable: true),
            'height': NumberSchema(nullable: true),
            'child': WidgetSchema(nullable: true),
          },
        ),
        builder: (context, createKey, source) {
          return SizedBox(
            key: createKey(),
            width: source.v<double>(['width']),
            height: source.v<double>(['height']),
            child: source.optionalChild(['child']),
          );
        },
      ),
      'SizedBoxExpand': (
        schema: Schema(
          type: DataType.object,
          properties: {
            'child': WidgetSchema(nullable: true),
          },
        ),
        builder: (context, createKey, source) {
          return SizedBox.expand(
            key: createKey(),
            child: source.optionalChild(['child']),
          );
        },
      ),
      'SizedBoxShrink': (
        schema: Schema(
          type: DataType.object,
          properties: {
            'child': WidgetSchema(nullable: true),
          },
        ),
        builder: (context, createKey, source) {
          return SizedBox.shrink(
            key: createKey(),
            child: source.optionalChild(['child']),
          );
        },
      ),
      'Spacer': (
        schema: Schema(
          type: DataType.object,
          properties: {
            'flex': IntegerSchema(nullable: true),
          },
        ),
        builder: (context, createKey, source) {
          return Spacer(
            key: createKey(),
            flex: source.v<int>(['flex']) ?? 1,
          );
        },
      ),
      'Stack': (
        schema: Schema(
          type: DataType.object,
          properties: {
            'alignment': AlignmentSchema(nullable: true),
            'textDirection': TextDirection.values.toSchema(),
            'fit': StackFit.values.toSchema(),
            'clipBehavior': Clip.values.toSchema(),
            'children': Schema(type: DataType.array, items: WidgetSchema()),
          },
        ),
        builder: (context, createKey, source) {
          return Stack(
            key: createKey(),
            alignment: ArgumentDecoders.alignment(source, ['alignment']) ??
                AlignmentDirectional.topStart,
            textDirection: ArgumentDecoders.enumValue<TextDirection>(
                TextDirection.values, source, ['textDirection']),
            fit: ArgumentDecoders.enumValue<StackFit>(
                    StackFit.values, source, ['fit']) ??
                StackFit.loose,
            clipBehavior: ArgumentDecoders.enumValue<Clip>(
                    Clip.values, source, ['clipBehavior']) ??
                Clip.hardEdge,
            children: source.childList(['children']),
          );
        },
      ),
      'Text': (
        schema: Schema(
          type: DataType.object,
          properties: {
            'text': Schema(
              oneOf: [
                StringSchema(),
                Schema(
                    type: DataType.array, items: StringSchema(nullable: true)),
              ],
            ),
            'textScaleFactor': NumberSchema(nullable: true),
            'style': TextStyleSchema(nullable: true),
            'strutStyle': StrutStyleSchema(nullable: true),
            'textAlign': TextAlign.values.toSchema(),
            'textDecoration': TextDirection.values.toSchema(),
            'locale': LocaleSchema(nullable: true),
            'softWrap': BooleanSchema(nullable: true),
            'overflow': TextOverflow.values.toSchema(),
            'maxLines': IntegerSchema(nullable: true),
            'semanticsLabel': StringSchema(nullable: true),
            'textWidthBasis': TextWidthBasis.values.toSchema(),
            'textHeightBehavior': TextHeightBehaviorSchema(nullable: true),
          },
        ),
        builder: (context, createKey, source) {
          String? text = source.v<String>(['text']);
          if (text == null) {
            final StringBuffer builder = StringBuffer();
            final int count = source.length(['text']);
            for (int index = 0; index < count; index += 1) {
              builder.write(source.v<String>(['text', index]) ?? '');
            }
            text = builder.toString();
          }
          final double? textScaleFactor = source.v<double>(['textScaleFactor']);
          return Text(
            key: createKey(),
            text,
            style: ArgumentDecoders.textStyle(source, ['style']),
            strutStyle: ArgumentDecoders.strutStyle(source, ['strutStyle']),
            textAlign: ArgumentDecoders.enumValue<TextAlign>(
                TextAlign.values, source, ['textAlign']),
            textDirection: ArgumentDecoders.enumValue<TextDirection>(
                TextDirection.values, source, ['textDirection']),
            locale: ArgumentDecoders.locale(source, ['locale']),
            softWrap: source.v<bool>(['softWrap']),
            overflow: ArgumentDecoders.enumValue<TextOverflow>(
                TextOverflow.values, source, ['overflow']),
            textScaler: textScaleFactor == null
                ? null
                : TextScaler.linear(textScaleFactor),
            maxLines: source.v<int>(['maxLines']),
            semanticsLabel: source.v<String>(['semanticsLabel']),
            textWidthBasis: ArgumentDecoders.enumValue<TextWidthBasis>(
                TextWidthBasis.values, source, ['textWidthBasis']),
            textHeightBehavior: ArgumentDecoders.textHeightBehavior(
                source, ['textHeightBehavior']),
          );
        },
      ),
      'Wrap': (
        schema: Schema(
          type: DataType.object,
          properties: {
            'alignment': WrapAlignment.values.toSchema(),
            'spacing': NumberSchema(nullable: true),
            'runAlignment': WrapAlignment.values.toSchema(),
            'runSpacing': NumberSchema(nullable: true),
            'crossAxisAlignment': WrapCrossAlignment.values.toSchema(),
            'textDirection': TextDirection.values.toSchema(),
            'verticalDirection': VerticalDirection.values.toSchema(),
            'clipBehavior': Clip.values.toSchema(),
            'children': Schema(
              type: DataType.array,
              items: WidgetSchema(),
            ),
          },
        ),
        builder: (context, createKey, source) {
          return Wrap(
            key: createKey(),
            alignment: ArgumentDecoders.enumValue<WrapAlignment>(
                    WrapAlignment.values, source, ['alignment']) ??
                WrapAlignment.start,
            spacing: source.v<double>(['spacing']) ?? 0.0,
            runAlignment: ArgumentDecoders.enumValue<WrapAlignment>(
                    WrapAlignment.values, source, ['runAlignment']) ??
                WrapAlignment.start,
            runSpacing: source.v<double>(['runSpacing']) ?? 0.0,
            crossAxisAlignment: ArgumentDecoders.enumValue<WrapCrossAlignment>(
                    WrapCrossAlignment.values,
                    source,
                    ['crossAxisAlignment']) ??
                WrapCrossAlignment.start,
            textDirection: ArgumentDecoders.enumValue<TextDirection>(
                TextDirection.values, source, ['textDirection']),
            verticalDirection: ArgumentDecoders.enumValue<VerticalDirection>(
                    VerticalDirection.values, source, ['verticalDirection']) ??
                VerticalDirection.down,
            clipBehavior: ArgumentDecoders.enumValue<Clip>(
                    Clip.values, source, ['clipBehavior']) ??
                Clip.none,
            children: source.childList(['children']),
          );
        },
      ),
    };
  }
}
