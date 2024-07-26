import 'package:dart_mappable/dart_mappable.dart';

part 'core.mapper.dart';

@MappableClass(discriminatorKey: '_type')
class Schema with SchemaMappable {
  String? ref;

  Map<String, Schema>? schemas;

  DataType? type;

  /// The format of the data.
  ///
  /// This is used only for primitive data types.
  ///
  /// Supported formats:
  ///  for [DataType.number] type: float, double
  ///  for [DataType.integer] type: int32, int64
  ///  for [DataType.string] type: enum. See [enumValues]
  String? format;

  /// A brief description of the parameter.
  ///
  /// This could contain examples of use.
  /// Parameter description may be formatted as Markdown.
  String? description;

  DiscriminatorSchema? discriminator;

  /// Whether the value mey be null.
  bool nullable;

  /// Possible values if this is a [DataType.string] with an enum format.
  List<String>? enumValues;

  /// Schema for the elements if this is a [DataType.array].
  Schema? items;

  // TODO: Check for not
  /// Properties of this type if this is a [DataType.object].
  Map<String, Schema>? properties;

  /// validates the value against exactly one of the subschemas
  List<Schema>? oneOf;

  /// validates the value against all the subschemas
  List<Schema>? allOf;

  /// validates the value against any (one or more) of the subschemas
  List<Schema>? anyOf;

  /// The keys from [properties] for properties that are required if this is a
  /// [DataType.object].
  List<String>? requiredProperties;

  Schema({
    this.ref,
    this.schemas,
    this.type,
    this.format,
    this.description,
    this.nullable = false,
    this.enumValues,
    this.items,
    this.properties,
    this.requiredProperties,
    this.discriminator,
    this.allOf,
    this.anyOf,
    this.oneOf,
  });
}

@MappableEnum()
enum DataType {
  @MappableValue('STRING')
  string,
  @MappableValue('NUMBER')
  number,
  @MappableValue('INTEGER')
  integer,
  @MappableValue('BOOLEAN')
  boolean,
  @MappableValue('ARRAY')
  array,
  @MappableValue('OBJECT')
  object,
}

@MappableClass()
class DiscriminatorSchema with DiscriminatorSchemaMappable {
  String propertyName;
  Map<String, Schema>? mapping;

  DiscriminatorSchema({
    required this.propertyName,
    this.mapping,
  });
}

/// Construct a schema for a String value.
@MappableClass(discriminatorValue: 'string')
class StringSchema extends Schema with StringSchemaMappable {
  StringSchema({
    super.description,
    super.nullable,
  }) : super(type: DataType.string);
}

/// Construct a schema for String value with enumerated possible values.
@MappableClass(discriminatorValue: 'enum')
class EnumSchema extends Schema with EnumSchemaMappable {
  EnumSchema({
    required super.enumValues,
    super.description,
    super.nullable,
  }) : super(type: DataType.string, format: 'enum');
}

/// Construct a schema for a non-integer number.
///
/// The [format] may be "float" or "double".
@MappableClass(discriminatorValue: 'num')
class NumberSchema extends Schema with NumberSchemaMappable {
  NumberSchema({
    super.description,
    super.nullable,
    super.format,
  }) : super(type: DataType.number);
}

/// Construct a schema for an integer number.
///
/// The [format] may be "int32" or "int64".
@MappableClass(discriminatorValue: 'int')
class IntegerSchema extends Schema with IntegerSchemaMappable {
  IntegerSchema({
    super.description,
    super.nullable,
    super.format,
  }) : super(type: DataType.integer);
}

/// Construct a schema for bool value.
@MappableClass(discriminatorValue: 'boolean')
class BooleanSchema extends Schema with BooleanSchemaMappable {
  BooleanSchema({
    super.description,
    super.nullable,
  }) : super(type: DataType.boolean);
}

/// Construct a schema for an array of values with a specified type.
@MappableClass(discriminatorValue: 'array')
class ArraySchema extends Schema with ArraySchemaMappable {
  ArraySchema({
    super.description,
    super.nullable,
    required Schema super.items,
  }) : super(type: DataType.array);
}

/// Construct a schema for an array of values with a specified type.
@MappableClass(discriminatorValue: 'array')
class ObjectSchema extends Schema with ObjectSchemaMappable {
  ObjectSchema({
    super.requiredProperties,
    super.description,
    super.nullable,
    required Map<String, Schema> super.properties,
  }) : super(type: DataType.object);
}

extension ListEnumUtils on List<Enum> {
  EnumSchema toSchema({String? defaultValue}) {
    return EnumSchema(
      enumValues: map((e) => e.name).toList(),
      nullable: defaultValue == null,
    );
  }
}

extension on List? {
  bool get isNotNull => this != null && this!.isNotEmpty;
}
