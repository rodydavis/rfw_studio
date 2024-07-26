import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter/material.dart';
import 'core.dart';

part 'decoders.mapper.dart';

/// Decodes an [AlignmentDirectional] or [Alignment] object out of the
/// specified map.
///
/// If the map has `start` and `y` keys, then it is interpreted as an
/// [AlignmentDirectional] with those values. Otherwise if it has `x` and `y`
/// it's an [Alignment] with those values. Otherwise it returns null.
@MappableClass(discriminatorValue: 'alignment')
class AlignmentSchema extends Schema with AlignmentSchemaMappable {
  AlignmentSchema({
    super.requiredProperties,
    super.description,
    super.nullable,
  }) : super(
          oneOf: [
            Schema(
              type: DataType.object,
              properties: {
                'x': NumberSchema(),
                'y': NumberSchema(),
              },
              requiredProperties: ['x', 'y'],
            ),
            Schema(
              type: DataType.object,
              properties: {
                'y': NumberSchema(),
                'start': NumberSchema(),
              },
              requiredProperties: ['y', 'start'],
            ),
          ],
        );
}

/// Decodes the specified map into a [BoxConstraints].
///
/// The keys used are `minWidth`, `maxWidth`, `minHeight`, and `maxHeight`.
/// Omitted keys are defaulted to 0.0 for minimums and infinity for maximums.
@MappableClass(discriminatorValue: 'box_constraints')
class BoxConstraintsSchema extends Schema with BoxConstraintsSchemaMappable {
  BoxConstraintsSchema({
    super.requiredProperties,
    super.description,
    super.nullable,
  }) : super(type: DataType.object, properties: {
          'minWidth': NumberSchema(nullable: true),
          'minHeight': NumberSchema(nullable: true),
          'maxWidth': NumberSchema(nullable: true),
          'maxHeight': NumberSchema(nullable: true),
        });
}

/// Returns a [BorderDirectional] from the specified list.
///
/// The list is a list of values as interpreted by [borderSide]. An empty or
/// missing list results in a null return value. The list should have one
/// through four items. Extra items are ignored.
///
/// The values are interpreted as follows:
///
///  * start: first value.
///  * top: second value, defaulting to same as start.
///  * end: third value, defaulting to same as start.
///  * bottom: fourth value, defaulting to same as top.
@MappableClass(discriminatorValue: 'border')
class BorderSchema extends Schema with BorderSchemaMappable {
  BorderSchema({
    super.requiredProperties,
    super.description,
    super.nullable,
  }) : super(type: DataType.array, items: BorderSideSchema());
}

/// Returns a [BorderSide] from the specified map.
///
/// If the map is absent, returns null.
///
/// Otherwise (even if it has no keys), the [BorderSide] is created from the
/// keys `color` (see [color], defaults to black), `width` (a double, defaults
/// to 1.0), and `style` (see [enumValue] for [BorderStyle], defaults to
/// [BorderStyle.solid]).
@MappableClass(discriminatorValue: 'border_side')
class BorderSideSchema extends Schema with BorderSideSchemaMappable {
  BorderSideSchema({
    super.requiredProperties,
    super.description,
    super.nullable,
  }) : super(type: DataType.object, properties: {
          'color': ColorSchema(nullable: true),
          'width': NumberSchema(nullable: true),
          'style': BorderStyle.values.toSchema(),
        });
}

/// Returns a [BorderRadiusDirectional] from the specified list.
///
/// The list is a list of values as interpreted by [radius]. An empty or
/// missing list results in a null return value. The list should have one
/// through four items. Extra items are ignored.
///
/// The values are interpreted as follows:
///
///  * topStart: first value.
///  * topEnd: second value, defaulting to same as topStart.
///  * bottomStart: third value, defaulting to same as topStart.
///  * bottomEnd: fourth value, defaulting to same as topEnd.
@MappableClass(discriminatorValue: 'border_radius')
class BorderRadiusSchema extends Schema with BorderRadiusSchemaMappable {
  BorderRadiusSchema({
    super.requiredProperties,
    super.description,
    super.nullable,
  }) : super(
          type: DataType.array,
          items: RadiusSchema(),
        );
}

/// Returns a [Color] from the specified integer.
///
/// Returns null if it's not an integer; otherwise, passes it to the [
/// Color] constructor.
@MappableClass(discriminatorValue: 'color')
class ColorSchema extends Schema with ColorSchemaMappable {
  ColorSchema({
    super.requiredProperties,
    super.description,
    super.nullable,
  }) : super(type: DataType.integer);
}

/// Returns a [ColorFilter] from the specified map.
///
/// The `type` key specifies the kind of filter.
///
/// A type of `linearToSrgbGamma` creates a [ColorFilter.linearToSrgbGamma].
///
/// A type of `matrix` creates a [ColorFilter.matrix], parsing the `matrix`
/// key as per [colorMatrix]). If there is no `matrix` key, returns null.
///
/// A type of `mode` creates a [ColorFilter.mode], using the `color` key
/// (see[color], defaults to black) and the `blendMode` key (see [enumValue] for
/// [BlendMdoe], defaults to [BlendMode.srcOver])
///
/// A type of `srgbToLinearGamma` creates a [ColorFilter.srgbToLinearGamma].
///
/// If the type is none of these, but is not null, then the type is looked up
/// in [colorFilterDecoders], and if an entry is found, this method defers to
/// that callback.
///
/// Otherwise, returns null.
@MappableClass(discriminatorValue: 'color_filter')
class ColorFilterSchema extends Schema with ColorFilterSchemaMappable {
  ColorFilterSchema({
    super.requiredProperties,
    super.description,
    super.nullable,
  }) : super(
          discriminator: DiscriminatorSchema(
            propertyName: 'type',
            mapping: {
              'linearToSrgbGamma': Schema(ref: '#/schemas/linearToSrgbGamma'),
              'matrix': Schema(ref: '#/schemas/matrix'),
              'mode': Schema(ref: '#/schemas/mode'),
              'srgbToLinearGamma': Schema(ref: '#/schemas/srgbToLinearGamma'),
            },
          ),
          oneOf: [
            Schema(ref: '#/schemas/linearToSrgbGamma'),
            Schema(ref: '#/schemas/matrix'),
            Schema(ref: '#/schemas/mode'),
            Schema(ref: '#/schemas/srgbToLinearGamma'),
          ],
          schemas: {
            'linearToSrgbGamma': Schema(type: DataType.object, nullable: true),
            'matrix': ColorMatrixSchema(nullable: true),
            'mode': Schema(type: DataType.object, properties: {
              'color': ColorSchema(nullable: true),
              'blendMode': BlendMode.values.toSchema(),
            }),
            'srgbToLinearGamma': Schema(type: DataType.object, nullable: true),
            // TODO: colorFilterDecoders
          },
        );
}

/// Returns a list of 20 doubles from the specified list.
///
/// If the specified key does not identify a list, returns null instead.
///
/// If the list has fewer than 20 entries or if any of the entries are not
/// doubles, any entries that could not be obtained are replaced by zero.
///
/// Used by [colorFilter] in the `matrix` mode.
@MappableClass(discriminatorValue: 'color_matrix')
class ColorMatrixSchema extends Schema with ColorMatrixSchemaMappable {
  ColorMatrixSchema({
    super.requiredProperties,
    super.description,
    super.nullable,
  }) : super(type: DataType.array, items: NumberSchema());
}

/// Returns a [Color] from the specified integer.
///
/// Returns black if it's not an integer; otherwise, passes it to the [
/// Color] constructor.
///
/// This is useful in situations where null is not acceptable, for example,
/// when providing a decoder to [list]. Otherwise, prefer using [DataSource.v]
/// directly.
@MappableClass(discriminatorValue: 'color_or_black')
class ColorOrBlackSchema extends Schema with ColorOrBlackSchemaMappable {
  ColorOrBlackSchema({
    super.requiredProperties,
    super.description,
    super.nullable = true,
  }) : super(type: DataType.integer);
}

/// Returns a [Curve] from the specified string.
///
/// The given key should specify a string. If that string matches one of the
/// names of static curves defined in the [Curves] class, then that curve is
/// returned. Otherwise, if the string was not null, and is present as a key
/// in the [curveDecoders] map, then the matching decoder from that map is
/// invoked. Otherwise, the default obtained from [AnimationDefaults.curveOf]
/// is used (which is why a [BuildContext] is required).
@MappableClass(discriminatorValue: 'curve')
class CurveSchema extends Schema with CurveSchemaMappable {
  CurveSchema({
    super.requiredProperties,
    super.description,
    super.nullable,
  }) : super(type: DataType.string, enumValues: [
          'linear',
          'decelerate',
          'fastLinearToSlowEaseIn',
          'ease',
          'easeIn',
          'easeInToLinear',
          'easeInSine',
          'easeInQuad',
          'easeInCubic',
          'easeInQuart',
          'easeInQuint',
          'easeInExpo',
          'easeInCirc',
          'easeInBack',
          'easeOut',
          'linearToEaseOut',
          'easeOutSine',
          'easeOutQuad',
          'easeOutCubic',
          'easeOutQuart',
          'easeOutQuint',
          'easeOutExpo',
          'easeOutCirc',
          'easeOutBack',
          'easeInOut',
          'easeInOutSine',
          'easeInOutQuad',
          'easeInOutCubic',
          'easeInOutCubicEmphasized',
          'easeInOutQuart',
          'easeInOutQuint',
          'easeInOutExpo',
          'easeInOutCirc',
          'easeInOutBack',
          'fastOutSlowIn',
          'slowMiddle',
          'bounceIn',
          'bounceOut',
          'bounceInOut',
          'elasticIn',
          'elasticOut',
          'elasticInOut',
        ]);
  // TODO: curveDecoders
}

/// Returns a [Decoration] from the specified map.
///
/// The `type` key specifies the kind of decoration.
///
/// A type of `box` creates a [BoxDecoration] using the keys `color`
/// ([color]), `image` ([decorationImage]), `border` ([border]),
/// `borderRadius` ([borderRadius]), `boxShadow` (a [list] of [boxShadow]),
/// `gradient` ([gradient]), `backgroundBlendMode` (an [enumValue] of [BlendMode]),
/// and `shape` (an [enumValue] of [BoxShape]), these keys each corresponding to
/// the properties of [BoxDecoration] with the same name.
///
/// A type of `flutterLogo` creates a [FlutterLogoDecoration] using the keys
/// `color` ([color], corresponds to [FlutterLogoDecoration.textColor]),
/// `style` ([enumValue] of [FlutterLogoStyle], defaults to
/// [FlutterLogoStyle.markOnly]), and `margin` ([edgeInsets], always with a
/// left-to-right direction), the latter two keys corresponding to
/// the properties of [FlutterLogoDecoration] with the same name.
///
/// A type of `shape` creates a [ShapeDecoration] using the keys `color`
/// ([color]), `image` ([decorationImage]), `gradient` ([gradient]), `shadows`
/// (a [list] of [boxShadow]), and `shape` ([shapeBorder]), these keys each
/// corresponding to the properties of [ShapeDecoration] with the same name.
///
/// If the type is none of these, but is not null, then the type is looked up
/// in [decorationDecoders], and if an entry is found, this method defers to
/// that callback.
///
/// Otherwise, returns null.
@MappableClass(discriminatorValue: 'decoration')
class DecorationSchema extends Schema with DecorationSchemaMappable {
  DecorationSchema({
    super.requiredProperties,
    super.description,
    super.nullable,
  }) : super(
          discriminator: DiscriminatorSchema(
            propertyName: 'type',
            mapping: {
              'box': Schema(ref: '#/schemas/box'),
              'flutterLogo': Schema(ref: '#/schemas/flutterLogo'),
              'shape': Schema(ref: '#/schemas/shape'),
            },
          ),
          oneOf: [
            Schema(ref: '#/schemas/box'),
            Schema(ref: '#/schemas/flutterLogo'),
            Schema(ref: '#/schemas/shape'),
          ],
          schemas: {
            'box': Schema(type: DataType.object, properties: {
              'color': ColorSchema(nullable: true),
              'image': DecorationImageSchema(nullable: true),
              'border': BorderSchema(nullable: true),
              'borderRadius': BorderRadiusSchema(nullable: true),
              'boxShadow': Schema(
                type: DataType.array,
                items: BoxShadowSchema(),
                nullable: true,
              ),
              'gradient': GradientSchema(nullable: true),
              'backgroundBlendMode': BlendMode.values.toSchema(),
              'shape': BoxShape.values.toSchema(),
            }),
            'flutterLogo': Schema(type: DataType.object, properties: {
              'color': ColorSchema(nullable: true),
              'style': FlutterLogoStyle.values.toSchema(),
              'margin': EdgeInsetsGeometrySchema(nullable: true),
            }),
            'shape': Schema(type: DataType.object, properties: {
              'color': ColorSchema(nullable: true),
              'image': DecorationImageSchema(nullable: true),
              'gradient': GradientSchema(nullable: true),
              'shadows': Schema(
                  type: DataType.array,
                  items: BoxShadowSchema(),
                  nullable: true),
              'shape': ShapeBorderSchema(nullable: true),
            }),
          },
        );
  // TODO: decorationDecoders
}

/// Returns a [DecorationImage] from the specified map.
///
/// The [DecorationImage.image] is determined by interpreting the same key as
/// per [imageProvider]. If that method returns null, then this returns null
/// also. Otherwise, the return value is used as the provider and additional
/// keys map to the identically-named properties of [DecorationImage]:
/// `onError` (must be an event handler; the payload map is augmented by an
/// `exception` key that contains the text serialization of the exception and
/// a `stackTrace` key that contains the stack trace, also as a string),
/// `colorFilter` ([colorFilter]), `fit` ([enumValue] of [BoxFit]), `alignment`
/// ([alignment], defaults to [Alignment.center]), `centerSlice` ([rect]),
/// `repeat` ([enumValue] of [ImageRepeat], defaults to [ImageRepeat.noRepeat]),
/// `matchTextDirection` (boolean, defaults to false).
@MappableClass(discriminatorValue: 'decoration_image')
class DecorationImageSchema extends Schema with DecorationImageSchemaMappable {
  DecorationImageSchema({
    super.requiredProperties,
    super.description,
    super.nullable,
  }) : super(type: DataType.object, properties: {
          'source': ImageProviderSchema(),
          'onError': VoidHandlerSchema(nullable: true),
          'colorFilter': ColorFilterSchema(nullable: true),
          'fit': BoxFit.values.toSchema(),
          'alignment': AlignmentSchema(nullable: true),
          'centerSlice': RectSchema(),
          'repeat': ImageRepeat.values.toSchema(),
          'matchTextDirection': BooleanSchema(nullable: true),
          'filterQuality': FilterQuality.values.toSchema(),
        });
}

/// Returns a double from the specified double.
///
/// Returns 0.0 if it's not a double.
///
/// This is useful in situations where null is not acceptable, for example,
/// when providing a decoder to [list]. Otherwise, prefer using [DataSource.v]
/// directly.
@MappableClass(discriminatorValue: 'double_or_zero')
class DoubleOrZeroSchema extends Schema with DoubleOrZeroSchemaMappable {
  DoubleOrZeroSchema({
    super.requiredProperties,
    super.description,
    super.nullable = true,
  }) : super(type: DataType.number);
}

/// Returns a [Duration] from the specified integer.
///
/// If it's not an integer, the default obtained from
/// [AnimationDefaults.durationOf] is used (which is why a [BuildContext] is
/// required).
@MappableClass(discriminatorValue: 'duration')
class DurationSchema extends Schema with DurationSchemaMappable {
  DurationSchema({
    super.requiredProperties,
    super.description,
    super.nullable,
  }) : super(type: DataType.integer);
}

/// Returns an [EdgeInsetsDirectional] from the specified list.
///
/// The list is a list of doubles. An empty or missing list results in a null
/// return value. The list should have one through four items. Extra items are
/// ignored.
///
/// The values are interpreted as follows:
///
///  * start: first value.
///  * top: second value, defaulting to same as start.
///  * end: third value, defaulting to same as start.
///  * bottom: fourth value, defaulting to same as top.
@MappableClass(discriminatorValue: 'edge_insets_geometry')
class EdgeInsetsGeometrySchema extends Schema
    with EdgeInsetsGeometrySchemaMappable {
  EdgeInsetsGeometrySchema({
    super.requiredProperties,
    super.description,
    super.nullable,
    super.properties,
  }) : super(type: DataType.array, items: NumberSchema());
}

/// Returns a [FontFeature] from the specified map.
///
/// The `feature` key is used as the font feature name (defaulting to the
/// probably-useless private value "NONE"), and the `value` key is used as the
/// value (defaulting to 1, which typically means "enabled").
///
/// As this never returns null, it is possible to use it with [list].
@MappableClass(discriminatorValue: 'font_feature')
class FontFeatureSchema extends Schema with FontFeatureSchemaMappable {
  FontFeatureSchema({
    super.requiredProperties,
    super.description,
    super.nullable,
  }) : super(type: DataType.object, properties: {
          'feature': StringSchema(),
          'value': IntegerSchema(),
        });
}

/// Returns a [Gradient] from the specified map.
///
/// The `type` key specifies the kind of gradient.
///
/// A type of `linear` creates a [LinearGradient] using the keys `begin`
/// ([alignment], defaults to [Alignment.centerLeft]), `end` ([alignment],
/// defaults to [Alignment.centerRight]), `colors` ([list] of [colorOrBlack],
/// defaults to a two-element list with black and white), `stops` ([list] of
/// [doubleOrZero]), and `tileMode` ([enumValue] of [TileMode], defaults to
/// [TileMode.clamp]), these keys each corresponding to the properties of
/// [BoxDecoration] with the same name.
///
/// A type of `radial` creates a [RadialGradient] using the keys `center`
/// ([alignment], defaults to [Alignment.center]), `radius' (double, defaults
/// to 0.5), `colors` ([list] of [colorOrBlack], defaults to a two-element
/// list with black and white), `stops` ([list] of [doubleOrZero]), `tileMode`
/// ([enumValue] of [TileMode], defaults to [TileMode.clamp]), `focal`
/// (([alignment]), and `focalRadius` (double, defaults to zero), these keys
/// each corresponding to the properties of [BoxDecoration] with the same
/// name.
///
/// A type of `linear` creates a [LinearGradient] using the keys `center`
/// ([alignment], defaults to [Alignment.center]), `startAngle` (double,
/// defaults to 0.0), `endAngle` (double, defaults to 2π), `colors` ([list] of
/// [colorOrBlack], defaults to a two-element list with black and white),
/// `stops` ([list] of [doubleOrZero]), and `tileMode` ([enumValue] of [TileMode],
/// defaults to [TileMode.clamp]), these keys each corresponding to the
/// properties of [BoxDecoration] with the same name.
///
/// The `transform` property of these gradient classes is not supported.
// TODO(ianh): https://github.com/flutter/flutter/issues/87208
///
/// If the type is none of these, but is not null, then the type is looked up
/// in [gradientDecoders], and if an entry is found, this method defers to
/// that callback.
///
/// Otherwise, returns null.
@MappableClass(discriminatorValue: 'gradient')
class GradientSchema extends Schema with GradientSchemaMappable {
  GradientSchema({
    super.requiredProperties,
    super.description,
    super.nullable,
    super.properties,
  }) : super(
          discriminator: DiscriminatorSchema(
            propertyName: 'type',
            mapping: {
              'linear': Schema(ref: '#/schemas/linear'),
              'radial': Schema(ref: '#/schemas/radial'),
              'sweep': Schema(ref: '#/schemas/sweep'),
            },
          ),
          oneOf: [
            Schema(ref: '#/schemas/linear'),
            Schema(ref: '#/schemas/radial'),
            Schema(ref: '#/schemas/sweep'),
          ],
          schemas: {
            'linear': Schema(
              type: DataType.object,
              nullable: true,
              properties: {
                'begin': AlignmentSchema(nullable: true),
                'end': AlignmentSchema(nullable: true),
                'colors': Schema(
                  type: DataType.array,
                  items: ColorSchema(nullable: true),
                ),
                'tileMode': TileMode.values.toSchema(),
                //transform
              },
            ),
            'radial': Schema(
              type: DataType.object,
              nullable: true,
              properties: {
                'center': AlignmentSchema(nullable: true),
                'radius': NumberSchema(nullable: true),
                'colors': Schema(
                  type: DataType.array,
                  items: ColorSchema(nullable: true),
                ),
                'stops': Schema(
                  type: DataType.array,
                  items: NumberSchema(nullable: true),
                ),
                'tileMode': TileMode.values.toSchema(),
                'focal': AlignmentSchema(nullable: true),
                'focalRadius': NumberSchema(nullable: true),
              },
            ),
            'sweep': Schema(
              type: DataType.object,
              nullable: true,
              properties: {
                'center': AlignmentSchema(nullable: true),
                'startAngle': NumberSchema(nullable: true),
                'endAngle': NumberSchema(nullable: true),
                'colors': Schema(
                  type: DataType.array,
                  items: ColorSchema(nullable: true),
                ),
                'stops': Schema(
                  type: DataType.array,
                  items: NumberSchema(nullable: true),
                ),
                'tileMode': TileMode.values.toSchema(),
              },
            ),
          },
        );
  // TODO: gradientDecoders
}

/// Returns a [SliverGridDelegate] from the specified map.
///
/// The `type` key specifies the kind of grid delegate.
///
/// A type of `fixedCrossAxisCount` creates a
/// [SliverGridDelegateWithFixedCrossAxisCount] using the keys
/// `crossAxisCount`, `mainAxisSpacing`, `crossAxisSpacing`,
/// `childAspectRatio`, and `mainAxisExtent`.
///
/// A type of `maxCrossAxisExtent` creates a
/// [SliverGridDelegateWithMaxCrossAxisExtent] using the keys
/// maxCrossAxisExtent:`, `mainAxisSpacing`, `crossAxisSpacing`,
/// `childAspectRatio`, and `mainAxisExtent`.
///
/// The types (int or double) and defaults for these keys match the
/// identically named arguments to the default constructors of those classes.
///
/// If the type is none of these, but is not null, then the type is looked up
/// in [gridDelegateDecoders], and if an entry is found, this method defers to
/// that callback.
///
/// Otherwise, returns null.
@MappableClass(discriminatorValue: 'grid_delegate')
class GridDelegateSchema extends Schema with GridDelegateSchemaMappable {
  GridDelegateSchema({
    super.requiredProperties,
    super.description,
    super.nullable,
    super.properties,
  }) : super(
          discriminator: DiscriminatorSchema(
            propertyName: 'type',
          ),
          schemas: {
            'fixedCrossAxisCount': Schema(
              type: DataType.object,
              nullable: true,
              properties: {
                'crossAxisCount': IntegerSchema(nullable: true),
                'mainAxisSpacing': NumberSchema(nullable: true),
                'crossAxisSpacing': NumberSchema(nullable: true),
                'childAspectRatio': NumberSchema(nullable: true),
                'mainAxisExtent': NumberSchema(nullable: true),
              },
            ),
            'maxCrossAxisExtent': Schema(
              type: DataType.object,
              nullable: true,
              properties: {
                'maxCrossAxisExtent': IntegerSchema(nullable: true),
                'mainAxisSpacing': NumberSchema(nullable: true),
                'crossAxisSpacing': NumberSchema(nullable: true),
                'childAspectRatio': NumberSchema(nullable: true),
                'mainAxisExtent': NumberSchema(nullable: true),
              },
            ),
          },
        );
  // TODO: gridDelegateDecoders
}

/// Returns an [IconData] from the specified map.
///
/// If the map does not have an `icon` key that is an integer, returns null.
///
/// Otherwise, returns an [IconData] with the [IconData.codePoint] set to the
/// integer from the `icon` key, the [IconData.fontFamily] set to the string
/// from the `fontFamily` key, and the [IconData.matchTextDirection] set to
/// the boolean from the `matchTextDirection` key (defaulting to false).
///
/// For Material Design icons (those from the [Icons] class), the code point
/// can be obtained from the documentation for the icon, and the font family
/// is `MaterialIcons`. For example, [Icons.chalet] would correspond to
/// `{ icon: 0xe14f, fontFamily: 'MaterialIcons' }`.
///
/// When building the release build of an application that uses the RFW
/// package, because this method creates non-const [IconData] objects
/// dynamically, the `--no-tree-shake-icons` option must be used.
@MappableClass(discriminatorValue: 'icon_data')
class IconDataSchema extends Schema with IconDataSchemaMappable {
  IconDataSchema({
    super.requiredProperties,
    super.description,
    super.nullable,
  }) : super(type: DataType.object, properties: {
          'icon': IntegerSchema(),
          'fontFamily': StringSchema(nullable: true),
          'matchTextDirection': BooleanSchema(nullable: true),
        });
}

/// Returns an [IconThemeData] from the specified map.
///
/// If the map is absent, returns null.
///
/// Otherwise (even if it has no keys), the [IconThemeData] is created from
/// the following keys: 'color` ([color]), `opacity` (double), `size`
/// (double).
@MappableClass(discriminatorValue: 'icon_theme_data')
class IconThemeDataSchema extends Schema with IconThemeDataSchemaMappable {
  IconThemeDataSchema({
    super.requiredProperties,
    super.description,
    super.nullable,
  }) : super(type: DataType.object, properties: {
          'color': ColorSchema(nullable: true),
          'opacity': NumberSchema(nullable: true),
          'size': NumberSchema(nullable: true),
        });
}

/// Returns an [ImageProvider] from the specifed map.
///
/// The `source` key of the specified map is controlling. It must be a string.
/// If its value is one of the keys in [imageProviderDecoders], then the
/// relevant decoder is invoked and its return value is used (even if it is
/// null).
///
/// Otherwise, if the `source` key gives an absolute URL (one with a scheme),
/// then a [NetworkImage] with that URL is returned. Its scale is given by the
/// `scale` key (double, defaults to 1.0).
///
/// Otherwise, if the `source` key gives a relative URL (i.e. it can be parsed
/// as a URL and has no scheme), an [AssetImage] with the name given by the
/// `source` key is returned.
///
/// Otherwise, if there is no `source` key in the map, or if that cannot be
/// parsed as a URL (absolute or relative), null is returned.
@MappableClass(discriminatorValue: 'image_provider')
class ImageProviderSchema extends Schema with ImageProviderSchemaMappable {
  ImageProviderSchema({
    super.requiredProperties,
    super.description,
    super.nullable,
  }) : super(type: DataType.object, properties: {
          'source': StringSchema(),
          'scale': NumberSchema(nullable: true),
        });
}

/// Returns a [Locale] from the specified string.
///
/// The string is split on hyphens ("-").
///
/// If the string is null, returns null.
///
/// If there is no hyphen in the list, uses the one-argument form of [
/// Locale], passing the whole string.
///
/// If there is one hyphen in the list, uses the two-argument form of [
/// Locale], passing the parts before and after the hyphen respectively.
///
/// If there are two or more hyphens, uses the [Locale.fromSubtags]
/// constructor.
@MappableClass(discriminatorValue: 'locale')
class LocaleSchema extends Schema with LocaleSchemaMappable {
  LocaleSchema({
    super.requiredProperties,
    super.description,
    super.nullable,
  }) : super(type: DataType.string);
}

/// Returns a list of 16 doubles from the specified list.
///
/// If the list is missing or has fewer than 16 entries, returns null.
///
/// Otherwise, returns a list of 16 entries, corresponding to the first 16
/// entries of the specified list, with any non-double values replaced by 0.0.
@MappableClass(discriminatorValue: 'matrix4')
class Matrix4Schema extends Schema with Matrix4SchemaMappable {
  Matrix4Schema({
    super.requiredProperties,
    super.description,
    super.nullable,
  }) : super(type: DataType.array, items: NumberSchema());
}

/// Returns a [MaskFilter] from the specified map.
///
/// The `type` key specifies the kind of mask filter.
///
/// A type of `blur` creates a [MaskFilter.blur]. The `style` key ([enumValue] of
/// [BlurStyle], defaults to [BlurStyle.normal]) is used as the blur style,
/// and the `sigma` key (double, defaults to 1.0) is used as the blur sigma.
///
/// If the type is none of these, but is not null, then the type is looked up
/// in [maskFilterDecoders], and if an entry is found, this method defers to
/// that callback.
///
/// Otherwise, returns null.
@MappableClass(discriminatorValue: 'mask_filter')
class MaskFilterSchema extends Schema with MaskFilterSchemaMappable {
  MaskFilterSchema({
    super.requiredProperties,
    super.description,
    super.nullable,
  }) : super(
          discriminator: DiscriminatorSchema(
            propertyName: 'type',
            mapping: {
              'blur': Schema(ref: '#/schemas/blur'),
            },
          ),
          oneOf: [
            Schema(ref: '#/schemas/blur'),
          ],
          schemas: {
            'blur': Schema(
              type: DataType.object,
              nullable: true,
              properties: {
                'style': BlurStyle.values.toSchema(),
                'sigma': NumberSchema(nullable: true),
              },
            ),
          },
        );
  // TODO: maskFilterDecoders
}

/// Returns a [Paint] from the specified map.
///
/// If the map is absent, returns null.
///
/// Otherwise (even if it has no keys), a new [Paint] is created and its
/// properties are set according to the identically-named properties of the
/// map, as follows:
///
///  * `blendMode`: [enumValue] of [BlendMode].
///  * `color`: [color].
///  * `colorFilter`: [colorFilter].
///  * `filterQuality`: [enumValue] of [FilterQuality].
//  * `imageFilter`: [imageFilter].
//  * `invertColors`: boolean.
///  * `isAntiAlias`: boolean.
///  * `maskFilter`: [maskFilter].
///  * `shader`: [shader].
//  * `strokeCap`: [enumValue] of [StrokeCap].
//  * `strokeJoin`: [enumValue] of [StrokeJoin].
//  * `strokeMiterLimit`: double.
//  * `strokeWidth`: double.
//  * `style`: [enumValue] of [PaintingStyle].
///
/// (Some values are not supported, because there is no way for them to be
/// used currently in RFW contexts.)
@MappableClass(discriminatorValue: 'paint')
class PaintSchema extends Schema with PaintSchemaMappable {
  PaintSchema({
    super.requiredProperties,
    super.description,
    super.nullable,
  }) : super(type: DataType.object, properties: {
          'blendMode': BlendMode.values.toSchema(),
          'color': ColorSchema(nullable: true),
          'colorFilter': ColorFilterSchema(nullable: true),
          'filterQuality': FilterQuality.values.toSchema(),
          'isAntiAlias': BooleanSchema(nullable: true),
          'maskFilter': MaskFilterSchema(nullable: true),
          'shader': ShaderSchema(nullable: true),
        });
}

/// Returns a [Radius] from the specified map.
///
/// The map must have an `x` value corresponding to [Radius.x], and may have a
/// `y` value corresponding to [Radius.y].
///
/// If the map only has an `x` key, the `y` value is assumed to be the same
/// (as in [Radius.circular]).
///
/// If the `x` key is absent, the returned value is null.
@MappableClass(discriminatorValue: 'radius')
class RadiusSchema extends Schema with RadiusSchemaMappable {
  RadiusSchema({
    super.requiredProperties,
    super.description,
    super.nullable,
  }) : super(type: DataType.object, properties: {
          'x': NumberSchema(),
          'y': NumberSchema(),
        });
}

/// Returns a [Rect] from the specified map.
///
/// If the map is absent, returns null.
///
/// Otherwise, returns a [Rect.fromLTWH] whose x, y, width, and height
/// components are determined from the `x`, `y`, `w`, and `h` properties of
/// the map, with missing (or non-double) values replaced by zeros.
@MappableClass(discriminatorValue: 'rect')
class RectSchema extends Schema with RectSchemaMappable {
  RectSchema({
    super.requiredProperties,
    super.description,
    super.nullable,
  }) : super(type: DataType.object, properties: {
          'x': NumberSchema(nullable: true),
          'y': NumberSchema(nullable: true),
          'w': NumberSchema(nullable: true),
          'h': NumberSchema(nullable: true),
        });
}

/// Returns a [ShapeBorder] from the specified map or list.
///
/// If the key identifies a list, then each entry in the list is decoded by
/// recursively invoking [shapeBorder], and the result is the combination of
/// those [ShapeBorder] values as obtained using the [ShapeBorder.+] operator.
///
/// Otherwise, if the key identifies a map with a `type` value, the map is
/// interpreted according to the `type` as follows:
///
///  * `box`: the map's `sides` key is interpreted as a list by [border] and
///     the resulting [BoxBorder] (actually, [BorderDirectional]) is returned.
///
///  * `beveled`: a [BeveledRectangleBorder] is returned; the `side` key is
///    interpreted by [borderSide] to set the [BeveledRectangleBorder.side]
///    (default of [BorderSide.none)), and the `borderRadius` key is
///    interpreted by [borderRadius] to set the
///    [BeveledRectangleBorder.borderRadius] (default [BorderRadius.zero]).
///
///  * `circle`: a [CircleBorder] is returned; the `side` key is interpreted
///    by [borderSide] to set the [BeveledRectangleBorder.side] (default of
///    [BorderSide.none)).
///
///  * `continuous`: a [ContinuousRectangleBorder] is returned; the `side` key
///    is interpreted by [borderSide] to set the [BeveledRectangleBorder.side]
///    (default of [BorderSide.none)), and the `borderRadius` key is
///    interpreted by [borderRadius] to set the
///    [BeveledRectangleBorder.borderRadius] (default [BorderRadius.zero]).
///
///  * `rounded`: a [RoundedRectangleBorder] is returned; the `side` key is
///    interpreted by [borderSide] to set the [BeveledRectangleBorder.side]
///    (default of [BorderSide.none)), and the `borderRadius` key is
///    interpreted by [borderRadius] to set the
///    [BeveledRectangleBorder.borderRadius] (default [BorderRadius.zero]).
///
///  * `stadium`: a [StadiumBorder] is returned; the `side` key is interpreted
///    by [borderSide] to set the [BeveledRectangleBorder.side] (default of
///    [BorderSide.none)).
///
/// If the type is none of these, then the type is looked up in
/// [shapeBorderDecoders], and if an entry is found, this method defers to
/// that callback.
///
/// Otherwise, if type is null or is not found in [shapeBorderDecoders], returns null.
@MappableClass(discriminatorValue: 'shape_border')
class ShapeBorderSchema extends Schema with ShapeBorderSchemaMappable {
  ShapeBorderSchema({
    super.requiredProperties,
    super.description,
    super.nullable,
  }) : super(
          oneOf: [
            Schema(ref: '#/schemas/shape'),
            Schema(
              type: DataType.array,
              items: Schema(ref: '#/schemas/shape'),
            ),
          ],
          schemas: {
            'shape': Schema(
              discriminator: DiscriminatorSchema(
                propertyName: 'type',
                mapping: {
                  'box': Schema(ref: '#/schemas/box'),
                  'beveled': Schema(ref: '#/schemas/beveled'),
                  'circle': Schema(ref: '#/schemas/circle'),
                  'continuous': Schema(ref: '#/schemas/continuous'),
                  'rounded': Schema(ref: '#/schemas/rounded'),
                  'stadium': Schema(ref: '#/schemas/stadium'),
                },
              ),
              oneOf: [
                Schema(ref: '#/schemas/box'),
                Schema(ref: '#/schemas/beveled'),
                Schema(ref: '#/schemas/circle'),
                Schema(ref: '#/schemas/continuous'),
                Schema(ref: '#/schemas/rounded'),
                Schema(ref: '#/schemas/stadium'),
              ],
            ),
            'box': BorderSchema(nullable: true),
            'beveled': Schema(
              type: DataType.object,
              nullable: true,
              properties: {
                'side': BorderSideSchema(nullable: true),
                'borderRadius': BorderRadiusSchema(nullable: true),
              },
            ),
            'circle': Schema(
              type: DataType.object,
              nullable: true,
              properties: {
                'side': BorderSideSchema(nullable: true),
              },
            ),
            'continuous': Schema(
              type: DataType.object,
              nullable: true,
              properties: {
                'side': BorderSideSchema(nullable: true),
                'borderRadius': BorderRadiusSchema(nullable: true),
              },
            ),
            'rounded': Schema(
              type: DataType.object,
              nullable: true,
              properties: {
                'side': BorderSideSchema(nullable: true),
                'borderRadius': BorderRadiusSchema(nullable: true),
              },
            ),
            'stadium': Schema(
              type: DataType.object,
              nullable: true,
              properties: {
                'side': BorderSideSchema(nullable: true),
              },
            ),
          },
        );
  // TODO: shapeBorderDecoders
}

/// Returns a [Shader] based on the specified map.
///
/// The `type` key specifies the kind of shader.
///
/// A type of `linear`, `radial`, or `sweep` is interpreted as described by
/// [gradient]; then, the gradient is compiled to a shader by applying the
/// `rect` (interpreted by [rect]) and `textDirection` (interpreted as an
/// [enumValue] of [TextDirection]) using the [Gradient.createShader] method.
///
/// If the type is none of these, but is not null, then the type is looked up
/// in [shaderDecoders], and if an entry is found, this method defers to
/// that callback.
///
/// Otherwise, returns null.
@MappableClass(discriminatorValue: 'shader')
class ShaderSchema extends Schema with ShaderSchemaMappable {
  ShaderSchema({
    super.requiredProperties,
    super.description,
    super.nullable,
    super.properties,
  }) : super(
          discriminator: DiscriminatorSchema(
            propertyName: 'type',
            mapping: {
              'linear': Schema(ref: '#/schemas/shader'),
              'radial': Schema(ref: '#/schemas/shader'),
              'sweep': Schema(ref: '#/schemas/shader'),
            },
          ),
          oneOf: [
            Schema(ref: '#/schemas/shader'),
            Schema(ref: '#/schemas/shader'),
            Schema(ref: '#/schemas/shader'),
          ],
          schemas: {
            'shader': GradientSchema(
              properties: {
                'rect': RectSchema(nullable: true),
                'textDirection': TextDirection.values.toSchema(),
              },
            ),
          },
        );
  // TODO: shaderDecoders
}

/// Returns an [Offset] from the specified map.
///
/// The map must have an `x` key and a `y` key, doubles.
@MappableClass(discriminatorValue: 'offset')
class OffsetSchema extends Schema with OffsetSchemaMappable {
  OffsetSchema({
    super.requiredProperties,
    super.description,
    super.nullable,
  }) : super(type: DataType.object, properties: {
          'x': NumberSchema(nullable: true),
          'y': NumberSchema(nullable: true),
        });
}

/// Returns a [StrutStyle] from the specified map.
///
/// If the map is absent, returns null.
///
/// Otherwise (even if it has no keys), the [StrutStyle] is created from the
/// following keys: 'fontFamily` (string), `fontFamilyFallback` ([list] of
/// [string]), `fontSize` (double), `height` (double), `leadingDistribution`
/// ([enumValue] of [TextLeadingDistribution]), `leading` (double),
/// `fontWeight` ([enumValue] of [FontWeight]), `fontStyle` ([enumValue] of
/// [FontStyle]), `forceStrutHeight` (boolean).
@MappableClass(discriminatorValue: 'strut_style')
class StrutStyleSchema extends Schema with StrutStyleSchemaMappable {
  StrutStyleSchema({
    super.requiredProperties,
    super.description,
    super.nullable,
  }) : super(type: DataType.object, properties: {
          'fontFamily': StringSchema(nullable: true),
          'fontFamilyFallback': Schema(
              type: DataType.array, items: StringSchema(), nullable: true),
          'fontSize': NumberSchema(nullable: true),
          'height': NumberSchema(nullable: true),
          'leadingDistribution': TextLeadingDistribution.values.toSchema(),
          'leading': NumberSchema(nullable: true),
          'fontWeight': FontWeight.values.toSchema(),
          'fontStyle': FontStyle.values.toSchema(),
          'forceStrutHeight': BooleanSchema(nullable: true),
        });
}

/// Returns a [TextHeightBehavior] from the specified map.
///
/// If the map is absent, returns null.
///
/// Otherwise (even if it has no keys), the [TextHeightBehavior] is created
/// from the following keys: 'applyHeightToFirstAscent` (boolean; defaults to
/// true), `applyHeightToLastDescent` (boolean, defaults to true), and
/// `leadingDistribution` ([enumValue] of [TextLeadingDistribution], deafults
/// to [TextLeadingDistribution.proportional]).
@MappableClass(discriminatorValue: 'text_height_behavior')
class TextHeightBehaviorSchema extends Schema
    with TextHeightBehaviorSchemaMappable {
  TextHeightBehaviorSchema({
    super.requiredProperties,
    super.description,
    super.nullable,
  }) : super(type: DataType.object, properties: {
          'applyHeightToFirstAscent': BooleanSchema(nullable: true),
          'applyHeightToLastDescent': BooleanSchema(nullable: true),
          'leadingDistribution': TextLeadingDistribution.values.toSchema(),
        });
}

/// Returns a [TextDecoration] from the specified list or string.
///
/// If the key identifies a list, then each entry in the list is decoded by
/// recursively invoking [textDecoration], and the result is the combination
/// of those [TextDecoration] values as obtained using
/// [TextDecoration.combine].
///
/// Otherwise, if the key identifies a string, then the value `lineThrough` is
/// mapped to [TextDecoration.lineThrough], `overline` to
/// [TextDecoration.overline], and `underline` to [TextDecoration.underline].
/// Other values (and the abscence of a value) are interpreted as
/// [TextDecoration.none].
@MappableClass(discriminatorValue: 'text_decoration')
class TextDecorationSchema extends Schema with TextDecorationSchemaMappable {
  TextDecorationSchema({
    super.requiredProperties,
    super.description,
    super.nullable,
  }) : super(
          oneOf: [
            Schema(
              type: DataType.array,
              items: Schema(ref: '#/schemas/decoration'),
            ),
            Schema(ref: '#/schemas/decoration'),
          ],
          schemas: {
            'decoration': EnumSchema(
              enumValues: ['lineThrough', 'overline', 'underline'],
            ),
          },
        );
}

/// Returns a [TextStyle] from the specified map.
///
/// If the map is absent, returns null.
///
/// Otherwise (even if it has no keys), the [TextStyle] is created from the
/// following keys: `color` ([color]), `backgroundColor` ([color]), `fontSize`
/// (double), `fontWeight` ([enumValue] of [FontWeight]), `fontStyle`
/// ([enumValue] of [FontStyle]), `letterSpacing` (double), `wordSpacing`
/// (double), `textBaseline` ([enumValue] of [TextBaseline]), `height`
/// (double), `leadingDistribution` ([enumValue] of
/// [TextLeadingDistribution]), `locale` ([locale]), `foreground` ([paint]),
/// `background` ([paint]), `shadows` ([list] of [boxShadow]s), `fontFeatures`
/// ([list] of [fontFeature]s), `decoration` ([textDecoration]),
/// `decorationColor` ([color]), `decorationStyle` ([enumValue] of
/// [TextDecorationStyle]), `decorationThickness` (double), 'fontFamily`
/// (string), `fontFamilyFallback` ([list] of [string]), and `overflow`
/// ([enumValue] of [TextOverflow]).
@MappableClass(discriminatorValue: 'text_style')
class TextStyleSchema extends Schema with TextStyleSchemaMappable {
  TextStyleSchema({
    super.requiredProperties,
    super.description,
    super.nullable,
  }) : super(type: DataType.object, properties: {
          'color': ColorSchema(nullable: true),
          'backgroundColor': ColorSchema(nullable: true),
          'fontSize': NumberSchema(nullable: true),
          'fontWeight': FontWeight.values.toSchema(),
          'fontStyle': FontStyle.values.toSchema(),
          'letterSpacing': NumberSchema(nullable: true),
          'wordSpacing': NumberSchema(nullable: true),
          'textBaseline': TextBaseline.values.toSchema(),
          'height': NumberSchema(nullable: true),
          'leadingDistribution': TextLeadingDistribution.values.toSchema(),
          'locale': LocaleSchema(nullable: true),
          'foreground': PaintSchema(nullable: true),
          'background': PaintSchema(nullable: true),
          'shadows': Schema(
            type: DataType.array,
            items: BoxShadowSchema(),
            nullable: true,
          ),
          'fontFeatures': Schema(
            type: DataType.array,
            items: FontFeatureSchema(),
            nullable: true,
          ),
          'decoration': TextDecorationSchema(nullable: true),
          'decorationColor': ColorSchema(nullable: true),
          'decorationStyle': TextDecorationStyle.values.toSchema(),
          'decorationThickness': NumberSchema(nullable: true),
          'fontFamily': StringSchema(nullable: true),
          'fontFamilyFallback': Schema(
            type: DataType.array,
            items: StringSchema(),
            nullable: true,
          ),
          'overflow': TextOverflow.values.toSchema(),
        });
}

@MappableClass(discriminatorValue: 'box_shadow')
class BoxShadowSchema extends Schema with BoxShadowSchemaMappable {
  BoxShadowSchema({
    super.requiredProperties,
    super.description,
    super.nullable,
  }) : super(
          type: DataType.object,
          properties: {
            'color': ColorSchema(nullable: true),
            'offset': OffsetSchema(nullable: true),
            'blueRadius': NumberSchema(nullable: true),
            'spreadRadius': NumberSchema(nullable: true),
          },
        );
}

/// Returns a [VisualDensity] from the specified string or map.
///
/// If the specified value is a string, then it is interpreted as follows:
///
///  * `adaptivePlatformDensity`: returns
///    [VisualDensity.adaptivePlatformDensity] (which varies by platform).
///  * `comfortable`: returns [VisualDensity.comfortable].
///  * `compact`: returns [VisualDensity.compact].
///  * `standard`: returns [VisualDensity.standard].
///
/// Otherwise, if the specified value is a map, then the keys `horizontal` and
/// `vertical` (doubles) are used to create a custom [VisualDensity]. The
/// specified values must be in the range given by
/// [VisualDensity.minimumDensity] to [VisualDensity.maximumDensity]. Missing
/// values are interpreted as zero.
@MappableClass(discriminatorValue: 'visual_density')
class VisualDensitySchema extends Schema with VisualDensitySchemaMappable {
  VisualDensitySchema({
    super.requiredProperties,
    super.description,
    super.nullable,
  }) : super(
          oneOf: [
            EnumSchema(
              enumValues: [
                'adaptivePlatformDensity',
                'comfortable',
                'compact',
                'standard',
              ],
            ),
            Schema(
              type: DataType.object,
              properties: {
                'horizontal': NumberSchema(nullable: true),
                'vertical': NumberSchema(nullable: true),
              },
            ),
          ],
        );
}

@MappableClass(discriminatorValue: 'widget')
class WidgetSchema extends Schema with WidgetSchemaMappable {
  WidgetSchema({
    super.requiredProperties,
    super.description,
    super.nullable,
    super.properties,
  }) : super(type: DataType.object);
}

@MappableClass(discriminatorValue: 'handler')
class HandlerSchema extends Schema with HandlerSchemaMappable {
  HandlerSchema({
    super.requiredProperties,
    super.description,
    super.nullable,
    super.properties,
  }) : super(type: DataType.object);
}

@MappableClass(discriminatorValue: 'handler_void')
class VoidHandlerSchema extends HandlerSchema with VoidHandlerSchemaMappable {
  VoidHandlerSchema({
    super.requiredProperties,
    super.description,
    super.nullable,
    super.properties,
  });
}

extension on List {
  EnumSchema toSchema([String? defaultValue]) {
    return EnumSchema(
      enumValues: map((e) => e.toString()).toList(),
      nullable: defaultValue == null,
    );
  }
}
