// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'core.dart';

class DataTypeMapper extends EnumMapper<DataType> {
  DataTypeMapper._();

  static DataTypeMapper? _instance;
  static DataTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DataTypeMapper._());
    }
    return _instance!;
  }

  static DataType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  DataType decode(dynamic value) {
    switch (value) {
      case 'STRING':
        return DataType.string;
      case 'NUMBER':
        return DataType.number;
      case 'INTEGER':
        return DataType.integer;
      case 'BOOLEAN':
        return DataType.boolean;
      case 'ARRAY':
        return DataType.array;
      case 'OBJECT':
        return DataType.object;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(DataType self) {
    switch (self) {
      case DataType.string:
        return 'STRING';
      case DataType.number:
        return 'NUMBER';
      case DataType.integer:
        return 'INTEGER';
      case DataType.boolean:
        return 'BOOLEAN';
      case DataType.array:
        return 'ARRAY';
      case DataType.object:
        return 'OBJECT';
    }
  }
}

extension DataTypeMapperExtension on DataType {
  dynamic toValue() {
    DataTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<DataType>(this);
  }
}

class SchemaMapper extends ClassMapperBase<Schema> {
  SchemaMapper._();

  static SchemaMapper? _instance;
  static SchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SchemaMapper._());
      StringSchemaMapper.ensureInitialized();
      EnumSchemaMapper.ensureInitialized();
      NumberSchemaMapper.ensureInitialized();
      IntegerSchemaMapper.ensureInitialized();
      BooleanSchemaMapper.ensureInitialized();
      ArraySchemaMapper.ensureInitialized();
      ObjectSchemaMapper.ensureInitialized();
      SchemaMapper.ensureInitialized();
      DataTypeMapper.ensureInitialized();
      DiscriminatorSchemaMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Schema';

  static String? _$ref(Schema v) => v.ref;
  static const Field<Schema, String> _f$ref = Field('ref', _$ref, opt: true);
  static Map<String, Schema>? _$schemas(Schema v) => v.schemas;
  static const Field<Schema, Map<String, Schema>> _f$schemas =
      Field('schemas', _$schemas, opt: true);
  static DataType? _$type(Schema v) => v.type;
  static const Field<Schema, DataType> _f$type =
      Field('type', _$type, opt: true);
  static String? _$format(Schema v) => v.format;
  static const Field<Schema, String> _f$format =
      Field('format', _$format, opt: true);
  static String? _$description(Schema v) => v.description;
  static const Field<Schema, String> _f$description =
      Field('description', _$description, opt: true);
  static bool _$nullable(Schema v) => v.nullable;
  static const Field<Schema, bool> _f$nullable =
      Field('nullable', _$nullable, opt: true, def: true);
  static List<String>? _$enumValues(Schema v) => v.enumValues;
  static const Field<Schema, List<String>> _f$enumValues =
      Field('enumValues', _$enumValues, opt: true);
  static Schema? _$items(Schema v) => v.items;
  static const Field<Schema, Schema> _f$items =
      Field('items', _$items, opt: true);
  static Map<String, Schema>? _$properties(Schema v) => v.properties;
  static const Field<Schema, Map<String, Schema>> _f$properties =
      Field('properties', _$properties, opt: true);
  static List<String>? _$requiredProperties(Schema v) => v.requiredProperties;
  static const Field<Schema, List<String>> _f$requiredProperties =
      Field('requiredProperties', _$requiredProperties, opt: true);
  static DiscriminatorSchema? _$discriminator(Schema v) => v.discriminator;
  static const Field<Schema, DiscriminatorSchema> _f$discriminator =
      Field('discriminator', _$discriminator, opt: true);
  static List<Schema>? _$allOf(Schema v) => v.allOf;
  static const Field<Schema, List<Schema>> _f$allOf =
      Field('allOf', _$allOf, opt: true);
  static List<Schema>? _$anyOf(Schema v) => v.anyOf;
  static const Field<Schema, List<Schema>> _f$anyOf =
      Field('anyOf', _$anyOf, opt: true);
  static List<Schema>? _$oneOf(Schema v) => v.oneOf;
  static const Field<Schema, List<Schema>> _f$oneOf =
      Field('oneOf', _$oneOf, opt: true);

  @override
  final MappableFields<Schema> fields = const {
    #ref: _f$ref,
    #schemas: _f$schemas,
    #type: _f$type,
    #format: _f$format,
    #description: _f$description,
    #nullable: _f$nullable,
    #enumValues: _f$enumValues,
    #items: _f$items,
    #properties: _f$properties,
    #requiredProperties: _f$requiredProperties,
    #discriminator: _f$discriminator,
    #allOf: _f$allOf,
    #anyOf: _f$anyOf,
    #oneOf: _f$oneOf,
  };

  static Schema _instantiate(DecodingData data) {
    return Schema(
        ref: data.dec(_f$ref),
        schemas: data.dec(_f$schemas),
        type: data.dec(_f$type),
        format: data.dec(_f$format),
        description: data.dec(_f$description),
        nullable: data.dec(_f$nullable),
        enumValues: data.dec(_f$enumValues),
        items: data.dec(_f$items),
        properties: data.dec(_f$properties),
        requiredProperties: data.dec(_f$requiredProperties),
        discriminator: data.dec(_f$discriminator),
        allOf: data.dec(_f$allOf),
        anyOf: data.dec(_f$anyOf),
        oneOf: data.dec(_f$oneOf));
  }

  @override
  final Function instantiate = _instantiate;

  static Schema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Schema>(map);
  }

  static Schema fromJson(String json) {
    return ensureInitialized().decodeJson<Schema>(json);
  }
}

mixin SchemaMappable {
  String toJson() {
    return SchemaMapper.ensureInitialized().encodeJson<Schema>(this as Schema);
  }

  Map<String, dynamic> toMap() {
    return SchemaMapper.ensureInitialized().encodeMap<Schema>(this as Schema);
  }

  SchemaCopyWith<Schema, Schema, Schema> get copyWith =>
      _SchemaCopyWithImpl(this as Schema, $identity, $identity);
  @override
  String toString() {
    return SchemaMapper.ensureInitialized().stringifyValue(this as Schema);
  }

  @override
  bool operator ==(Object other) {
    return SchemaMapper.ensureInitialized().equalsValue(this as Schema, other);
  }

  @override
  int get hashCode {
    return SchemaMapper.ensureInitialized().hashValue(this as Schema);
  }
}

extension SchemaValueCopy<$R, $Out> on ObjectCopyWith<$R, Schema, $Out> {
  SchemaCopyWith<$R, Schema, $Out> get $asSchema =>
      $base.as((v, t, t2) => _SchemaCopyWithImpl(v, t, t2));
}

abstract class SchemaCopyWith<$R, $In extends Schema, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? description, bool? nullable});
  SchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SchemaCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Schema, $Out>
    implements SchemaCopyWith<$R, Schema, $Out> {
  _SchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Schema> $mapper = SchemaMapper.ensureInitialized();
  @override
  $R call({Object? description = $none, bool? nullable}) =>
      $apply(FieldCopyWithData({
        if (description != $none) #description: description,
        if (nullable != null) #nullable: nullable
      }));
  @override
  Schema $make(CopyWithData data) => Schema(
      ref: data.get(#ref, or: $value.ref),
      schemas: data.get(#schemas, or: $value.schemas),
      type: data.get(#type, or: $value.type),
      format: data.get(#format, or: $value.format),
      description: data.get(#description, or: $value.description),
      nullable: data.get(#nullable, or: $value.nullable),
      enumValues: data.get(#enumValues, or: $value.enumValues),
      items: data.get(#items, or: $value.items),
      properties: data.get(#properties, or: $value.properties),
      requiredProperties:
          data.get(#requiredProperties, or: $value.requiredProperties),
      discriminator: data.get(#discriminator, or: $value.discriminator),
      allOf: data.get(#allOf, or: $value.allOf),
      anyOf: data.get(#anyOf, or: $value.anyOf),
      oneOf: data.get(#oneOf, or: $value.oneOf));

  @override
  SchemaCopyWith<$R2, Schema, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _SchemaCopyWithImpl($value, $cast, t);
}

class DiscriminatorSchemaMapper extends ClassMapperBase<DiscriminatorSchema> {
  DiscriminatorSchemaMapper._();

  static DiscriminatorSchemaMapper? _instance;
  static DiscriminatorSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DiscriminatorSchemaMapper._());
      SchemaMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'DiscriminatorSchema';

  static String _$propertyName(DiscriminatorSchema v) => v.propertyName;
  static const Field<DiscriminatorSchema, String> _f$propertyName =
      Field('propertyName', _$propertyName);
  static Map<String, Schema>? _$mapping(DiscriminatorSchema v) => v.mapping;
  static const Field<DiscriminatorSchema, Map<String, Schema>> _f$mapping =
      Field('mapping', _$mapping, opt: true);

  @override
  final MappableFields<DiscriminatorSchema> fields = const {
    #propertyName: _f$propertyName,
    #mapping: _f$mapping,
  };

  static DiscriminatorSchema _instantiate(DecodingData data) {
    return DiscriminatorSchema(
        propertyName: data.dec(_f$propertyName), mapping: data.dec(_f$mapping));
  }

  @override
  final Function instantiate = _instantiate;

  static DiscriminatorSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DiscriminatorSchema>(map);
  }

  static DiscriminatorSchema fromJson(String json) {
    return ensureInitialized().decodeJson<DiscriminatorSchema>(json);
  }
}

mixin DiscriminatorSchemaMappable {
  String toJson() {
    return DiscriminatorSchemaMapper.ensureInitialized()
        .encodeJson<DiscriminatorSchema>(this as DiscriminatorSchema);
  }

  Map<String, dynamic> toMap() {
    return DiscriminatorSchemaMapper.ensureInitialized()
        .encodeMap<DiscriminatorSchema>(this as DiscriminatorSchema);
  }

  DiscriminatorSchemaCopyWith<DiscriminatorSchema, DiscriminatorSchema,
          DiscriminatorSchema>
      get copyWith => _DiscriminatorSchemaCopyWithImpl(
          this as DiscriminatorSchema, $identity, $identity);
  @override
  String toString() {
    return DiscriminatorSchemaMapper.ensureInitialized()
        .stringifyValue(this as DiscriminatorSchema);
  }

  @override
  bool operator ==(Object other) {
    return DiscriminatorSchemaMapper.ensureInitialized()
        .equalsValue(this as DiscriminatorSchema, other);
  }

  @override
  int get hashCode {
    return DiscriminatorSchemaMapper.ensureInitialized()
        .hashValue(this as DiscriminatorSchema);
  }
}

extension DiscriminatorSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DiscriminatorSchema, $Out> {
  DiscriminatorSchemaCopyWith<$R, DiscriminatorSchema, $Out>
      get $asDiscriminatorSchema =>
          $base.as((v, t, t2) => _DiscriminatorSchemaCopyWithImpl(v, t, t2));
}

abstract class DiscriminatorSchemaCopyWith<$R, $In extends DiscriminatorSchema,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, Schema, SchemaCopyWith<$R, Schema, Schema>>?
      get mapping;
  $R call({String? propertyName, Map<String, Schema>? mapping});
  DiscriminatorSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _DiscriminatorSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DiscriminatorSchema, $Out>
    implements DiscriminatorSchemaCopyWith<$R, DiscriminatorSchema, $Out> {
  _DiscriminatorSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DiscriminatorSchema> $mapper =
      DiscriminatorSchemaMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, Schema, SchemaCopyWith<$R, Schema, Schema>>?
      get mapping => $value.mapping != null
          ? MapCopyWith($value.mapping!, (v, t) => v.copyWith.$chain(t),
              (v) => call(mapping: v))
          : null;
  @override
  $R call({String? propertyName, Object? mapping = $none}) =>
      $apply(FieldCopyWithData({
        if (propertyName != null) #propertyName: propertyName,
        if (mapping != $none) #mapping: mapping
      }));
  @override
  DiscriminatorSchema $make(CopyWithData data) => DiscriminatorSchema(
      propertyName: data.get(#propertyName, or: $value.propertyName),
      mapping: data.get(#mapping, or: $value.mapping));

  @override
  DiscriminatorSchemaCopyWith<$R2, DiscriminatorSchema, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _DiscriminatorSchemaCopyWithImpl($value, $cast, t);
}

class StringSchemaMapper extends SubClassMapperBase<StringSchema> {
  StringSchemaMapper._();

  static StringSchemaMapper? _instance;
  static StringSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = StringSchemaMapper._());
      SchemaMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'StringSchema';

  static String? _$description(StringSchema v) => v.description;
  static const Field<StringSchema, String> _f$description =
      Field('description', _$description, opt: true);
  static bool _$nullable(StringSchema v) => v.nullable;
  static const Field<StringSchema, bool> _f$nullable =
      Field('nullable', _$nullable, opt: true, def: true);
  static String? _$ref(StringSchema v) => v.ref;
  static const Field<StringSchema, String> _f$ref =
      Field('ref', _$ref, mode: FieldMode.member);
  static Map<String, Schema>? _$schemas(StringSchema v) => v.schemas;
  static const Field<StringSchema, Map<String, Schema>> _f$schemas =
      Field('schemas', _$schemas, mode: FieldMode.member);
  static DataType? _$type(StringSchema v) => v.type;
  static const Field<StringSchema, DataType> _f$type =
      Field('type', _$type, mode: FieldMode.member);
  static String? _$format(StringSchema v) => v.format;
  static const Field<StringSchema, String> _f$format =
      Field('format', _$format, mode: FieldMode.member);
  static DiscriminatorSchema? _$discriminator(StringSchema v) =>
      v.discriminator;
  static const Field<StringSchema, DiscriminatorSchema> _f$discriminator =
      Field('discriminator', _$discriminator, mode: FieldMode.member);
  static List<String>? _$enumValues(StringSchema v) => v.enumValues;
  static const Field<StringSchema, List<String>> _f$enumValues =
      Field('enumValues', _$enumValues, mode: FieldMode.member);
  static Schema? _$items(StringSchema v) => v.items;
  static const Field<StringSchema, Schema> _f$items =
      Field('items', _$items, mode: FieldMode.member);
  static Map<String, Schema>? _$properties(StringSchema v) => v.properties;
  static const Field<StringSchema, Map<String, Schema>> _f$properties =
      Field('properties', _$properties, mode: FieldMode.member);
  static List<Schema>? _$oneOf(StringSchema v) => v.oneOf;
  static const Field<StringSchema, List<Schema>> _f$oneOf =
      Field('oneOf', _$oneOf, mode: FieldMode.member);
  static List<Schema>? _$allOf(StringSchema v) => v.allOf;
  static const Field<StringSchema, List<Schema>> _f$allOf =
      Field('allOf', _$allOf, mode: FieldMode.member);
  static List<Schema>? _$anyOf(StringSchema v) => v.anyOf;
  static const Field<StringSchema, List<Schema>> _f$anyOf =
      Field('anyOf', _$anyOf, mode: FieldMode.member);
  static List<String>? _$requiredProperties(StringSchema v) =>
      v.requiredProperties;
  static const Field<StringSchema, List<String>> _f$requiredProperties =
      Field('requiredProperties', _$requiredProperties, mode: FieldMode.member);

  @override
  final MappableFields<StringSchema> fields = const {
    #description: _f$description,
    #nullable: _f$nullable,
    #ref: _f$ref,
    #schemas: _f$schemas,
    #type: _f$type,
    #format: _f$format,
    #discriminator: _f$discriminator,
    #enumValues: _f$enumValues,
    #items: _f$items,
    #properties: _f$properties,
    #oneOf: _f$oneOf,
    #allOf: _f$allOf,
    #anyOf: _f$anyOf,
    #requiredProperties: _f$requiredProperties,
  };

  @override
  final String discriminatorKey = '_type';
  @override
  final dynamic discriminatorValue = 'string';
  @override
  late final ClassMapperBase superMapper = SchemaMapper.ensureInitialized();

  static StringSchema _instantiate(DecodingData data) {
    return StringSchema(
        description: data.dec(_f$description), nullable: data.dec(_f$nullable));
  }

  @override
  final Function instantiate = _instantiate;

  static StringSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<StringSchema>(map);
  }

  static StringSchema fromJson(String json) {
    return ensureInitialized().decodeJson<StringSchema>(json);
  }
}

mixin StringSchemaMappable {
  String toJson() {
    return StringSchemaMapper.ensureInitialized()
        .encodeJson<StringSchema>(this as StringSchema);
  }

  Map<String, dynamic> toMap() {
    return StringSchemaMapper.ensureInitialized()
        .encodeMap<StringSchema>(this as StringSchema);
  }

  StringSchemaCopyWith<StringSchema, StringSchema, StringSchema> get copyWith =>
      _StringSchemaCopyWithImpl(this as StringSchema, $identity, $identity);
  @override
  String toString() {
    return StringSchemaMapper.ensureInitialized()
        .stringifyValue(this as StringSchema);
  }

  @override
  bool operator ==(Object other) {
    return StringSchemaMapper.ensureInitialized()
        .equalsValue(this as StringSchema, other);
  }

  @override
  int get hashCode {
    return StringSchemaMapper.ensureInitialized()
        .hashValue(this as StringSchema);
  }
}

extension StringSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, StringSchema, $Out> {
  StringSchemaCopyWith<$R, StringSchema, $Out> get $asStringSchema =>
      $base.as((v, t, t2) => _StringSchemaCopyWithImpl(v, t, t2));
}

abstract class StringSchemaCopyWith<$R, $In extends StringSchema, $Out>
    implements SchemaCopyWith<$R, $In, $Out> {
  @override
  $R call({String? description, bool? nullable});
  StringSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _StringSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, StringSchema, $Out>
    implements StringSchemaCopyWith<$R, StringSchema, $Out> {
  _StringSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<StringSchema> $mapper =
      StringSchemaMapper.ensureInitialized();
  @override
  $R call({Object? description = $none, bool? nullable}) =>
      $apply(FieldCopyWithData({
        if (description != $none) #description: description,
        if (nullable != null) #nullable: nullable
      }));
  @override
  StringSchema $make(CopyWithData data) => StringSchema(
      description: data.get(#description, or: $value.description),
      nullable: data.get(#nullable, or: $value.nullable));

  @override
  StringSchemaCopyWith<$R2, StringSchema, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _StringSchemaCopyWithImpl($value, $cast, t);
}

class EnumSchemaMapper extends SubClassMapperBase<EnumSchema> {
  EnumSchemaMapper._();

  static EnumSchemaMapper? _instance;
  static EnumSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EnumSchemaMapper._());
      SchemaMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'EnumSchema';

  static List<String>? _$enumValues(EnumSchema v) => v.enumValues;
  static const Field<EnumSchema, List<String>> _f$enumValues =
      Field('enumValues', _$enumValues);
  static String? _$description(EnumSchema v) => v.description;
  static const Field<EnumSchema, String> _f$description =
      Field('description', _$description, opt: true);
  static bool _$nullable(EnumSchema v) => v.nullable;
  static const Field<EnumSchema, bool> _f$nullable =
      Field('nullable', _$nullable, opt: true, def: true);
  static String? _$ref(EnumSchema v) => v.ref;
  static const Field<EnumSchema, String> _f$ref =
      Field('ref', _$ref, mode: FieldMode.member);
  static Map<String, Schema>? _$schemas(EnumSchema v) => v.schemas;
  static const Field<EnumSchema, Map<String, Schema>> _f$schemas =
      Field('schemas', _$schemas, mode: FieldMode.member);
  static DataType? _$type(EnumSchema v) => v.type;
  static const Field<EnumSchema, DataType> _f$type =
      Field('type', _$type, mode: FieldMode.member);
  static String? _$format(EnumSchema v) => v.format;
  static const Field<EnumSchema, String> _f$format =
      Field('format', _$format, mode: FieldMode.member);
  static DiscriminatorSchema? _$discriminator(EnumSchema v) => v.discriminator;
  static const Field<EnumSchema, DiscriminatorSchema> _f$discriminator =
      Field('discriminator', _$discriminator, mode: FieldMode.member);
  static Schema? _$items(EnumSchema v) => v.items;
  static const Field<EnumSchema, Schema> _f$items =
      Field('items', _$items, mode: FieldMode.member);
  static Map<String, Schema>? _$properties(EnumSchema v) => v.properties;
  static const Field<EnumSchema, Map<String, Schema>> _f$properties =
      Field('properties', _$properties, mode: FieldMode.member);
  static List<Schema>? _$oneOf(EnumSchema v) => v.oneOf;
  static const Field<EnumSchema, List<Schema>> _f$oneOf =
      Field('oneOf', _$oneOf, mode: FieldMode.member);
  static List<Schema>? _$allOf(EnumSchema v) => v.allOf;
  static const Field<EnumSchema, List<Schema>> _f$allOf =
      Field('allOf', _$allOf, mode: FieldMode.member);
  static List<Schema>? _$anyOf(EnumSchema v) => v.anyOf;
  static const Field<EnumSchema, List<Schema>> _f$anyOf =
      Field('anyOf', _$anyOf, mode: FieldMode.member);
  static List<String>? _$requiredProperties(EnumSchema v) =>
      v.requiredProperties;
  static const Field<EnumSchema, List<String>> _f$requiredProperties =
      Field('requiredProperties', _$requiredProperties, mode: FieldMode.member);

  @override
  final MappableFields<EnumSchema> fields = const {
    #enumValues: _f$enumValues,
    #description: _f$description,
    #nullable: _f$nullable,
    #ref: _f$ref,
    #schemas: _f$schemas,
    #type: _f$type,
    #format: _f$format,
    #discriminator: _f$discriminator,
    #items: _f$items,
    #properties: _f$properties,
    #oneOf: _f$oneOf,
    #allOf: _f$allOf,
    #anyOf: _f$anyOf,
    #requiredProperties: _f$requiredProperties,
  };

  @override
  final String discriminatorKey = '_type';
  @override
  final dynamic discriminatorValue = 'enum';
  @override
  late final ClassMapperBase superMapper = SchemaMapper.ensureInitialized();

  static EnumSchema _instantiate(DecodingData data) {
    return EnumSchema(
        enumValues: data.dec(_f$enumValues),
        description: data.dec(_f$description),
        nullable: data.dec(_f$nullable));
  }

  @override
  final Function instantiate = _instantiate;

  static EnumSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EnumSchema>(map);
  }

  static EnumSchema fromJson(String json) {
    return ensureInitialized().decodeJson<EnumSchema>(json);
  }
}

mixin EnumSchemaMappable {
  String toJson() {
    return EnumSchemaMapper.ensureInitialized()
        .encodeJson<EnumSchema>(this as EnumSchema);
  }

  Map<String, dynamic> toMap() {
    return EnumSchemaMapper.ensureInitialized()
        .encodeMap<EnumSchema>(this as EnumSchema);
  }

  EnumSchemaCopyWith<EnumSchema, EnumSchema, EnumSchema> get copyWith =>
      _EnumSchemaCopyWithImpl(this as EnumSchema, $identity, $identity);
  @override
  String toString() {
    return EnumSchemaMapper.ensureInitialized()
        .stringifyValue(this as EnumSchema);
  }

  @override
  bool operator ==(Object other) {
    return EnumSchemaMapper.ensureInitialized()
        .equalsValue(this as EnumSchema, other);
  }

  @override
  int get hashCode {
    return EnumSchemaMapper.ensureInitialized().hashValue(this as EnumSchema);
  }
}

extension EnumSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, EnumSchema, $Out> {
  EnumSchemaCopyWith<$R, EnumSchema, $Out> get $asEnumSchema =>
      $base.as((v, t, t2) => _EnumSchemaCopyWithImpl(v, t, t2));
}

abstract class EnumSchemaCopyWith<$R, $In extends EnumSchema, $Out>
    implements SchemaCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get enumValues;
  @override
  $R call({List<String>? enumValues, String? description, bool? nullable});
  EnumSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _EnumSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EnumSchema, $Out>
    implements EnumSchemaCopyWith<$R, EnumSchema, $Out> {
  _EnumSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EnumSchema> $mapper =
      EnumSchemaMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get enumValues => $value.enumValues != null
          ? ListCopyWith(
              $value.enumValues!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(enumValues: v))
          : null;
  @override
  $R call(
          {Object? enumValues = $none,
          Object? description = $none,
          bool? nullable}) =>
      $apply(FieldCopyWithData({
        if (enumValues != $none) #enumValues: enumValues,
        if (description != $none) #description: description,
        if (nullable != null) #nullable: nullable
      }));
  @override
  EnumSchema $make(CopyWithData data) => EnumSchema(
      enumValues: data.get(#enumValues, or: $value.enumValues),
      description: data.get(#description, or: $value.description),
      nullable: data.get(#nullable, or: $value.nullable));

  @override
  EnumSchemaCopyWith<$R2, EnumSchema, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _EnumSchemaCopyWithImpl($value, $cast, t);
}

class NumberSchemaMapper extends SubClassMapperBase<NumberSchema> {
  NumberSchemaMapper._();

  static NumberSchemaMapper? _instance;
  static NumberSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NumberSchemaMapper._());
      SchemaMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'NumberSchema';

  static String? _$description(NumberSchema v) => v.description;
  static const Field<NumberSchema, String> _f$description =
      Field('description', _$description, opt: true);
  static bool _$nullable(NumberSchema v) => v.nullable;
  static const Field<NumberSchema, bool> _f$nullable =
      Field('nullable', _$nullable, opt: true, def: true);
  static String? _$format(NumberSchema v) => v.format;
  static const Field<NumberSchema, String> _f$format =
      Field('format', _$format, opt: true);
  static String? _$ref(NumberSchema v) => v.ref;
  static const Field<NumberSchema, String> _f$ref =
      Field('ref', _$ref, mode: FieldMode.member);
  static Map<String, Schema>? _$schemas(NumberSchema v) => v.schemas;
  static const Field<NumberSchema, Map<String, Schema>> _f$schemas =
      Field('schemas', _$schemas, mode: FieldMode.member);
  static DataType? _$type(NumberSchema v) => v.type;
  static const Field<NumberSchema, DataType> _f$type =
      Field('type', _$type, mode: FieldMode.member);
  static DiscriminatorSchema? _$discriminator(NumberSchema v) =>
      v.discriminator;
  static const Field<NumberSchema, DiscriminatorSchema> _f$discriminator =
      Field('discriminator', _$discriminator, mode: FieldMode.member);
  static List<String>? _$enumValues(NumberSchema v) => v.enumValues;
  static const Field<NumberSchema, List<String>> _f$enumValues =
      Field('enumValues', _$enumValues, mode: FieldMode.member);
  static Schema? _$items(NumberSchema v) => v.items;
  static const Field<NumberSchema, Schema> _f$items =
      Field('items', _$items, mode: FieldMode.member);
  static Map<String, Schema>? _$properties(NumberSchema v) => v.properties;
  static const Field<NumberSchema, Map<String, Schema>> _f$properties =
      Field('properties', _$properties, mode: FieldMode.member);
  static List<Schema>? _$oneOf(NumberSchema v) => v.oneOf;
  static const Field<NumberSchema, List<Schema>> _f$oneOf =
      Field('oneOf', _$oneOf, mode: FieldMode.member);
  static List<Schema>? _$allOf(NumberSchema v) => v.allOf;
  static const Field<NumberSchema, List<Schema>> _f$allOf =
      Field('allOf', _$allOf, mode: FieldMode.member);
  static List<Schema>? _$anyOf(NumberSchema v) => v.anyOf;
  static const Field<NumberSchema, List<Schema>> _f$anyOf =
      Field('anyOf', _$anyOf, mode: FieldMode.member);
  static List<String>? _$requiredProperties(NumberSchema v) =>
      v.requiredProperties;
  static const Field<NumberSchema, List<String>> _f$requiredProperties =
      Field('requiredProperties', _$requiredProperties, mode: FieldMode.member);

  @override
  final MappableFields<NumberSchema> fields = const {
    #description: _f$description,
    #nullable: _f$nullable,
    #format: _f$format,
    #ref: _f$ref,
    #schemas: _f$schemas,
    #type: _f$type,
    #discriminator: _f$discriminator,
    #enumValues: _f$enumValues,
    #items: _f$items,
    #properties: _f$properties,
    #oneOf: _f$oneOf,
    #allOf: _f$allOf,
    #anyOf: _f$anyOf,
    #requiredProperties: _f$requiredProperties,
  };

  @override
  final String discriminatorKey = '_type';
  @override
  final dynamic discriminatorValue = 'num';
  @override
  late final ClassMapperBase superMapper = SchemaMapper.ensureInitialized();

  static NumberSchema _instantiate(DecodingData data) {
    return NumberSchema(
        description: data.dec(_f$description),
        nullable: data.dec(_f$nullable),
        format: data.dec(_f$format));
  }

  @override
  final Function instantiate = _instantiate;

  static NumberSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NumberSchema>(map);
  }

  static NumberSchema fromJson(String json) {
    return ensureInitialized().decodeJson<NumberSchema>(json);
  }
}

mixin NumberSchemaMappable {
  String toJson() {
    return NumberSchemaMapper.ensureInitialized()
        .encodeJson<NumberSchema>(this as NumberSchema);
  }

  Map<String, dynamic> toMap() {
    return NumberSchemaMapper.ensureInitialized()
        .encodeMap<NumberSchema>(this as NumberSchema);
  }

  NumberSchemaCopyWith<NumberSchema, NumberSchema, NumberSchema> get copyWith =>
      _NumberSchemaCopyWithImpl(this as NumberSchema, $identity, $identity);
  @override
  String toString() {
    return NumberSchemaMapper.ensureInitialized()
        .stringifyValue(this as NumberSchema);
  }

  @override
  bool operator ==(Object other) {
    return NumberSchemaMapper.ensureInitialized()
        .equalsValue(this as NumberSchema, other);
  }

  @override
  int get hashCode {
    return NumberSchemaMapper.ensureInitialized()
        .hashValue(this as NumberSchema);
  }
}

extension NumberSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NumberSchema, $Out> {
  NumberSchemaCopyWith<$R, NumberSchema, $Out> get $asNumberSchema =>
      $base.as((v, t, t2) => _NumberSchemaCopyWithImpl(v, t, t2));
}

abstract class NumberSchemaCopyWith<$R, $In extends NumberSchema, $Out>
    implements SchemaCopyWith<$R, $In, $Out> {
  @override
  $R call({String? description, bool? nullable, String? format});
  NumberSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _NumberSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NumberSchema, $Out>
    implements NumberSchemaCopyWith<$R, NumberSchema, $Out> {
  _NumberSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NumberSchema> $mapper =
      NumberSchemaMapper.ensureInitialized();
  @override
  $R call(
          {Object? description = $none,
          bool? nullable,
          Object? format = $none}) =>
      $apply(FieldCopyWithData({
        if (description != $none) #description: description,
        if (nullable != null) #nullable: nullable,
        if (format != $none) #format: format
      }));
  @override
  NumberSchema $make(CopyWithData data) => NumberSchema(
      description: data.get(#description, or: $value.description),
      nullable: data.get(#nullable, or: $value.nullable),
      format: data.get(#format, or: $value.format));

  @override
  NumberSchemaCopyWith<$R2, NumberSchema, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _NumberSchemaCopyWithImpl($value, $cast, t);
}

class IntegerSchemaMapper extends SubClassMapperBase<IntegerSchema> {
  IntegerSchemaMapper._();

  static IntegerSchemaMapper? _instance;
  static IntegerSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = IntegerSchemaMapper._());
      SchemaMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'IntegerSchema';

  static String? _$description(IntegerSchema v) => v.description;
  static const Field<IntegerSchema, String> _f$description =
      Field('description', _$description, opt: true);
  static bool _$nullable(IntegerSchema v) => v.nullable;
  static const Field<IntegerSchema, bool> _f$nullable =
      Field('nullable', _$nullable, opt: true, def: true);
  static String? _$format(IntegerSchema v) => v.format;
  static const Field<IntegerSchema, String> _f$format =
      Field('format', _$format, opt: true);
  static String? _$ref(IntegerSchema v) => v.ref;
  static const Field<IntegerSchema, String> _f$ref =
      Field('ref', _$ref, mode: FieldMode.member);
  static Map<String, Schema>? _$schemas(IntegerSchema v) => v.schemas;
  static const Field<IntegerSchema, Map<String, Schema>> _f$schemas =
      Field('schemas', _$schemas, mode: FieldMode.member);
  static DataType? _$type(IntegerSchema v) => v.type;
  static const Field<IntegerSchema, DataType> _f$type =
      Field('type', _$type, mode: FieldMode.member);
  static DiscriminatorSchema? _$discriminator(IntegerSchema v) =>
      v.discriminator;
  static const Field<IntegerSchema, DiscriminatorSchema> _f$discriminator =
      Field('discriminator', _$discriminator, mode: FieldMode.member);
  static List<String>? _$enumValues(IntegerSchema v) => v.enumValues;
  static const Field<IntegerSchema, List<String>> _f$enumValues =
      Field('enumValues', _$enumValues, mode: FieldMode.member);
  static Schema? _$items(IntegerSchema v) => v.items;
  static const Field<IntegerSchema, Schema> _f$items =
      Field('items', _$items, mode: FieldMode.member);
  static Map<String, Schema>? _$properties(IntegerSchema v) => v.properties;
  static const Field<IntegerSchema, Map<String, Schema>> _f$properties =
      Field('properties', _$properties, mode: FieldMode.member);
  static List<Schema>? _$oneOf(IntegerSchema v) => v.oneOf;
  static const Field<IntegerSchema, List<Schema>> _f$oneOf =
      Field('oneOf', _$oneOf, mode: FieldMode.member);
  static List<Schema>? _$allOf(IntegerSchema v) => v.allOf;
  static const Field<IntegerSchema, List<Schema>> _f$allOf =
      Field('allOf', _$allOf, mode: FieldMode.member);
  static List<Schema>? _$anyOf(IntegerSchema v) => v.anyOf;
  static const Field<IntegerSchema, List<Schema>> _f$anyOf =
      Field('anyOf', _$anyOf, mode: FieldMode.member);
  static List<String>? _$requiredProperties(IntegerSchema v) =>
      v.requiredProperties;
  static const Field<IntegerSchema, List<String>> _f$requiredProperties =
      Field('requiredProperties', _$requiredProperties, mode: FieldMode.member);

  @override
  final MappableFields<IntegerSchema> fields = const {
    #description: _f$description,
    #nullable: _f$nullable,
    #format: _f$format,
    #ref: _f$ref,
    #schemas: _f$schemas,
    #type: _f$type,
    #discriminator: _f$discriminator,
    #enumValues: _f$enumValues,
    #items: _f$items,
    #properties: _f$properties,
    #oneOf: _f$oneOf,
    #allOf: _f$allOf,
    #anyOf: _f$anyOf,
    #requiredProperties: _f$requiredProperties,
  };

  @override
  final String discriminatorKey = '_type';
  @override
  final dynamic discriminatorValue = 'int';
  @override
  late final ClassMapperBase superMapper = SchemaMapper.ensureInitialized();

  static IntegerSchema _instantiate(DecodingData data) {
    return IntegerSchema(
        description: data.dec(_f$description),
        nullable: data.dec(_f$nullable),
        format: data.dec(_f$format));
  }

  @override
  final Function instantiate = _instantiate;

  static IntegerSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<IntegerSchema>(map);
  }

  static IntegerSchema fromJson(String json) {
    return ensureInitialized().decodeJson<IntegerSchema>(json);
  }
}

mixin IntegerSchemaMappable {
  String toJson() {
    return IntegerSchemaMapper.ensureInitialized()
        .encodeJson<IntegerSchema>(this as IntegerSchema);
  }

  Map<String, dynamic> toMap() {
    return IntegerSchemaMapper.ensureInitialized()
        .encodeMap<IntegerSchema>(this as IntegerSchema);
  }

  IntegerSchemaCopyWith<IntegerSchema, IntegerSchema, IntegerSchema>
      get copyWith => _IntegerSchemaCopyWithImpl(
          this as IntegerSchema, $identity, $identity);
  @override
  String toString() {
    return IntegerSchemaMapper.ensureInitialized()
        .stringifyValue(this as IntegerSchema);
  }

  @override
  bool operator ==(Object other) {
    return IntegerSchemaMapper.ensureInitialized()
        .equalsValue(this as IntegerSchema, other);
  }

  @override
  int get hashCode {
    return IntegerSchemaMapper.ensureInitialized()
        .hashValue(this as IntegerSchema);
  }
}

extension IntegerSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, IntegerSchema, $Out> {
  IntegerSchemaCopyWith<$R, IntegerSchema, $Out> get $asIntegerSchema =>
      $base.as((v, t, t2) => _IntegerSchemaCopyWithImpl(v, t, t2));
}

abstract class IntegerSchemaCopyWith<$R, $In extends IntegerSchema, $Out>
    implements SchemaCopyWith<$R, $In, $Out> {
  @override
  $R call({String? description, bool? nullable, String? format});
  IntegerSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _IntegerSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, IntegerSchema, $Out>
    implements IntegerSchemaCopyWith<$R, IntegerSchema, $Out> {
  _IntegerSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<IntegerSchema> $mapper =
      IntegerSchemaMapper.ensureInitialized();
  @override
  $R call(
          {Object? description = $none,
          bool? nullable,
          Object? format = $none}) =>
      $apply(FieldCopyWithData({
        if (description != $none) #description: description,
        if (nullable != null) #nullable: nullable,
        if (format != $none) #format: format
      }));
  @override
  IntegerSchema $make(CopyWithData data) => IntegerSchema(
      description: data.get(#description, or: $value.description),
      nullable: data.get(#nullable, or: $value.nullable),
      format: data.get(#format, or: $value.format));

  @override
  IntegerSchemaCopyWith<$R2, IntegerSchema, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _IntegerSchemaCopyWithImpl($value, $cast, t);
}

class BooleanSchemaMapper extends SubClassMapperBase<BooleanSchema> {
  BooleanSchemaMapper._();

  static BooleanSchemaMapper? _instance;
  static BooleanSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BooleanSchemaMapper._());
      SchemaMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'BooleanSchema';

  static String? _$description(BooleanSchema v) => v.description;
  static const Field<BooleanSchema, String> _f$description =
      Field('description', _$description, opt: true);
  static bool _$nullable(BooleanSchema v) => v.nullable;
  static const Field<BooleanSchema, bool> _f$nullable =
      Field('nullable', _$nullable, opt: true, def: true);
  static String? _$ref(BooleanSchema v) => v.ref;
  static const Field<BooleanSchema, String> _f$ref =
      Field('ref', _$ref, mode: FieldMode.member);
  static Map<String, Schema>? _$schemas(BooleanSchema v) => v.schemas;
  static const Field<BooleanSchema, Map<String, Schema>> _f$schemas =
      Field('schemas', _$schemas, mode: FieldMode.member);
  static DataType? _$type(BooleanSchema v) => v.type;
  static const Field<BooleanSchema, DataType> _f$type =
      Field('type', _$type, mode: FieldMode.member);
  static String? _$format(BooleanSchema v) => v.format;
  static const Field<BooleanSchema, String> _f$format =
      Field('format', _$format, mode: FieldMode.member);
  static DiscriminatorSchema? _$discriminator(BooleanSchema v) =>
      v.discriminator;
  static const Field<BooleanSchema, DiscriminatorSchema> _f$discriminator =
      Field('discriminator', _$discriminator, mode: FieldMode.member);
  static List<String>? _$enumValues(BooleanSchema v) => v.enumValues;
  static const Field<BooleanSchema, List<String>> _f$enumValues =
      Field('enumValues', _$enumValues, mode: FieldMode.member);
  static Schema? _$items(BooleanSchema v) => v.items;
  static const Field<BooleanSchema, Schema> _f$items =
      Field('items', _$items, mode: FieldMode.member);
  static Map<String, Schema>? _$properties(BooleanSchema v) => v.properties;
  static const Field<BooleanSchema, Map<String, Schema>> _f$properties =
      Field('properties', _$properties, mode: FieldMode.member);
  static List<Schema>? _$oneOf(BooleanSchema v) => v.oneOf;
  static const Field<BooleanSchema, List<Schema>> _f$oneOf =
      Field('oneOf', _$oneOf, mode: FieldMode.member);
  static List<Schema>? _$allOf(BooleanSchema v) => v.allOf;
  static const Field<BooleanSchema, List<Schema>> _f$allOf =
      Field('allOf', _$allOf, mode: FieldMode.member);
  static List<Schema>? _$anyOf(BooleanSchema v) => v.anyOf;
  static const Field<BooleanSchema, List<Schema>> _f$anyOf =
      Field('anyOf', _$anyOf, mode: FieldMode.member);
  static List<String>? _$requiredProperties(BooleanSchema v) =>
      v.requiredProperties;
  static const Field<BooleanSchema, List<String>> _f$requiredProperties =
      Field('requiredProperties', _$requiredProperties, mode: FieldMode.member);

  @override
  final MappableFields<BooleanSchema> fields = const {
    #description: _f$description,
    #nullable: _f$nullable,
    #ref: _f$ref,
    #schemas: _f$schemas,
    #type: _f$type,
    #format: _f$format,
    #discriminator: _f$discriminator,
    #enumValues: _f$enumValues,
    #items: _f$items,
    #properties: _f$properties,
    #oneOf: _f$oneOf,
    #allOf: _f$allOf,
    #anyOf: _f$anyOf,
    #requiredProperties: _f$requiredProperties,
  };

  @override
  final String discriminatorKey = '_type';
  @override
  final dynamic discriminatorValue = 'boolean';
  @override
  late final ClassMapperBase superMapper = SchemaMapper.ensureInitialized();

  static BooleanSchema _instantiate(DecodingData data) {
    return BooleanSchema(
        description: data.dec(_f$description), nullable: data.dec(_f$nullable));
  }

  @override
  final Function instantiate = _instantiate;

  static BooleanSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BooleanSchema>(map);
  }

  static BooleanSchema fromJson(String json) {
    return ensureInitialized().decodeJson<BooleanSchema>(json);
  }
}

mixin BooleanSchemaMappable {
  String toJson() {
    return BooleanSchemaMapper.ensureInitialized()
        .encodeJson<BooleanSchema>(this as BooleanSchema);
  }

  Map<String, dynamic> toMap() {
    return BooleanSchemaMapper.ensureInitialized()
        .encodeMap<BooleanSchema>(this as BooleanSchema);
  }

  BooleanSchemaCopyWith<BooleanSchema, BooleanSchema, BooleanSchema>
      get copyWith => _BooleanSchemaCopyWithImpl(
          this as BooleanSchema, $identity, $identity);
  @override
  String toString() {
    return BooleanSchemaMapper.ensureInitialized()
        .stringifyValue(this as BooleanSchema);
  }

  @override
  bool operator ==(Object other) {
    return BooleanSchemaMapper.ensureInitialized()
        .equalsValue(this as BooleanSchema, other);
  }

  @override
  int get hashCode {
    return BooleanSchemaMapper.ensureInitialized()
        .hashValue(this as BooleanSchema);
  }
}

extension BooleanSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, BooleanSchema, $Out> {
  BooleanSchemaCopyWith<$R, BooleanSchema, $Out> get $asBooleanSchema =>
      $base.as((v, t, t2) => _BooleanSchemaCopyWithImpl(v, t, t2));
}

abstract class BooleanSchemaCopyWith<$R, $In extends BooleanSchema, $Out>
    implements SchemaCopyWith<$R, $In, $Out> {
  @override
  $R call({String? description, bool? nullable});
  BooleanSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _BooleanSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BooleanSchema, $Out>
    implements BooleanSchemaCopyWith<$R, BooleanSchema, $Out> {
  _BooleanSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BooleanSchema> $mapper =
      BooleanSchemaMapper.ensureInitialized();
  @override
  $R call({Object? description = $none, bool? nullable}) =>
      $apply(FieldCopyWithData({
        if (description != $none) #description: description,
        if (nullable != null) #nullable: nullable
      }));
  @override
  BooleanSchema $make(CopyWithData data) => BooleanSchema(
      description: data.get(#description, or: $value.description),
      nullable: data.get(#nullable, or: $value.nullable));

  @override
  BooleanSchemaCopyWith<$R2, BooleanSchema, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _BooleanSchemaCopyWithImpl($value, $cast, t);
}

class ArraySchemaMapper extends SubClassMapperBase<ArraySchema> {
  ArraySchemaMapper._();

  static ArraySchemaMapper? _instance;
  static ArraySchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ArraySchemaMapper._());
      SchemaMapper.ensureInitialized().addSubMapper(_instance!);
      SchemaMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ArraySchema';

  static String? _$description(ArraySchema v) => v.description;
  static const Field<ArraySchema, String> _f$description =
      Field('description', _$description, opt: true);
  static bool _$nullable(ArraySchema v) => v.nullable;
  static const Field<ArraySchema, bool> _f$nullable =
      Field('nullable', _$nullable, opt: true, def: true);
  static Schema? _$items(ArraySchema v) => v.items;
  static const Field<ArraySchema, Schema> _f$items = Field('items', _$items);
  static String? _$ref(ArraySchema v) => v.ref;
  static const Field<ArraySchema, String> _f$ref =
      Field('ref', _$ref, mode: FieldMode.member);
  static Map<String, Schema>? _$schemas(ArraySchema v) => v.schemas;
  static const Field<ArraySchema, Map<String, Schema>> _f$schemas =
      Field('schemas', _$schemas, mode: FieldMode.member);
  static DataType? _$type(ArraySchema v) => v.type;
  static const Field<ArraySchema, DataType> _f$type =
      Field('type', _$type, mode: FieldMode.member);
  static String? _$format(ArraySchema v) => v.format;
  static const Field<ArraySchema, String> _f$format =
      Field('format', _$format, mode: FieldMode.member);
  static DiscriminatorSchema? _$discriminator(ArraySchema v) => v.discriminator;
  static const Field<ArraySchema, DiscriminatorSchema> _f$discriminator =
      Field('discriminator', _$discriminator, mode: FieldMode.member);
  static List<String>? _$enumValues(ArraySchema v) => v.enumValues;
  static const Field<ArraySchema, List<String>> _f$enumValues =
      Field('enumValues', _$enumValues, mode: FieldMode.member);
  static Map<String, Schema>? _$properties(ArraySchema v) => v.properties;
  static const Field<ArraySchema, Map<String, Schema>> _f$properties =
      Field('properties', _$properties, mode: FieldMode.member);
  static List<Schema>? _$oneOf(ArraySchema v) => v.oneOf;
  static const Field<ArraySchema, List<Schema>> _f$oneOf =
      Field('oneOf', _$oneOf, mode: FieldMode.member);
  static List<Schema>? _$allOf(ArraySchema v) => v.allOf;
  static const Field<ArraySchema, List<Schema>> _f$allOf =
      Field('allOf', _$allOf, mode: FieldMode.member);
  static List<Schema>? _$anyOf(ArraySchema v) => v.anyOf;
  static const Field<ArraySchema, List<Schema>> _f$anyOf =
      Field('anyOf', _$anyOf, mode: FieldMode.member);
  static List<String>? _$requiredProperties(ArraySchema v) =>
      v.requiredProperties;
  static const Field<ArraySchema, List<String>> _f$requiredProperties =
      Field('requiredProperties', _$requiredProperties, mode: FieldMode.member);

  @override
  final MappableFields<ArraySchema> fields = const {
    #description: _f$description,
    #nullable: _f$nullable,
    #items: _f$items,
    #ref: _f$ref,
    #schemas: _f$schemas,
    #type: _f$type,
    #format: _f$format,
    #discriminator: _f$discriminator,
    #enumValues: _f$enumValues,
    #properties: _f$properties,
    #oneOf: _f$oneOf,
    #allOf: _f$allOf,
    #anyOf: _f$anyOf,
    #requiredProperties: _f$requiredProperties,
  };

  @override
  final String discriminatorKey = '_type';
  @override
  final dynamic discriminatorValue = 'array';
  @override
  late final ClassMapperBase superMapper = SchemaMapper.ensureInitialized();

  static ArraySchema _instantiate(DecodingData data) {
    return ArraySchema(
        description: data.dec(_f$description),
        nullable: data.dec(_f$nullable),
        items: data.dec(_f$items));
  }

  @override
  final Function instantiate = _instantiate;

  static ArraySchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ArraySchema>(map);
  }

  static ArraySchema fromJson(String json) {
    return ensureInitialized().decodeJson<ArraySchema>(json);
  }
}

mixin ArraySchemaMappable {
  String toJson() {
    return ArraySchemaMapper.ensureInitialized()
        .encodeJson<ArraySchema>(this as ArraySchema);
  }

  Map<String, dynamic> toMap() {
    return ArraySchemaMapper.ensureInitialized()
        .encodeMap<ArraySchema>(this as ArraySchema);
  }

  ArraySchemaCopyWith<ArraySchema, ArraySchema, ArraySchema> get copyWith =>
      _ArraySchemaCopyWithImpl(this as ArraySchema, $identity, $identity);
  @override
  String toString() {
    return ArraySchemaMapper.ensureInitialized()
        .stringifyValue(this as ArraySchema);
  }

  @override
  bool operator ==(Object other) {
    return ArraySchemaMapper.ensureInitialized()
        .equalsValue(this as ArraySchema, other);
  }

  @override
  int get hashCode {
    return ArraySchemaMapper.ensureInitialized().hashValue(this as ArraySchema);
  }
}

extension ArraySchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ArraySchema, $Out> {
  ArraySchemaCopyWith<$R, ArraySchema, $Out> get $asArraySchema =>
      $base.as((v, t, t2) => _ArraySchemaCopyWithImpl(v, t, t2));
}

abstract class ArraySchemaCopyWith<$R, $In extends ArraySchema, $Out>
    implements SchemaCopyWith<$R, $In, $Out> {
  @override
  SchemaCopyWith<$R, Schema, Schema>? get items;
  @override
  $R call({String? description, bool? nullable, covariant Schema? items});
  ArraySchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ArraySchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ArraySchema, $Out>
    implements ArraySchemaCopyWith<$R, ArraySchema, $Out> {
  _ArraySchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ArraySchema> $mapper =
      ArraySchemaMapper.ensureInitialized();
  @override
  SchemaCopyWith<$R, Schema, Schema>? get items =>
      ($value.items as Schema?)?.copyWith.$chain((v) => call(items: v));
  @override
  $R call({Object? description = $none, bool? nullable, Schema? items}) =>
      $apply(FieldCopyWithData({
        if (description != $none) #description: description,
        if (nullable != null) #nullable: nullable,
        if (items != null) #items: items
      }));
  @override
  ArraySchema $make(CopyWithData data) => ArraySchema(
      description: data.get(#description, or: $value.description),
      nullable: data.get(#nullable, or: $value.nullable),
      items: data.get(#items, or: $value.items));

  @override
  ArraySchemaCopyWith<$R2, ArraySchema, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ArraySchemaCopyWithImpl($value, $cast, t);
}

class ObjectSchemaMapper extends SubClassMapperBase<ObjectSchema> {
  ObjectSchemaMapper._();

  static ObjectSchemaMapper? _instance;
  static ObjectSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ObjectSchemaMapper._());
      SchemaMapper.ensureInitialized().addSubMapper(_instance!);
      SchemaMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ObjectSchema';

  static List<String>? _$requiredProperties(ObjectSchema v) =>
      v.requiredProperties;
  static const Field<ObjectSchema, List<String>> _f$requiredProperties =
      Field('requiredProperties', _$requiredProperties, opt: true);
  static String? _$description(ObjectSchema v) => v.description;
  static const Field<ObjectSchema, String> _f$description =
      Field('description', _$description, opt: true);
  static bool _$nullable(ObjectSchema v) => v.nullable;
  static const Field<ObjectSchema, bool> _f$nullable =
      Field('nullable', _$nullable, opt: true, def: true);
  static Map<String, Schema>? _$properties(ObjectSchema v) => v.properties;
  static const Field<ObjectSchema, Map<String, Schema>> _f$properties =
      Field('properties', _$properties);
  static String? _$ref(ObjectSchema v) => v.ref;
  static const Field<ObjectSchema, String> _f$ref =
      Field('ref', _$ref, mode: FieldMode.member);
  static Map<String, Schema>? _$schemas(ObjectSchema v) => v.schemas;
  static const Field<ObjectSchema, Map<String, Schema>> _f$schemas =
      Field('schemas', _$schemas, mode: FieldMode.member);
  static DataType? _$type(ObjectSchema v) => v.type;
  static const Field<ObjectSchema, DataType> _f$type =
      Field('type', _$type, mode: FieldMode.member);
  static String? _$format(ObjectSchema v) => v.format;
  static const Field<ObjectSchema, String> _f$format =
      Field('format', _$format, mode: FieldMode.member);
  static DiscriminatorSchema? _$discriminator(ObjectSchema v) =>
      v.discriminator;
  static const Field<ObjectSchema, DiscriminatorSchema> _f$discriminator =
      Field('discriminator', _$discriminator, mode: FieldMode.member);
  static List<String>? _$enumValues(ObjectSchema v) => v.enumValues;
  static const Field<ObjectSchema, List<String>> _f$enumValues =
      Field('enumValues', _$enumValues, mode: FieldMode.member);
  static Schema? _$items(ObjectSchema v) => v.items;
  static const Field<ObjectSchema, Schema> _f$items =
      Field('items', _$items, mode: FieldMode.member);
  static List<Schema>? _$oneOf(ObjectSchema v) => v.oneOf;
  static const Field<ObjectSchema, List<Schema>> _f$oneOf =
      Field('oneOf', _$oneOf, mode: FieldMode.member);
  static List<Schema>? _$allOf(ObjectSchema v) => v.allOf;
  static const Field<ObjectSchema, List<Schema>> _f$allOf =
      Field('allOf', _$allOf, mode: FieldMode.member);
  static List<Schema>? _$anyOf(ObjectSchema v) => v.anyOf;
  static const Field<ObjectSchema, List<Schema>> _f$anyOf =
      Field('anyOf', _$anyOf, mode: FieldMode.member);

  @override
  final MappableFields<ObjectSchema> fields = const {
    #requiredProperties: _f$requiredProperties,
    #description: _f$description,
    #nullable: _f$nullable,
    #properties: _f$properties,
    #ref: _f$ref,
    #schemas: _f$schemas,
    #type: _f$type,
    #format: _f$format,
    #discriminator: _f$discriminator,
    #enumValues: _f$enumValues,
    #items: _f$items,
    #oneOf: _f$oneOf,
    #allOf: _f$allOf,
    #anyOf: _f$anyOf,
  };

  @override
  final String discriminatorKey = '_type';
  @override
  final dynamic discriminatorValue = 'array';
  @override
  late final ClassMapperBase superMapper = SchemaMapper.ensureInitialized();

  static ObjectSchema _instantiate(DecodingData data) {
    return ObjectSchema(
        requiredProperties: data.dec(_f$requiredProperties),
        description: data.dec(_f$description),
        nullable: data.dec(_f$nullable),
        properties: data.dec(_f$properties));
  }

  @override
  final Function instantiate = _instantiate;

  static ObjectSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ObjectSchema>(map);
  }

  static ObjectSchema fromJson(String json) {
    return ensureInitialized().decodeJson<ObjectSchema>(json);
  }
}

mixin ObjectSchemaMappable {
  String toJson() {
    return ObjectSchemaMapper.ensureInitialized()
        .encodeJson<ObjectSchema>(this as ObjectSchema);
  }

  Map<String, dynamic> toMap() {
    return ObjectSchemaMapper.ensureInitialized()
        .encodeMap<ObjectSchema>(this as ObjectSchema);
  }

  ObjectSchemaCopyWith<ObjectSchema, ObjectSchema, ObjectSchema> get copyWith =>
      _ObjectSchemaCopyWithImpl(this as ObjectSchema, $identity, $identity);
  @override
  String toString() {
    return ObjectSchemaMapper.ensureInitialized()
        .stringifyValue(this as ObjectSchema);
  }

  @override
  bool operator ==(Object other) {
    return ObjectSchemaMapper.ensureInitialized()
        .equalsValue(this as ObjectSchema, other);
  }

  @override
  int get hashCode {
    return ObjectSchemaMapper.ensureInitialized()
        .hashValue(this as ObjectSchema);
  }
}

extension ObjectSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ObjectSchema, $Out> {
  ObjectSchemaCopyWith<$R, ObjectSchema, $Out> get $asObjectSchema =>
      $base.as((v, t, t2) => _ObjectSchemaCopyWithImpl(v, t, t2));
}

abstract class ObjectSchemaCopyWith<$R, $In extends ObjectSchema, $Out>
    implements SchemaCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties;
  @override
  MapCopyWith<$R, String, Schema, SchemaCopyWith<$R, Schema, Schema>>?
      get properties;
  @override
  $R call(
      {List<String>? requiredProperties,
      String? description,
      bool? nullable,
      covariant Map<String, Schema>? properties});
  ObjectSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ObjectSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ObjectSchema, $Out>
    implements ObjectSchemaCopyWith<$R, ObjectSchema, $Out> {
  _ObjectSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ObjectSchema> $mapper =
      ObjectSchemaMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties => $value.requiredProperties != null
          ? ListCopyWith(
              $value.requiredProperties!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(requiredProperties: v))
          : null;
  @override
  MapCopyWith<$R, String, Schema, SchemaCopyWith<$R, Schema, Schema>>?
      get properties => $value.properties != null
          ? MapCopyWith($value.properties!, (v, t) => v.copyWith.$chain(t),
              (v) => call(properties: v))
          : null;
  @override
  $R call(
          {Object? requiredProperties = $none,
          Object? description = $none,
          bool? nullable,
          Map<String, Schema>? properties}) =>
      $apply(FieldCopyWithData({
        if (requiredProperties != $none)
          #requiredProperties: requiredProperties,
        if (description != $none) #description: description,
        if (nullable != null) #nullable: nullable,
        if (properties != null) #properties: properties
      }));
  @override
  ObjectSchema $make(CopyWithData data) => ObjectSchema(
      requiredProperties:
          data.get(#requiredProperties, or: $value.requiredProperties),
      description: data.get(#description, or: $value.description),
      nullable: data.get(#nullable, or: $value.nullable),
      properties: data.get(#properties, or: $value.properties));

  @override
  ObjectSchemaCopyWith<$R2, ObjectSchema, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ObjectSchemaCopyWithImpl($value, $cast, t);
}
