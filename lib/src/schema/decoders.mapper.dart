// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'decoders.dart';

class AlignmentSchemaMapper extends SubClassMapperBase<AlignmentSchema> {
  AlignmentSchemaMapper._();

  static AlignmentSchemaMapper? _instance;
  static AlignmentSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AlignmentSchemaMapper._());
      SchemaMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'AlignmentSchema';

  static List<String>? _$requiredProperties(AlignmentSchema v) =>
      v.requiredProperties;
  static const Field<AlignmentSchema, List<String>> _f$requiredProperties =
      Field('requiredProperties', _$requiredProperties, opt: true);
  static String? _$description(AlignmentSchema v) => v.description;
  static const Field<AlignmentSchema, String> _f$description =
      Field('description', _$description, opt: true);
  static bool _$nullable(AlignmentSchema v) => v.nullable;
  static const Field<AlignmentSchema, bool> _f$nullable =
      Field('nullable', _$nullable, opt: true, def: true);
  static String? _$ref(AlignmentSchema v) => v.ref;
  static const Field<AlignmentSchema, String> _f$ref =
      Field('ref', _$ref, mode: FieldMode.member);
  static Map<String, Schema>? _$schemas(AlignmentSchema v) => v.schemas;
  static const Field<AlignmentSchema, Map<String, Schema>> _f$schemas =
      Field('schemas', _$schemas, mode: FieldMode.member);
  static DataType? _$type(AlignmentSchema v) => v.type;
  static const Field<AlignmentSchema, DataType> _f$type =
      Field('type', _$type, mode: FieldMode.member);
  static String? _$format(AlignmentSchema v) => v.format;
  static const Field<AlignmentSchema, String> _f$format =
      Field('format', _$format, mode: FieldMode.member);
  static DiscriminatorSchema? _$discriminator(AlignmentSchema v) =>
      v.discriminator;
  static const Field<AlignmentSchema, DiscriminatorSchema> _f$discriminator =
      Field('discriminator', _$discriminator, mode: FieldMode.member);
  static List<String>? _$enumValues(AlignmentSchema v) => v.enumValues;
  static const Field<AlignmentSchema, List<String>> _f$enumValues =
      Field('enumValues', _$enumValues, mode: FieldMode.member);
  static Schema? _$items(AlignmentSchema v) => v.items;
  static const Field<AlignmentSchema, Schema> _f$items =
      Field('items', _$items, mode: FieldMode.member);
  static Map<String, Schema>? _$properties(AlignmentSchema v) => v.properties;
  static const Field<AlignmentSchema, Map<String, Schema>> _f$properties =
      Field('properties', _$properties, mode: FieldMode.member);
  static List<Schema>? _$oneOf(AlignmentSchema v) => v.oneOf;
  static const Field<AlignmentSchema, List<Schema>> _f$oneOf =
      Field('oneOf', _$oneOf, mode: FieldMode.member);
  static List<Schema>? _$allOf(AlignmentSchema v) => v.allOf;
  static const Field<AlignmentSchema, List<Schema>> _f$allOf =
      Field('allOf', _$allOf, mode: FieldMode.member);
  static List<Schema>? _$anyOf(AlignmentSchema v) => v.anyOf;
  static const Field<AlignmentSchema, List<Schema>> _f$anyOf =
      Field('anyOf', _$anyOf, mode: FieldMode.member);

  @override
  final MappableFields<AlignmentSchema> fields = const {
    #requiredProperties: _f$requiredProperties,
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
  };

  @override
  final String discriminatorKey = '_type';
  @override
  final dynamic discriminatorValue = 'alignment';
  @override
  late final ClassMapperBase superMapper = SchemaMapper.ensureInitialized();

  static AlignmentSchema _instantiate(DecodingData data) {
    return AlignmentSchema(
        requiredProperties: data.dec(_f$requiredProperties),
        description: data.dec(_f$description),
        nullable: data.dec(_f$nullable));
  }

  @override
  final Function instantiate = _instantiate;

  static AlignmentSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AlignmentSchema>(map);
  }

  static AlignmentSchema fromJson(String json) {
    return ensureInitialized().decodeJson<AlignmentSchema>(json);
  }
}

mixin AlignmentSchemaMappable {
  String toJson() {
    return AlignmentSchemaMapper.ensureInitialized()
        .encodeJson<AlignmentSchema>(this as AlignmentSchema);
  }

  Map<String, dynamic> toMap() {
    return AlignmentSchemaMapper.ensureInitialized()
        .encodeMap<AlignmentSchema>(this as AlignmentSchema);
  }

  AlignmentSchemaCopyWith<AlignmentSchema, AlignmentSchema, AlignmentSchema>
      get copyWith => _AlignmentSchemaCopyWithImpl(
          this as AlignmentSchema, $identity, $identity);
  @override
  String toString() {
    return AlignmentSchemaMapper.ensureInitialized()
        .stringifyValue(this as AlignmentSchema);
  }

  @override
  bool operator ==(Object other) {
    return AlignmentSchemaMapper.ensureInitialized()
        .equalsValue(this as AlignmentSchema, other);
  }

  @override
  int get hashCode {
    return AlignmentSchemaMapper.ensureInitialized()
        .hashValue(this as AlignmentSchema);
  }
}

extension AlignmentSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AlignmentSchema, $Out> {
  AlignmentSchemaCopyWith<$R, AlignmentSchema, $Out> get $asAlignmentSchema =>
      $base.as((v, t, t2) => _AlignmentSchemaCopyWithImpl(v, t, t2));
}

abstract class AlignmentSchemaCopyWith<$R, $In extends AlignmentSchema, $Out>
    implements SchemaCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties;
  @override
  $R call(
      {List<String>? requiredProperties, String? description, bool? nullable});
  AlignmentSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _AlignmentSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AlignmentSchema, $Out>
    implements AlignmentSchemaCopyWith<$R, AlignmentSchema, $Out> {
  _AlignmentSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AlignmentSchema> $mapper =
      AlignmentSchemaMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties => $value.requiredProperties != null
          ? ListCopyWith(
              $value.requiredProperties!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(requiredProperties: v))
          : null;
  @override
  $R call(
          {Object? requiredProperties = $none,
          Object? description = $none,
          bool? nullable}) =>
      $apply(FieldCopyWithData({
        if (requiredProperties != $none)
          #requiredProperties: requiredProperties,
        if (description != $none) #description: description,
        if (nullable != null) #nullable: nullable
      }));
  @override
  AlignmentSchema $make(CopyWithData data) => AlignmentSchema(
      requiredProperties:
          data.get(#requiredProperties, or: $value.requiredProperties),
      description: data.get(#description, or: $value.description),
      nullable: data.get(#nullable, or: $value.nullable));

  @override
  AlignmentSchemaCopyWith<$R2, AlignmentSchema, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _AlignmentSchemaCopyWithImpl($value, $cast, t);
}

class BoxConstraintsSchemaMapper
    extends SubClassMapperBase<BoxConstraintsSchema> {
  BoxConstraintsSchemaMapper._();

  static BoxConstraintsSchemaMapper? _instance;
  static BoxConstraintsSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BoxConstraintsSchemaMapper._());
      SchemaMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'BoxConstraintsSchema';

  static List<String>? _$requiredProperties(BoxConstraintsSchema v) =>
      v.requiredProperties;
  static const Field<BoxConstraintsSchema, List<String>> _f$requiredProperties =
      Field('requiredProperties', _$requiredProperties, opt: true);
  static String? _$description(BoxConstraintsSchema v) => v.description;
  static const Field<BoxConstraintsSchema, String> _f$description =
      Field('description', _$description, opt: true);
  static bool _$nullable(BoxConstraintsSchema v) => v.nullable;
  static const Field<BoxConstraintsSchema, bool> _f$nullable =
      Field('nullable', _$nullable, opt: true, def: true);
  static String? _$ref(BoxConstraintsSchema v) => v.ref;
  static const Field<BoxConstraintsSchema, String> _f$ref =
      Field('ref', _$ref, mode: FieldMode.member);
  static Map<String, Schema>? _$schemas(BoxConstraintsSchema v) => v.schemas;
  static const Field<BoxConstraintsSchema, Map<String, Schema>> _f$schemas =
      Field('schemas', _$schemas, mode: FieldMode.member);
  static DataType? _$type(BoxConstraintsSchema v) => v.type;
  static const Field<BoxConstraintsSchema, DataType> _f$type =
      Field('type', _$type, mode: FieldMode.member);
  static String? _$format(BoxConstraintsSchema v) => v.format;
  static const Field<BoxConstraintsSchema, String> _f$format =
      Field('format', _$format, mode: FieldMode.member);
  static DiscriminatorSchema? _$discriminator(BoxConstraintsSchema v) =>
      v.discriminator;
  static const Field<BoxConstraintsSchema, DiscriminatorSchema>
      _f$discriminator =
      Field('discriminator', _$discriminator, mode: FieldMode.member);
  static List<String>? _$enumValues(BoxConstraintsSchema v) => v.enumValues;
  static const Field<BoxConstraintsSchema, List<String>> _f$enumValues =
      Field('enumValues', _$enumValues, mode: FieldMode.member);
  static Schema? _$items(BoxConstraintsSchema v) => v.items;
  static const Field<BoxConstraintsSchema, Schema> _f$items =
      Field('items', _$items, mode: FieldMode.member);
  static Map<String, Schema>? _$properties(BoxConstraintsSchema v) =>
      v.properties;
  static const Field<BoxConstraintsSchema, Map<String, Schema>> _f$properties =
      Field('properties', _$properties, mode: FieldMode.member);
  static List<Schema>? _$oneOf(BoxConstraintsSchema v) => v.oneOf;
  static const Field<BoxConstraintsSchema, List<Schema>> _f$oneOf =
      Field('oneOf', _$oneOf, mode: FieldMode.member);
  static List<Schema>? _$allOf(BoxConstraintsSchema v) => v.allOf;
  static const Field<BoxConstraintsSchema, List<Schema>> _f$allOf =
      Field('allOf', _$allOf, mode: FieldMode.member);
  static List<Schema>? _$anyOf(BoxConstraintsSchema v) => v.anyOf;
  static const Field<BoxConstraintsSchema, List<Schema>> _f$anyOf =
      Field('anyOf', _$anyOf, mode: FieldMode.member);

  @override
  final MappableFields<BoxConstraintsSchema> fields = const {
    #requiredProperties: _f$requiredProperties,
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
  };

  @override
  final String discriminatorKey = '_type';
  @override
  final dynamic discriminatorValue = 'box_constraints';
  @override
  late final ClassMapperBase superMapper = SchemaMapper.ensureInitialized();

  static BoxConstraintsSchema _instantiate(DecodingData data) {
    return BoxConstraintsSchema(
        requiredProperties: data.dec(_f$requiredProperties),
        description: data.dec(_f$description),
        nullable: data.dec(_f$nullable));
  }

  @override
  final Function instantiate = _instantiate;

  static BoxConstraintsSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BoxConstraintsSchema>(map);
  }

  static BoxConstraintsSchema fromJson(String json) {
    return ensureInitialized().decodeJson<BoxConstraintsSchema>(json);
  }
}

mixin BoxConstraintsSchemaMappable {
  String toJson() {
    return BoxConstraintsSchemaMapper.ensureInitialized()
        .encodeJson<BoxConstraintsSchema>(this as BoxConstraintsSchema);
  }

  Map<String, dynamic> toMap() {
    return BoxConstraintsSchemaMapper.ensureInitialized()
        .encodeMap<BoxConstraintsSchema>(this as BoxConstraintsSchema);
  }

  BoxConstraintsSchemaCopyWith<BoxConstraintsSchema, BoxConstraintsSchema,
          BoxConstraintsSchema>
      get copyWith => _BoxConstraintsSchemaCopyWithImpl(
          this as BoxConstraintsSchema, $identity, $identity);
  @override
  String toString() {
    return BoxConstraintsSchemaMapper.ensureInitialized()
        .stringifyValue(this as BoxConstraintsSchema);
  }

  @override
  bool operator ==(Object other) {
    return BoxConstraintsSchemaMapper.ensureInitialized()
        .equalsValue(this as BoxConstraintsSchema, other);
  }

  @override
  int get hashCode {
    return BoxConstraintsSchemaMapper.ensureInitialized()
        .hashValue(this as BoxConstraintsSchema);
  }
}

extension BoxConstraintsSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, BoxConstraintsSchema, $Out> {
  BoxConstraintsSchemaCopyWith<$R, BoxConstraintsSchema, $Out>
      get $asBoxConstraintsSchema =>
          $base.as((v, t, t2) => _BoxConstraintsSchemaCopyWithImpl(v, t, t2));
}

abstract class BoxConstraintsSchemaCopyWith<
    $R,
    $In extends BoxConstraintsSchema,
    $Out> implements SchemaCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties;
  @override
  $R call(
      {List<String>? requiredProperties, String? description, bool? nullable});
  BoxConstraintsSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _BoxConstraintsSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BoxConstraintsSchema, $Out>
    implements BoxConstraintsSchemaCopyWith<$R, BoxConstraintsSchema, $Out> {
  _BoxConstraintsSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BoxConstraintsSchema> $mapper =
      BoxConstraintsSchemaMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties => $value.requiredProperties != null
          ? ListCopyWith(
              $value.requiredProperties!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(requiredProperties: v))
          : null;
  @override
  $R call(
          {Object? requiredProperties = $none,
          Object? description = $none,
          bool? nullable}) =>
      $apply(FieldCopyWithData({
        if (requiredProperties != $none)
          #requiredProperties: requiredProperties,
        if (description != $none) #description: description,
        if (nullable != null) #nullable: nullable
      }));
  @override
  BoxConstraintsSchema $make(CopyWithData data) => BoxConstraintsSchema(
      requiredProperties:
          data.get(#requiredProperties, or: $value.requiredProperties),
      description: data.get(#description, or: $value.description),
      nullable: data.get(#nullable, or: $value.nullable));

  @override
  BoxConstraintsSchemaCopyWith<$R2, BoxConstraintsSchema, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _BoxConstraintsSchemaCopyWithImpl($value, $cast, t);
}

class BorderSchemaMapper extends SubClassMapperBase<BorderSchema> {
  BorderSchemaMapper._();

  static BorderSchemaMapper? _instance;
  static BorderSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BorderSchemaMapper._());
      SchemaMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'BorderSchema';

  static List<String>? _$requiredProperties(BorderSchema v) =>
      v.requiredProperties;
  static const Field<BorderSchema, List<String>> _f$requiredProperties =
      Field('requiredProperties', _$requiredProperties, opt: true);
  static String? _$description(BorderSchema v) => v.description;
  static const Field<BorderSchema, String> _f$description =
      Field('description', _$description, opt: true);
  static bool _$nullable(BorderSchema v) => v.nullable;
  static const Field<BorderSchema, bool> _f$nullable =
      Field('nullable', _$nullable, opt: true, def: true);
  static String? _$ref(BorderSchema v) => v.ref;
  static const Field<BorderSchema, String> _f$ref =
      Field('ref', _$ref, mode: FieldMode.member);
  static Map<String, Schema>? _$schemas(BorderSchema v) => v.schemas;
  static const Field<BorderSchema, Map<String, Schema>> _f$schemas =
      Field('schemas', _$schemas, mode: FieldMode.member);
  static DataType? _$type(BorderSchema v) => v.type;
  static const Field<BorderSchema, DataType> _f$type =
      Field('type', _$type, mode: FieldMode.member);
  static String? _$format(BorderSchema v) => v.format;
  static const Field<BorderSchema, String> _f$format =
      Field('format', _$format, mode: FieldMode.member);
  static DiscriminatorSchema? _$discriminator(BorderSchema v) =>
      v.discriminator;
  static const Field<BorderSchema, DiscriminatorSchema> _f$discriminator =
      Field('discriminator', _$discriminator, mode: FieldMode.member);
  static List<String>? _$enumValues(BorderSchema v) => v.enumValues;
  static const Field<BorderSchema, List<String>> _f$enumValues =
      Field('enumValues', _$enumValues, mode: FieldMode.member);
  static Schema? _$items(BorderSchema v) => v.items;
  static const Field<BorderSchema, Schema> _f$items =
      Field('items', _$items, mode: FieldMode.member);
  static Map<String, Schema>? _$properties(BorderSchema v) => v.properties;
  static const Field<BorderSchema, Map<String, Schema>> _f$properties =
      Field('properties', _$properties, mode: FieldMode.member);
  static List<Schema>? _$oneOf(BorderSchema v) => v.oneOf;
  static const Field<BorderSchema, List<Schema>> _f$oneOf =
      Field('oneOf', _$oneOf, mode: FieldMode.member);
  static List<Schema>? _$allOf(BorderSchema v) => v.allOf;
  static const Field<BorderSchema, List<Schema>> _f$allOf =
      Field('allOf', _$allOf, mode: FieldMode.member);
  static List<Schema>? _$anyOf(BorderSchema v) => v.anyOf;
  static const Field<BorderSchema, List<Schema>> _f$anyOf =
      Field('anyOf', _$anyOf, mode: FieldMode.member);

  @override
  final MappableFields<BorderSchema> fields = const {
    #requiredProperties: _f$requiredProperties,
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
  };

  @override
  final String discriminatorKey = '_type';
  @override
  final dynamic discriminatorValue = 'border';
  @override
  late final ClassMapperBase superMapper = SchemaMapper.ensureInitialized();

  static BorderSchema _instantiate(DecodingData data) {
    return BorderSchema(
        requiredProperties: data.dec(_f$requiredProperties),
        description: data.dec(_f$description),
        nullable: data.dec(_f$nullable));
  }

  @override
  final Function instantiate = _instantiate;

  static BorderSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BorderSchema>(map);
  }

  static BorderSchema fromJson(String json) {
    return ensureInitialized().decodeJson<BorderSchema>(json);
  }
}

mixin BorderSchemaMappable {
  String toJson() {
    return BorderSchemaMapper.ensureInitialized()
        .encodeJson<BorderSchema>(this as BorderSchema);
  }

  Map<String, dynamic> toMap() {
    return BorderSchemaMapper.ensureInitialized()
        .encodeMap<BorderSchema>(this as BorderSchema);
  }

  BorderSchemaCopyWith<BorderSchema, BorderSchema, BorderSchema> get copyWith =>
      _BorderSchemaCopyWithImpl(this as BorderSchema, $identity, $identity);
  @override
  String toString() {
    return BorderSchemaMapper.ensureInitialized()
        .stringifyValue(this as BorderSchema);
  }

  @override
  bool operator ==(Object other) {
    return BorderSchemaMapper.ensureInitialized()
        .equalsValue(this as BorderSchema, other);
  }

  @override
  int get hashCode {
    return BorderSchemaMapper.ensureInitialized()
        .hashValue(this as BorderSchema);
  }
}

extension BorderSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, BorderSchema, $Out> {
  BorderSchemaCopyWith<$R, BorderSchema, $Out> get $asBorderSchema =>
      $base.as((v, t, t2) => _BorderSchemaCopyWithImpl(v, t, t2));
}

abstract class BorderSchemaCopyWith<$R, $In extends BorderSchema, $Out>
    implements SchemaCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties;
  @override
  $R call(
      {List<String>? requiredProperties, String? description, bool? nullable});
  BorderSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _BorderSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BorderSchema, $Out>
    implements BorderSchemaCopyWith<$R, BorderSchema, $Out> {
  _BorderSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BorderSchema> $mapper =
      BorderSchemaMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties => $value.requiredProperties != null
          ? ListCopyWith(
              $value.requiredProperties!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(requiredProperties: v))
          : null;
  @override
  $R call(
          {Object? requiredProperties = $none,
          Object? description = $none,
          bool? nullable}) =>
      $apply(FieldCopyWithData({
        if (requiredProperties != $none)
          #requiredProperties: requiredProperties,
        if (description != $none) #description: description,
        if (nullable != null) #nullable: nullable
      }));
  @override
  BorderSchema $make(CopyWithData data) => BorderSchema(
      requiredProperties:
          data.get(#requiredProperties, or: $value.requiredProperties),
      description: data.get(#description, or: $value.description),
      nullable: data.get(#nullable, or: $value.nullable));

  @override
  BorderSchemaCopyWith<$R2, BorderSchema, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _BorderSchemaCopyWithImpl($value, $cast, t);
}

class BorderSideSchemaMapper extends SubClassMapperBase<BorderSideSchema> {
  BorderSideSchemaMapper._();

  static BorderSideSchemaMapper? _instance;
  static BorderSideSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BorderSideSchemaMapper._());
      SchemaMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'BorderSideSchema';

  static List<String>? _$requiredProperties(BorderSideSchema v) =>
      v.requiredProperties;
  static const Field<BorderSideSchema, List<String>> _f$requiredProperties =
      Field('requiredProperties', _$requiredProperties, opt: true);
  static String? _$description(BorderSideSchema v) => v.description;
  static const Field<BorderSideSchema, String> _f$description =
      Field('description', _$description, opt: true);
  static bool _$nullable(BorderSideSchema v) => v.nullable;
  static const Field<BorderSideSchema, bool> _f$nullable =
      Field('nullable', _$nullable, opt: true, def: true);
  static String? _$ref(BorderSideSchema v) => v.ref;
  static const Field<BorderSideSchema, String> _f$ref =
      Field('ref', _$ref, mode: FieldMode.member);
  static Map<String, Schema>? _$schemas(BorderSideSchema v) => v.schemas;
  static const Field<BorderSideSchema, Map<String, Schema>> _f$schemas =
      Field('schemas', _$schemas, mode: FieldMode.member);
  static DataType? _$type(BorderSideSchema v) => v.type;
  static const Field<BorderSideSchema, DataType> _f$type =
      Field('type', _$type, mode: FieldMode.member);
  static String? _$format(BorderSideSchema v) => v.format;
  static const Field<BorderSideSchema, String> _f$format =
      Field('format', _$format, mode: FieldMode.member);
  static DiscriminatorSchema? _$discriminator(BorderSideSchema v) =>
      v.discriminator;
  static const Field<BorderSideSchema, DiscriminatorSchema> _f$discriminator =
      Field('discriminator', _$discriminator, mode: FieldMode.member);
  static List<String>? _$enumValues(BorderSideSchema v) => v.enumValues;
  static const Field<BorderSideSchema, List<String>> _f$enumValues =
      Field('enumValues', _$enumValues, mode: FieldMode.member);
  static Schema? _$items(BorderSideSchema v) => v.items;
  static const Field<BorderSideSchema, Schema> _f$items =
      Field('items', _$items, mode: FieldMode.member);
  static Map<String, Schema>? _$properties(BorderSideSchema v) => v.properties;
  static const Field<BorderSideSchema, Map<String, Schema>> _f$properties =
      Field('properties', _$properties, mode: FieldMode.member);
  static List<Schema>? _$oneOf(BorderSideSchema v) => v.oneOf;
  static const Field<BorderSideSchema, List<Schema>> _f$oneOf =
      Field('oneOf', _$oneOf, mode: FieldMode.member);
  static List<Schema>? _$allOf(BorderSideSchema v) => v.allOf;
  static const Field<BorderSideSchema, List<Schema>> _f$allOf =
      Field('allOf', _$allOf, mode: FieldMode.member);
  static List<Schema>? _$anyOf(BorderSideSchema v) => v.anyOf;
  static const Field<BorderSideSchema, List<Schema>> _f$anyOf =
      Field('anyOf', _$anyOf, mode: FieldMode.member);

  @override
  final MappableFields<BorderSideSchema> fields = const {
    #requiredProperties: _f$requiredProperties,
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
  };

  @override
  final String discriminatorKey = '_type';
  @override
  final dynamic discriminatorValue = 'border_side';
  @override
  late final ClassMapperBase superMapper = SchemaMapper.ensureInitialized();

  static BorderSideSchema _instantiate(DecodingData data) {
    return BorderSideSchema(
        requiredProperties: data.dec(_f$requiredProperties),
        description: data.dec(_f$description),
        nullable: data.dec(_f$nullable));
  }

  @override
  final Function instantiate = _instantiate;

  static BorderSideSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BorderSideSchema>(map);
  }

  static BorderSideSchema fromJson(String json) {
    return ensureInitialized().decodeJson<BorderSideSchema>(json);
  }
}

mixin BorderSideSchemaMappable {
  String toJson() {
    return BorderSideSchemaMapper.ensureInitialized()
        .encodeJson<BorderSideSchema>(this as BorderSideSchema);
  }

  Map<String, dynamic> toMap() {
    return BorderSideSchemaMapper.ensureInitialized()
        .encodeMap<BorderSideSchema>(this as BorderSideSchema);
  }

  BorderSideSchemaCopyWith<BorderSideSchema, BorderSideSchema, BorderSideSchema>
      get copyWith => _BorderSideSchemaCopyWithImpl(
          this as BorderSideSchema, $identity, $identity);
  @override
  String toString() {
    return BorderSideSchemaMapper.ensureInitialized()
        .stringifyValue(this as BorderSideSchema);
  }

  @override
  bool operator ==(Object other) {
    return BorderSideSchemaMapper.ensureInitialized()
        .equalsValue(this as BorderSideSchema, other);
  }

  @override
  int get hashCode {
    return BorderSideSchemaMapper.ensureInitialized()
        .hashValue(this as BorderSideSchema);
  }
}

extension BorderSideSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, BorderSideSchema, $Out> {
  BorderSideSchemaCopyWith<$R, BorderSideSchema, $Out>
      get $asBorderSideSchema =>
          $base.as((v, t, t2) => _BorderSideSchemaCopyWithImpl(v, t, t2));
}

abstract class BorderSideSchemaCopyWith<$R, $In extends BorderSideSchema, $Out>
    implements SchemaCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties;
  @override
  $R call(
      {List<String>? requiredProperties, String? description, bool? nullable});
  BorderSideSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _BorderSideSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BorderSideSchema, $Out>
    implements BorderSideSchemaCopyWith<$R, BorderSideSchema, $Out> {
  _BorderSideSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BorderSideSchema> $mapper =
      BorderSideSchemaMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties => $value.requiredProperties != null
          ? ListCopyWith(
              $value.requiredProperties!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(requiredProperties: v))
          : null;
  @override
  $R call(
          {Object? requiredProperties = $none,
          Object? description = $none,
          bool? nullable}) =>
      $apply(FieldCopyWithData({
        if (requiredProperties != $none)
          #requiredProperties: requiredProperties,
        if (description != $none) #description: description,
        if (nullable != null) #nullable: nullable
      }));
  @override
  BorderSideSchema $make(CopyWithData data) => BorderSideSchema(
      requiredProperties:
          data.get(#requiredProperties, or: $value.requiredProperties),
      description: data.get(#description, or: $value.description),
      nullable: data.get(#nullable, or: $value.nullable));

  @override
  BorderSideSchemaCopyWith<$R2, BorderSideSchema, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _BorderSideSchemaCopyWithImpl($value, $cast, t);
}

class BorderRadiusSchemaMapper extends SubClassMapperBase<BorderRadiusSchema> {
  BorderRadiusSchemaMapper._();

  static BorderRadiusSchemaMapper? _instance;
  static BorderRadiusSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BorderRadiusSchemaMapper._());
      SchemaMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'BorderRadiusSchema';

  static List<String>? _$requiredProperties(BorderRadiusSchema v) =>
      v.requiredProperties;
  static const Field<BorderRadiusSchema, List<String>> _f$requiredProperties =
      Field('requiredProperties', _$requiredProperties, opt: true);
  static String? _$description(BorderRadiusSchema v) => v.description;
  static const Field<BorderRadiusSchema, String> _f$description =
      Field('description', _$description, opt: true);
  static bool _$nullable(BorderRadiusSchema v) => v.nullable;
  static const Field<BorderRadiusSchema, bool> _f$nullable =
      Field('nullable', _$nullable, opt: true, def: true);
  static String? _$ref(BorderRadiusSchema v) => v.ref;
  static const Field<BorderRadiusSchema, String> _f$ref =
      Field('ref', _$ref, mode: FieldMode.member);
  static Map<String, Schema>? _$schemas(BorderRadiusSchema v) => v.schemas;
  static const Field<BorderRadiusSchema, Map<String, Schema>> _f$schemas =
      Field('schemas', _$schemas, mode: FieldMode.member);
  static DataType? _$type(BorderRadiusSchema v) => v.type;
  static const Field<BorderRadiusSchema, DataType> _f$type =
      Field('type', _$type, mode: FieldMode.member);
  static String? _$format(BorderRadiusSchema v) => v.format;
  static const Field<BorderRadiusSchema, String> _f$format =
      Field('format', _$format, mode: FieldMode.member);
  static DiscriminatorSchema? _$discriminator(BorderRadiusSchema v) =>
      v.discriminator;
  static const Field<BorderRadiusSchema, DiscriminatorSchema> _f$discriminator =
      Field('discriminator', _$discriminator, mode: FieldMode.member);
  static List<String>? _$enumValues(BorderRadiusSchema v) => v.enumValues;
  static const Field<BorderRadiusSchema, List<String>> _f$enumValues =
      Field('enumValues', _$enumValues, mode: FieldMode.member);
  static Schema? _$items(BorderRadiusSchema v) => v.items;
  static const Field<BorderRadiusSchema, Schema> _f$items =
      Field('items', _$items, mode: FieldMode.member);
  static Map<String, Schema>? _$properties(BorderRadiusSchema v) =>
      v.properties;
  static const Field<BorderRadiusSchema, Map<String, Schema>> _f$properties =
      Field('properties', _$properties, mode: FieldMode.member);
  static List<Schema>? _$oneOf(BorderRadiusSchema v) => v.oneOf;
  static const Field<BorderRadiusSchema, List<Schema>> _f$oneOf =
      Field('oneOf', _$oneOf, mode: FieldMode.member);
  static List<Schema>? _$allOf(BorderRadiusSchema v) => v.allOf;
  static const Field<BorderRadiusSchema, List<Schema>> _f$allOf =
      Field('allOf', _$allOf, mode: FieldMode.member);
  static List<Schema>? _$anyOf(BorderRadiusSchema v) => v.anyOf;
  static const Field<BorderRadiusSchema, List<Schema>> _f$anyOf =
      Field('anyOf', _$anyOf, mode: FieldMode.member);

  @override
  final MappableFields<BorderRadiusSchema> fields = const {
    #requiredProperties: _f$requiredProperties,
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
  };

  @override
  final String discriminatorKey = '_type';
  @override
  final dynamic discriminatorValue = 'border_radius';
  @override
  late final ClassMapperBase superMapper = SchemaMapper.ensureInitialized();

  static BorderRadiusSchema _instantiate(DecodingData data) {
    return BorderRadiusSchema(
        requiredProperties: data.dec(_f$requiredProperties),
        description: data.dec(_f$description),
        nullable: data.dec(_f$nullable));
  }

  @override
  final Function instantiate = _instantiate;

  static BorderRadiusSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BorderRadiusSchema>(map);
  }

  static BorderRadiusSchema fromJson(String json) {
    return ensureInitialized().decodeJson<BorderRadiusSchema>(json);
  }
}

mixin BorderRadiusSchemaMappable {
  String toJson() {
    return BorderRadiusSchemaMapper.ensureInitialized()
        .encodeJson<BorderRadiusSchema>(this as BorderRadiusSchema);
  }

  Map<String, dynamic> toMap() {
    return BorderRadiusSchemaMapper.ensureInitialized()
        .encodeMap<BorderRadiusSchema>(this as BorderRadiusSchema);
  }

  BorderRadiusSchemaCopyWith<BorderRadiusSchema, BorderRadiusSchema,
          BorderRadiusSchema>
      get copyWith => _BorderRadiusSchemaCopyWithImpl(
          this as BorderRadiusSchema, $identity, $identity);
  @override
  String toString() {
    return BorderRadiusSchemaMapper.ensureInitialized()
        .stringifyValue(this as BorderRadiusSchema);
  }

  @override
  bool operator ==(Object other) {
    return BorderRadiusSchemaMapper.ensureInitialized()
        .equalsValue(this as BorderRadiusSchema, other);
  }

  @override
  int get hashCode {
    return BorderRadiusSchemaMapper.ensureInitialized()
        .hashValue(this as BorderRadiusSchema);
  }
}

extension BorderRadiusSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, BorderRadiusSchema, $Out> {
  BorderRadiusSchemaCopyWith<$R, BorderRadiusSchema, $Out>
      get $asBorderRadiusSchema =>
          $base.as((v, t, t2) => _BorderRadiusSchemaCopyWithImpl(v, t, t2));
}

abstract class BorderRadiusSchemaCopyWith<$R, $In extends BorderRadiusSchema,
    $Out> implements SchemaCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties;
  @override
  $R call(
      {List<String>? requiredProperties, String? description, bool? nullable});
  BorderRadiusSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _BorderRadiusSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BorderRadiusSchema, $Out>
    implements BorderRadiusSchemaCopyWith<$R, BorderRadiusSchema, $Out> {
  _BorderRadiusSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BorderRadiusSchema> $mapper =
      BorderRadiusSchemaMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties => $value.requiredProperties != null
          ? ListCopyWith(
              $value.requiredProperties!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(requiredProperties: v))
          : null;
  @override
  $R call(
          {Object? requiredProperties = $none,
          Object? description = $none,
          bool? nullable}) =>
      $apply(FieldCopyWithData({
        if (requiredProperties != $none)
          #requiredProperties: requiredProperties,
        if (description != $none) #description: description,
        if (nullable != null) #nullable: nullable
      }));
  @override
  BorderRadiusSchema $make(CopyWithData data) => BorderRadiusSchema(
      requiredProperties:
          data.get(#requiredProperties, or: $value.requiredProperties),
      description: data.get(#description, or: $value.description),
      nullable: data.get(#nullable, or: $value.nullable));

  @override
  BorderRadiusSchemaCopyWith<$R2, BorderRadiusSchema, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _BorderRadiusSchemaCopyWithImpl($value, $cast, t);
}

class ColorSchemaMapper extends SubClassMapperBase<ColorSchema> {
  ColorSchemaMapper._();

  static ColorSchemaMapper? _instance;
  static ColorSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ColorSchemaMapper._());
      SchemaMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ColorSchema';

  static List<String>? _$requiredProperties(ColorSchema v) =>
      v.requiredProperties;
  static const Field<ColorSchema, List<String>> _f$requiredProperties =
      Field('requiredProperties', _$requiredProperties, opt: true);
  static String? _$description(ColorSchema v) => v.description;
  static const Field<ColorSchema, String> _f$description =
      Field('description', _$description, opt: true);
  static bool _$nullable(ColorSchema v) => v.nullable;
  static const Field<ColorSchema, bool> _f$nullable =
      Field('nullable', _$nullable, opt: true, def: true);
  static String? _$ref(ColorSchema v) => v.ref;
  static const Field<ColorSchema, String> _f$ref =
      Field('ref', _$ref, mode: FieldMode.member);
  static Map<String, Schema>? _$schemas(ColorSchema v) => v.schemas;
  static const Field<ColorSchema, Map<String, Schema>> _f$schemas =
      Field('schemas', _$schemas, mode: FieldMode.member);
  static DataType? _$type(ColorSchema v) => v.type;
  static const Field<ColorSchema, DataType> _f$type =
      Field('type', _$type, mode: FieldMode.member);
  static String? _$format(ColorSchema v) => v.format;
  static const Field<ColorSchema, String> _f$format =
      Field('format', _$format, mode: FieldMode.member);
  static DiscriminatorSchema? _$discriminator(ColorSchema v) => v.discriminator;
  static const Field<ColorSchema, DiscriminatorSchema> _f$discriminator =
      Field('discriminator', _$discriminator, mode: FieldMode.member);
  static List<String>? _$enumValues(ColorSchema v) => v.enumValues;
  static const Field<ColorSchema, List<String>> _f$enumValues =
      Field('enumValues', _$enumValues, mode: FieldMode.member);
  static Schema? _$items(ColorSchema v) => v.items;
  static const Field<ColorSchema, Schema> _f$items =
      Field('items', _$items, mode: FieldMode.member);
  static Map<String, Schema>? _$properties(ColorSchema v) => v.properties;
  static const Field<ColorSchema, Map<String, Schema>> _f$properties =
      Field('properties', _$properties, mode: FieldMode.member);
  static List<Schema>? _$oneOf(ColorSchema v) => v.oneOf;
  static const Field<ColorSchema, List<Schema>> _f$oneOf =
      Field('oneOf', _$oneOf, mode: FieldMode.member);
  static List<Schema>? _$allOf(ColorSchema v) => v.allOf;
  static const Field<ColorSchema, List<Schema>> _f$allOf =
      Field('allOf', _$allOf, mode: FieldMode.member);
  static List<Schema>? _$anyOf(ColorSchema v) => v.anyOf;
  static const Field<ColorSchema, List<Schema>> _f$anyOf =
      Field('anyOf', _$anyOf, mode: FieldMode.member);

  @override
  final MappableFields<ColorSchema> fields = const {
    #requiredProperties: _f$requiredProperties,
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
  };

  @override
  final String discriminatorKey = '_type';
  @override
  final dynamic discriminatorValue = 'color';
  @override
  late final ClassMapperBase superMapper = SchemaMapper.ensureInitialized();

  static ColorSchema _instantiate(DecodingData data) {
    return ColorSchema(
        requiredProperties: data.dec(_f$requiredProperties),
        description: data.dec(_f$description),
        nullable: data.dec(_f$nullable));
  }

  @override
  final Function instantiate = _instantiate;

  static ColorSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ColorSchema>(map);
  }

  static ColorSchema fromJson(String json) {
    return ensureInitialized().decodeJson<ColorSchema>(json);
  }
}

mixin ColorSchemaMappable {
  String toJson() {
    return ColorSchemaMapper.ensureInitialized()
        .encodeJson<ColorSchema>(this as ColorSchema);
  }

  Map<String, dynamic> toMap() {
    return ColorSchemaMapper.ensureInitialized()
        .encodeMap<ColorSchema>(this as ColorSchema);
  }

  ColorSchemaCopyWith<ColorSchema, ColorSchema, ColorSchema> get copyWith =>
      _ColorSchemaCopyWithImpl(this as ColorSchema, $identity, $identity);
  @override
  String toString() {
    return ColorSchemaMapper.ensureInitialized()
        .stringifyValue(this as ColorSchema);
  }

  @override
  bool operator ==(Object other) {
    return ColorSchemaMapper.ensureInitialized()
        .equalsValue(this as ColorSchema, other);
  }

  @override
  int get hashCode {
    return ColorSchemaMapper.ensureInitialized().hashValue(this as ColorSchema);
  }
}

extension ColorSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ColorSchema, $Out> {
  ColorSchemaCopyWith<$R, ColorSchema, $Out> get $asColorSchema =>
      $base.as((v, t, t2) => _ColorSchemaCopyWithImpl(v, t, t2));
}

abstract class ColorSchemaCopyWith<$R, $In extends ColorSchema, $Out>
    implements SchemaCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties;
  @override
  $R call(
      {List<String>? requiredProperties, String? description, bool? nullable});
  ColorSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ColorSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ColorSchema, $Out>
    implements ColorSchemaCopyWith<$R, ColorSchema, $Out> {
  _ColorSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ColorSchema> $mapper =
      ColorSchemaMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties => $value.requiredProperties != null
          ? ListCopyWith(
              $value.requiredProperties!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(requiredProperties: v))
          : null;
  @override
  $R call(
          {Object? requiredProperties = $none,
          Object? description = $none,
          bool? nullable}) =>
      $apply(FieldCopyWithData({
        if (requiredProperties != $none)
          #requiredProperties: requiredProperties,
        if (description != $none) #description: description,
        if (nullable != null) #nullable: nullable
      }));
  @override
  ColorSchema $make(CopyWithData data) => ColorSchema(
      requiredProperties:
          data.get(#requiredProperties, or: $value.requiredProperties),
      description: data.get(#description, or: $value.description),
      nullable: data.get(#nullable, or: $value.nullable));

  @override
  ColorSchemaCopyWith<$R2, ColorSchema, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ColorSchemaCopyWithImpl($value, $cast, t);
}

class ColorFilterSchemaMapper extends SubClassMapperBase<ColorFilterSchema> {
  ColorFilterSchemaMapper._();

  static ColorFilterSchemaMapper? _instance;
  static ColorFilterSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ColorFilterSchemaMapper._());
      SchemaMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ColorFilterSchema';

  static List<String>? _$requiredProperties(ColorFilterSchema v) =>
      v.requiredProperties;
  static const Field<ColorFilterSchema, List<String>> _f$requiredProperties =
      Field('requiredProperties', _$requiredProperties, opt: true);
  static String? _$description(ColorFilterSchema v) => v.description;
  static const Field<ColorFilterSchema, String> _f$description =
      Field('description', _$description, opt: true);
  static bool _$nullable(ColorFilterSchema v) => v.nullable;
  static const Field<ColorFilterSchema, bool> _f$nullable =
      Field('nullable', _$nullable, opt: true, def: true);
  static String? _$ref(ColorFilterSchema v) => v.ref;
  static const Field<ColorFilterSchema, String> _f$ref =
      Field('ref', _$ref, mode: FieldMode.member);
  static Map<String, Schema>? _$schemas(ColorFilterSchema v) => v.schemas;
  static const Field<ColorFilterSchema, Map<String, Schema>> _f$schemas =
      Field('schemas', _$schemas, mode: FieldMode.member);
  static DataType? _$type(ColorFilterSchema v) => v.type;
  static const Field<ColorFilterSchema, DataType> _f$type =
      Field('type', _$type, mode: FieldMode.member);
  static String? _$format(ColorFilterSchema v) => v.format;
  static const Field<ColorFilterSchema, String> _f$format =
      Field('format', _$format, mode: FieldMode.member);
  static DiscriminatorSchema? _$discriminator(ColorFilterSchema v) =>
      v.discriminator;
  static const Field<ColorFilterSchema, DiscriminatorSchema> _f$discriminator =
      Field('discriminator', _$discriminator, mode: FieldMode.member);
  static List<String>? _$enumValues(ColorFilterSchema v) => v.enumValues;
  static const Field<ColorFilterSchema, List<String>> _f$enumValues =
      Field('enumValues', _$enumValues, mode: FieldMode.member);
  static Schema? _$items(ColorFilterSchema v) => v.items;
  static const Field<ColorFilterSchema, Schema> _f$items =
      Field('items', _$items, mode: FieldMode.member);
  static Map<String, Schema>? _$properties(ColorFilterSchema v) => v.properties;
  static const Field<ColorFilterSchema, Map<String, Schema>> _f$properties =
      Field('properties', _$properties, mode: FieldMode.member);
  static List<Schema>? _$oneOf(ColorFilterSchema v) => v.oneOf;
  static const Field<ColorFilterSchema, List<Schema>> _f$oneOf =
      Field('oneOf', _$oneOf, mode: FieldMode.member);
  static List<Schema>? _$allOf(ColorFilterSchema v) => v.allOf;
  static const Field<ColorFilterSchema, List<Schema>> _f$allOf =
      Field('allOf', _$allOf, mode: FieldMode.member);
  static List<Schema>? _$anyOf(ColorFilterSchema v) => v.anyOf;
  static const Field<ColorFilterSchema, List<Schema>> _f$anyOf =
      Field('anyOf', _$anyOf, mode: FieldMode.member);

  @override
  final MappableFields<ColorFilterSchema> fields = const {
    #requiredProperties: _f$requiredProperties,
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
  };

  @override
  final String discriminatorKey = '_type';
  @override
  final dynamic discriminatorValue = 'color_filter';
  @override
  late final ClassMapperBase superMapper = SchemaMapper.ensureInitialized();

  static ColorFilterSchema _instantiate(DecodingData data) {
    return ColorFilterSchema(
        requiredProperties: data.dec(_f$requiredProperties),
        description: data.dec(_f$description),
        nullable: data.dec(_f$nullable));
  }

  @override
  final Function instantiate = _instantiate;

  static ColorFilterSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ColorFilterSchema>(map);
  }

  static ColorFilterSchema fromJson(String json) {
    return ensureInitialized().decodeJson<ColorFilterSchema>(json);
  }
}

mixin ColorFilterSchemaMappable {
  String toJson() {
    return ColorFilterSchemaMapper.ensureInitialized()
        .encodeJson<ColorFilterSchema>(this as ColorFilterSchema);
  }

  Map<String, dynamic> toMap() {
    return ColorFilterSchemaMapper.ensureInitialized()
        .encodeMap<ColorFilterSchema>(this as ColorFilterSchema);
  }

  ColorFilterSchemaCopyWith<ColorFilterSchema, ColorFilterSchema,
          ColorFilterSchema>
      get copyWith => _ColorFilterSchemaCopyWithImpl(
          this as ColorFilterSchema, $identity, $identity);
  @override
  String toString() {
    return ColorFilterSchemaMapper.ensureInitialized()
        .stringifyValue(this as ColorFilterSchema);
  }

  @override
  bool operator ==(Object other) {
    return ColorFilterSchemaMapper.ensureInitialized()
        .equalsValue(this as ColorFilterSchema, other);
  }

  @override
  int get hashCode {
    return ColorFilterSchemaMapper.ensureInitialized()
        .hashValue(this as ColorFilterSchema);
  }
}

extension ColorFilterSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ColorFilterSchema, $Out> {
  ColorFilterSchemaCopyWith<$R, ColorFilterSchema, $Out>
      get $asColorFilterSchema =>
          $base.as((v, t, t2) => _ColorFilterSchemaCopyWithImpl(v, t, t2));
}

abstract class ColorFilterSchemaCopyWith<$R, $In extends ColorFilterSchema,
    $Out> implements SchemaCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties;
  @override
  $R call(
      {List<String>? requiredProperties, String? description, bool? nullable});
  ColorFilterSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ColorFilterSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ColorFilterSchema, $Out>
    implements ColorFilterSchemaCopyWith<$R, ColorFilterSchema, $Out> {
  _ColorFilterSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ColorFilterSchema> $mapper =
      ColorFilterSchemaMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties => $value.requiredProperties != null
          ? ListCopyWith(
              $value.requiredProperties!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(requiredProperties: v))
          : null;
  @override
  $R call(
          {Object? requiredProperties = $none,
          Object? description = $none,
          bool? nullable}) =>
      $apply(FieldCopyWithData({
        if (requiredProperties != $none)
          #requiredProperties: requiredProperties,
        if (description != $none) #description: description,
        if (nullable != null) #nullable: nullable
      }));
  @override
  ColorFilterSchema $make(CopyWithData data) => ColorFilterSchema(
      requiredProperties:
          data.get(#requiredProperties, or: $value.requiredProperties),
      description: data.get(#description, or: $value.description),
      nullable: data.get(#nullable, or: $value.nullable));

  @override
  ColorFilterSchemaCopyWith<$R2, ColorFilterSchema, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ColorFilterSchemaCopyWithImpl($value, $cast, t);
}

class ColorMatrixSchemaMapper extends SubClassMapperBase<ColorMatrixSchema> {
  ColorMatrixSchemaMapper._();

  static ColorMatrixSchemaMapper? _instance;
  static ColorMatrixSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ColorMatrixSchemaMapper._());
      SchemaMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ColorMatrixSchema';

  static List<String>? _$requiredProperties(ColorMatrixSchema v) =>
      v.requiredProperties;
  static const Field<ColorMatrixSchema, List<String>> _f$requiredProperties =
      Field('requiredProperties', _$requiredProperties, opt: true);
  static String? _$description(ColorMatrixSchema v) => v.description;
  static const Field<ColorMatrixSchema, String> _f$description =
      Field('description', _$description, opt: true);
  static bool _$nullable(ColorMatrixSchema v) => v.nullable;
  static const Field<ColorMatrixSchema, bool> _f$nullable =
      Field('nullable', _$nullable, opt: true, def: true);
  static String? _$ref(ColorMatrixSchema v) => v.ref;
  static const Field<ColorMatrixSchema, String> _f$ref =
      Field('ref', _$ref, mode: FieldMode.member);
  static Map<String, Schema>? _$schemas(ColorMatrixSchema v) => v.schemas;
  static const Field<ColorMatrixSchema, Map<String, Schema>> _f$schemas =
      Field('schemas', _$schemas, mode: FieldMode.member);
  static DataType? _$type(ColorMatrixSchema v) => v.type;
  static const Field<ColorMatrixSchema, DataType> _f$type =
      Field('type', _$type, mode: FieldMode.member);
  static String? _$format(ColorMatrixSchema v) => v.format;
  static const Field<ColorMatrixSchema, String> _f$format =
      Field('format', _$format, mode: FieldMode.member);
  static DiscriminatorSchema? _$discriminator(ColorMatrixSchema v) =>
      v.discriminator;
  static const Field<ColorMatrixSchema, DiscriminatorSchema> _f$discriminator =
      Field('discriminator', _$discriminator, mode: FieldMode.member);
  static List<String>? _$enumValues(ColorMatrixSchema v) => v.enumValues;
  static const Field<ColorMatrixSchema, List<String>> _f$enumValues =
      Field('enumValues', _$enumValues, mode: FieldMode.member);
  static Schema? _$items(ColorMatrixSchema v) => v.items;
  static const Field<ColorMatrixSchema, Schema> _f$items =
      Field('items', _$items, mode: FieldMode.member);
  static Map<String, Schema>? _$properties(ColorMatrixSchema v) => v.properties;
  static const Field<ColorMatrixSchema, Map<String, Schema>> _f$properties =
      Field('properties', _$properties, mode: FieldMode.member);
  static List<Schema>? _$oneOf(ColorMatrixSchema v) => v.oneOf;
  static const Field<ColorMatrixSchema, List<Schema>> _f$oneOf =
      Field('oneOf', _$oneOf, mode: FieldMode.member);
  static List<Schema>? _$allOf(ColorMatrixSchema v) => v.allOf;
  static const Field<ColorMatrixSchema, List<Schema>> _f$allOf =
      Field('allOf', _$allOf, mode: FieldMode.member);
  static List<Schema>? _$anyOf(ColorMatrixSchema v) => v.anyOf;
  static const Field<ColorMatrixSchema, List<Schema>> _f$anyOf =
      Field('anyOf', _$anyOf, mode: FieldMode.member);

  @override
  final MappableFields<ColorMatrixSchema> fields = const {
    #requiredProperties: _f$requiredProperties,
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
  };

  @override
  final String discriminatorKey = '_type';
  @override
  final dynamic discriminatorValue = 'color_matrix';
  @override
  late final ClassMapperBase superMapper = SchemaMapper.ensureInitialized();

  static ColorMatrixSchema _instantiate(DecodingData data) {
    return ColorMatrixSchema(
        requiredProperties: data.dec(_f$requiredProperties),
        description: data.dec(_f$description),
        nullable: data.dec(_f$nullable));
  }

  @override
  final Function instantiate = _instantiate;

  static ColorMatrixSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ColorMatrixSchema>(map);
  }

  static ColorMatrixSchema fromJson(String json) {
    return ensureInitialized().decodeJson<ColorMatrixSchema>(json);
  }
}

mixin ColorMatrixSchemaMappable {
  String toJson() {
    return ColorMatrixSchemaMapper.ensureInitialized()
        .encodeJson<ColorMatrixSchema>(this as ColorMatrixSchema);
  }

  Map<String, dynamic> toMap() {
    return ColorMatrixSchemaMapper.ensureInitialized()
        .encodeMap<ColorMatrixSchema>(this as ColorMatrixSchema);
  }

  ColorMatrixSchemaCopyWith<ColorMatrixSchema, ColorMatrixSchema,
          ColorMatrixSchema>
      get copyWith => _ColorMatrixSchemaCopyWithImpl(
          this as ColorMatrixSchema, $identity, $identity);
  @override
  String toString() {
    return ColorMatrixSchemaMapper.ensureInitialized()
        .stringifyValue(this as ColorMatrixSchema);
  }

  @override
  bool operator ==(Object other) {
    return ColorMatrixSchemaMapper.ensureInitialized()
        .equalsValue(this as ColorMatrixSchema, other);
  }

  @override
  int get hashCode {
    return ColorMatrixSchemaMapper.ensureInitialized()
        .hashValue(this as ColorMatrixSchema);
  }
}

extension ColorMatrixSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ColorMatrixSchema, $Out> {
  ColorMatrixSchemaCopyWith<$R, ColorMatrixSchema, $Out>
      get $asColorMatrixSchema =>
          $base.as((v, t, t2) => _ColorMatrixSchemaCopyWithImpl(v, t, t2));
}

abstract class ColorMatrixSchemaCopyWith<$R, $In extends ColorMatrixSchema,
    $Out> implements SchemaCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties;
  @override
  $R call(
      {List<String>? requiredProperties, String? description, bool? nullable});
  ColorMatrixSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ColorMatrixSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ColorMatrixSchema, $Out>
    implements ColorMatrixSchemaCopyWith<$R, ColorMatrixSchema, $Out> {
  _ColorMatrixSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ColorMatrixSchema> $mapper =
      ColorMatrixSchemaMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties => $value.requiredProperties != null
          ? ListCopyWith(
              $value.requiredProperties!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(requiredProperties: v))
          : null;
  @override
  $R call(
          {Object? requiredProperties = $none,
          Object? description = $none,
          bool? nullable}) =>
      $apply(FieldCopyWithData({
        if (requiredProperties != $none)
          #requiredProperties: requiredProperties,
        if (description != $none) #description: description,
        if (nullable != null) #nullable: nullable
      }));
  @override
  ColorMatrixSchema $make(CopyWithData data) => ColorMatrixSchema(
      requiredProperties:
          data.get(#requiredProperties, or: $value.requiredProperties),
      description: data.get(#description, or: $value.description),
      nullable: data.get(#nullable, or: $value.nullable));

  @override
  ColorMatrixSchemaCopyWith<$R2, ColorMatrixSchema, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ColorMatrixSchemaCopyWithImpl($value, $cast, t);
}

class ColorOrBlackSchemaMapper extends SubClassMapperBase<ColorOrBlackSchema> {
  ColorOrBlackSchemaMapper._();

  static ColorOrBlackSchemaMapper? _instance;
  static ColorOrBlackSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ColorOrBlackSchemaMapper._());
      SchemaMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ColorOrBlackSchema';

  static List<String>? _$requiredProperties(ColorOrBlackSchema v) =>
      v.requiredProperties;
  static const Field<ColorOrBlackSchema, List<String>> _f$requiredProperties =
      Field('requiredProperties', _$requiredProperties, opt: true);
  static String? _$description(ColorOrBlackSchema v) => v.description;
  static const Field<ColorOrBlackSchema, String> _f$description =
      Field('description', _$description, opt: true);
  static bool _$nullable(ColorOrBlackSchema v) => v.nullable;
  static const Field<ColorOrBlackSchema, bool> _f$nullable =
      Field('nullable', _$nullable, opt: true, def: true);
  static String? _$ref(ColorOrBlackSchema v) => v.ref;
  static const Field<ColorOrBlackSchema, String> _f$ref =
      Field('ref', _$ref, mode: FieldMode.member);
  static Map<String, Schema>? _$schemas(ColorOrBlackSchema v) => v.schemas;
  static const Field<ColorOrBlackSchema, Map<String, Schema>> _f$schemas =
      Field('schemas', _$schemas, mode: FieldMode.member);
  static DataType? _$type(ColorOrBlackSchema v) => v.type;
  static const Field<ColorOrBlackSchema, DataType> _f$type =
      Field('type', _$type, mode: FieldMode.member);
  static String? _$format(ColorOrBlackSchema v) => v.format;
  static const Field<ColorOrBlackSchema, String> _f$format =
      Field('format', _$format, mode: FieldMode.member);
  static DiscriminatorSchema? _$discriminator(ColorOrBlackSchema v) =>
      v.discriminator;
  static const Field<ColorOrBlackSchema, DiscriminatorSchema> _f$discriminator =
      Field('discriminator', _$discriminator, mode: FieldMode.member);
  static List<String>? _$enumValues(ColorOrBlackSchema v) => v.enumValues;
  static const Field<ColorOrBlackSchema, List<String>> _f$enumValues =
      Field('enumValues', _$enumValues, mode: FieldMode.member);
  static Schema? _$items(ColorOrBlackSchema v) => v.items;
  static const Field<ColorOrBlackSchema, Schema> _f$items =
      Field('items', _$items, mode: FieldMode.member);
  static Map<String, Schema>? _$properties(ColorOrBlackSchema v) =>
      v.properties;
  static const Field<ColorOrBlackSchema, Map<String, Schema>> _f$properties =
      Field('properties', _$properties, mode: FieldMode.member);
  static List<Schema>? _$oneOf(ColorOrBlackSchema v) => v.oneOf;
  static const Field<ColorOrBlackSchema, List<Schema>> _f$oneOf =
      Field('oneOf', _$oneOf, mode: FieldMode.member);
  static List<Schema>? _$allOf(ColorOrBlackSchema v) => v.allOf;
  static const Field<ColorOrBlackSchema, List<Schema>> _f$allOf =
      Field('allOf', _$allOf, mode: FieldMode.member);
  static List<Schema>? _$anyOf(ColorOrBlackSchema v) => v.anyOf;
  static const Field<ColorOrBlackSchema, List<Schema>> _f$anyOf =
      Field('anyOf', _$anyOf, mode: FieldMode.member);

  @override
  final MappableFields<ColorOrBlackSchema> fields = const {
    #requiredProperties: _f$requiredProperties,
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
  };

  @override
  final String discriminatorKey = '_type';
  @override
  final dynamic discriminatorValue = 'color_or_black';
  @override
  late final ClassMapperBase superMapper = SchemaMapper.ensureInitialized();

  static ColorOrBlackSchema _instantiate(DecodingData data) {
    return ColorOrBlackSchema(
        requiredProperties: data.dec(_f$requiredProperties),
        description: data.dec(_f$description),
        nullable: data.dec(_f$nullable));
  }

  @override
  final Function instantiate = _instantiate;

  static ColorOrBlackSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ColorOrBlackSchema>(map);
  }

  static ColorOrBlackSchema fromJson(String json) {
    return ensureInitialized().decodeJson<ColorOrBlackSchema>(json);
  }
}

mixin ColorOrBlackSchemaMappable {
  String toJson() {
    return ColorOrBlackSchemaMapper.ensureInitialized()
        .encodeJson<ColorOrBlackSchema>(this as ColorOrBlackSchema);
  }

  Map<String, dynamic> toMap() {
    return ColorOrBlackSchemaMapper.ensureInitialized()
        .encodeMap<ColorOrBlackSchema>(this as ColorOrBlackSchema);
  }

  ColorOrBlackSchemaCopyWith<ColorOrBlackSchema, ColorOrBlackSchema,
          ColorOrBlackSchema>
      get copyWith => _ColorOrBlackSchemaCopyWithImpl(
          this as ColorOrBlackSchema, $identity, $identity);
  @override
  String toString() {
    return ColorOrBlackSchemaMapper.ensureInitialized()
        .stringifyValue(this as ColorOrBlackSchema);
  }

  @override
  bool operator ==(Object other) {
    return ColorOrBlackSchemaMapper.ensureInitialized()
        .equalsValue(this as ColorOrBlackSchema, other);
  }

  @override
  int get hashCode {
    return ColorOrBlackSchemaMapper.ensureInitialized()
        .hashValue(this as ColorOrBlackSchema);
  }
}

extension ColorOrBlackSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ColorOrBlackSchema, $Out> {
  ColorOrBlackSchemaCopyWith<$R, ColorOrBlackSchema, $Out>
      get $asColorOrBlackSchema =>
          $base.as((v, t, t2) => _ColorOrBlackSchemaCopyWithImpl(v, t, t2));
}

abstract class ColorOrBlackSchemaCopyWith<$R, $In extends ColorOrBlackSchema,
    $Out> implements SchemaCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties;
  @override
  $R call(
      {List<String>? requiredProperties, String? description, bool? nullable});
  ColorOrBlackSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ColorOrBlackSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ColorOrBlackSchema, $Out>
    implements ColorOrBlackSchemaCopyWith<$R, ColorOrBlackSchema, $Out> {
  _ColorOrBlackSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ColorOrBlackSchema> $mapper =
      ColorOrBlackSchemaMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties => $value.requiredProperties != null
          ? ListCopyWith(
              $value.requiredProperties!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(requiredProperties: v))
          : null;
  @override
  $R call(
          {Object? requiredProperties = $none,
          Object? description = $none,
          bool? nullable}) =>
      $apply(FieldCopyWithData({
        if (requiredProperties != $none)
          #requiredProperties: requiredProperties,
        if (description != $none) #description: description,
        if (nullable != null) #nullable: nullable
      }));
  @override
  ColorOrBlackSchema $make(CopyWithData data) => ColorOrBlackSchema(
      requiredProperties:
          data.get(#requiredProperties, or: $value.requiredProperties),
      description: data.get(#description, or: $value.description),
      nullable: data.get(#nullable, or: $value.nullable));

  @override
  ColorOrBlackSchemaCopyWith<$R2, ColorOrBlackSchema, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ColorOrBlackSchemaCopyWithImpl($value, $cast, t);
}

class CurveSchemaMapper extends SubClassMapperBase<CurveSchema> {
  CurveSchemaMapper._();

  static CurveSchemaMapper? _instance;
  static CurveSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CurveSchemaMapper._());
      SchemaMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'CurveSchema';

  static List<String>? _$requiredProperties(CurveSchema v) =>
      v.requiredProperties;
  static const Field<CurveSchema, List<String>> _f$requiredProperties =
      Field('requiredProperties', _$requiredProperties, opt: true);
  static String? _$description(CurveSchema v) => v.description;
  static const Field<CurveSchema, String> _f$description =
      Field('description', _$description, opt: true);
  static bool _$nullable(CurveSchema v) => v.nullable;
  static const Field<CurveSchema, bool> _f$nullable =
      Field('nullable', _$nullable, opt: true, def: true);
  static String? _$ref(CurveSchema v) => v.ref;
  static const Field<CurveSchema, String> _f$ref =
      Field('ref', _$ref, mode: FieldMode.member);
  static Map<String, Schema>? _$schemas(CurveSchema v) => v.schemas;
  static const Field<CurveSchema, Map<String, Schema>> _f$schemas =
      Field('schemas', _$schemas, mode: FieldMode.member);
  static DataType? _$type(CurveSchema v) => v.type;
  static const Field<CurveSchema, DataType> _f$type =
      Field('type', _$type, mode: FieldMode.member);
  static String? _$format(CurveSchema v) => v.format;
  static const Field<CurveSchema, String> _f$format =
      Field('format', _$format, mode: FieldMode.member);
  static DiscriminatorSchema? _$discriminator(CurveSchema v) => v.discriminator;
  static const Field<CurveSchema, DiscriminatorSchema> _f$discriminator =
      Field('discriminator', _$discriminator, mode: FieldMode.member);
  static List<String>? _$enumValues(CurveSchema v) => v.enumValues;
  static const Field<CurveSchema, List<String>> _f$enumValues =
      Field('enumValues', _$enumValues, mode: FieldMode.member);
  static Schema? _$items(CurveSchema v) => v.items;
  static const Field<CurveSchema, Schema> _f$items =
      Field('items', _$items, mode: FieldMode.member);
  static Map<String, Schema>? _$properties(CurveSchema v) => v.properties;
  static const Field<CurveSchema, Map<String, Schema>> _f$properties =
      Field('properties', _$properties, mode: FieldMode.member);
  static List<Schema>? _$oneOf(CurveSchema v) => v.oneOf;
  static const Field<CurveSchema, List<Schema>> _f$oneOf =
      Field('oneOf', _$oneOf, mode: FieldMode.member);
  static List<Schema>? _$allOf(CurveSchema v) => v.allOf;
  static const Field<CurveSchema, List<Schema>> _f$allOf =
      Field('allOf', _$allOf, mode: FieldMode.member);
  static List<Schema>? _$anyOf(CurveSchema v) => v.anyOf;
  static const Field<CurveSchema, List<Schema>> _f$anyOf =
      Field('anyOf', _$anyOf, mode: FieldMode.member);

  @override
  final MappableFields<CurveSchema> fields = const {
    #requiredProperties: _f$requiredProperties,
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
  };

  @override
  final String discriminatorKey = '_type';
  @override
  final dynamic discriminatorValue = 'curve';
  @override
  late final ClassMapperBase superMapper = SchemaMapper.ensureInitialized();

  static CurveSchema _instantiate(DecodingData data) {
    return CurveSchema(
        requiredProperties: data.dec(_f$requiredProperties),
        description: data.dec(_f$description),
        nullable: data.dec(_f$nullable));
  }

  @override
  final Function instantiate = _instantiate;

  static CurveSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CurveSchema>(map);
  }

  static CurveSchema fromJson(String json) {
    return ensureInitialized().decodeJson<CurveSchema>(json);
  }
}

mixin CurveSchemaMappable {
  String toJson() {
    return CurveSchemaMapper.ensureInitialized()
        .encodeJson<CurveSchema>(this as CurveSchema);
  }

  Map<String, dynamic> toMap() {
    return CurveSchemaMapper.ensureInitialized()
        .encodeMap<CurveSchema>(this as CurveSchema);
  }

  CurveSchemaCopyWith<CurveSchema, CurveSchema, CurveSchema> get copyWith =>
      _CurveSchemaCopyWithImpl(this as CurveSchema, $identity, $identity);
  @override
  String toString() {
    return CurveSchemaMapper.ensureInitialized()
        .stringifyValue(this as CurveSchema);
  }

  @override
  bool operator ==(Object other) {
    return CurveSchemaMapper.ensureInitialized()
        .equalsValue(this as CurveSchema, other);
  }

  @override
  int get hashCode {
    return CurveSchemaMapper.ensureInitialized().hashValue(this as CurveSchema);
  }
}

extension CurveSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CurveSchema, $Out> {
  CurveSchemaCopyWith<$R, CurveSchema, $Out> get $asCurveSchema =>
      $base.as((v, t, t2) => _CurveSchemaCopyWithImpl(v, t, t2));
}

abstract class CurveSchemaCopyWith<$R, $In extends CurveSchema, $Out>
    implements SchemaCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties;
  @override
  $R call(
      {List<String>? requiredProperties, String? description, bool? nullable});
  CurveSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _CurveSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CurveSchema, $Out>
    implements CurveSchemaCopyWith<$R, CurveSchema, $Out> {
  _CurveSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CurveSchema> $mapper =
      CurveSchemaMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties => $value.requiredProperties != null
          ? ListCopyWith(
              $value.requiredProperties!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(requiredProperties: v))
          : null;
  @override
  $R call(
          {Object? requiredProperties = $none,
          Object? description = $none,
          bool? nullable}) =>
      $apply(FieldCopyWithData({
        if (requiredProperties != $none)
          #requiredProperties: requiredProperties,
        if (description != $none) #description: description,
        if (nullable != null) #nullable: nullable
      }));
  @override
  CurveSchema $make(CopyWithData data) => CurveSchema(
      requiredProperties:
          data.get(#requiredProperties, or: $value.requiredProperties),
      description: data.get(#description, or: $value.description),
      nullable: data.get(#nullable, or: $value.nullable));

  @override
  CurveSchemaCopyWith<$R2, CurveSchema, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _CurveSchemaCopyWithImpl($value, $cast, t);
}

class DecorationSchemaMapper extends SubClassMapperBase<DecorationSchema> {
  DecorationSchemaMapper._();

  static DecorationSchemaMapper? _instance;
  static DecorationSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DecorationSchemaMapper._());
      SchemaMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'DecorationSchema';

  static List<String>? _$requiredProperties(DecorationSchema v) =>
      v.requiredProperties;
  static const Field<DecorationSchema, List<String>> _f$requiredProperties =
      Field('requiredProperties', _$requiredProperties, opt: true);
  static String? _$description(DecorationSchema v) => v.description;
  static const Field<DecorationSchema, String> _f$description =
      Field('description', _$description, opt: true);
  static bool _$nullable(DecorationSchema v) => v.nullable;
  static const Field<DecorationSchema, bool> _f$nullable =
      Field('nullable', _$nullable, opt: true, def: true);
  static String? _$ref(DecorationSchema v) => v.ref;
  static const Field<DecorationSchema, String> _f$ref =
      Field('ref', _$ref, mode: FieldMode.member);
  static Map<String, Schema>? _$schemas(DecorationSchema v) => v.schemas;
  static const Field<DecorationSchema, Map<String, Schema>> _f$schemas =
      Field('schemas', _$schemas, mode: FieldMode.member);
  static DataType? _$type(DecorationSchema v) => v.type;
  static const Field<DecorationSchema, DataType> _f$type =
      Field('type', _$type, mode: FieldMode.member);
  static String? _$format(DecorationSchema v) => v.format;
  static const Field<DecorationSchema, String> _f$format =
      Field('format', _$format, mode: FieldMode.member);
  static DiscriminatorSchema? _$discriminator(DecorationSchema v) =>
      v.discriminator;
  static const Field<DecorationSchema, DiscriminatorSchema> _f$discriminator =
      Field('discriminator', _$discriminator, mode: FieldMode.member);
  static List<String>? _$enumValues(DecorationSchema v) => v.enumValues;
  static const Field<DecorationSchema, List<String>> _f$enumValues =
      Field('enumValues', _$enumValues, mode: FieldMode.member);
  static Schema? _$items(DecorationSchema v) => v.items;
  static const Field<DecorationSchema, Schema> _f$items =
      Field('items', _$items, mode: FieldMode.member);
  static Map<String, Schema>? _$properties(DecorationSchema v) => v.properties;
  static const Field<DecorationSchema, Map<String, Schema>> _f$properties =
      Field('properties', _$properties, mode: FieldMode.member);
  static List<Schema>? _$oneOf(DecorationSchema v) => v.oneOf;
  static const Field<DecorationSchema, List<Schema>> _f$oneOf =
      Field('oneOf', _$oneOf, mode: FieldMode.member);
  static List<Schema>? _$allOf(DecorationSchema v) => v.allOf;
  static const Field<DecorationSchema, List<Schema>> _f$allOf =
      Field('allOf', _$allOf, mode: FieldMode.member);
  static List<Schema>? _$anyOf(DecorationSchema v) => v.anyOf;
  static const Field<DecorationSchema, List<Schema>> _f$anyOf =
      Field('anyOf', _$anyOf, mode: FieldMode.member);

  @override
  final MappableFields<DecorationSchema> fields = const {
    #requiredProperties: _f$requiredProperties,
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
  };

  @override
  final String discriminatorKey = '_type';
  @override
  final dynamic discriminatorValue = 'decoration';
  @override
  late final ClassMapperBase superMapper = SchemaMapper.ensureInitialized();

  static DecorationSchema _instantiate(DecodingData data) {
    return DecorationSchema(
        requiredProperties: data.dec(_f$requiredProperties),
        description: data.dec(_f$description),
        nullable: data.dec(_f$nullable));
  }

  @override
  final Function instantiate = _instantiate;

  static DecorationSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DecorationSchema>(map);
  }

  static DecorationSchema fromJson(String json) {
    return ensureInitialized().decodeJson<DecorationSchema>(json);
  }
}

mixin DecorationSchemaMappable {
  String toJson() {
    return DecorationSchemaMapper.ensureInitialized()
        .encodeJson<DecorationSchema>(this as DecorationSchema);
  }

  Map<String, dynamic> toMap() {
    return DecorationSchemaMapper.ensureInitialized()
        .encodeMap<DecorationSchema>(this as DecorationSchema);
  }

  DecorationSchemaCopyWith<DecorationSchema, DecorationSchema, DecorationSchema>
      get copyWith => _DecorationSchemaCopyWithImpl(
          this as DecorationSchema, $identity, $identity);
  @override
  String toString() {
    return DecorationSchemaMapper.ensureInitialized()
        .stringifyValue(this as DecorationSchema);
  }

  @override
  bool operator ==(Object other) {
    return DecorationSchemaMapper.ensureInitialized()
        .equalsValue(this as DecorationSchema, other);
  }

  @override
  int get hashCode {
    return DecorationSchemaMapper.ensureInitialized()
        .hashValue(this as DecorationSchema);
  }
}

extension DecorationSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DecorationSchema, $Out> {
  DecorationSchemaCopyWith<$R, DecorationSchema, $Out>
      get $asDecorationSchema =>
          $base.as((v, t, t2) => _DecorationSchemaCopyWithImpl(v, t, t2));
}

abstract class DecorationSchemaCopyWith<$R, $In extends DecorationSchema, $Out>
    implements SchemaCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties;
  @override
  $R call(
      {List<String>? requiredProperties, String? description, bool? nullable});
  DecorationSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _DecorationSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DecorationSchema, $Out>
    implements DecorationSchemaCopyWith<$R, DecorationSchema, $Out> {
  _DecorationSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DecorationSchema> $mapper =
      DecorationSchemaMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties => $value.requiredProperties != null
          ? ListCopyWith(
              $value.requiredProperties!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(requiredProperties: v))
          : null;
  @override
  $R call(
          {Object? requiredProperties = $none,
          Object? description = $none,
          bool? nullable}) =>
      $apply(FieldCopyWithData({
        if (requiredProperties != $none)
          #requiredProperties: requiredProperties,
        if (description != $none) #description: description,
        if (nullable != null) #nullable: nullable
      }));
  @override
  DecorationSchema $make(CopyWithData data) => DecorationSchema(
      requiredProperties:
          data.get(#requiredProperties, or: $value.requiredProperties),
      description: data.get(#description, or: $value.description),
      nullable: data.get(#nullable, or: $value.nullable));

  @override
  DecorationSchemaCopyWith<$R2, DecorationSchema, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _DecorationSchemaCopyWithImpl($value, $cast, t);
}

class DecorationImageSchemaMapper
    extends SubClassMapperBase<DecorationImageSchema> {
  DecorationImageSchemaMapper._();

  static DecorationImageSchemaMapper? _instance;
  static DecorationImageSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DecorationImageSchemaMapper._());
      SchemaMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'DecorationImageSchema';

  static List<String>? _$requiredProperties(DecorationImageSchema v) =>
      v.requiredProperties;
  static const Field<DecorationImageSchema, List<String>>
      _f$requiredProperties =
      Field('requiredProperties', _$requiredProperties, opt: true);
  static String? _$description(DecorationImageSchema v) => v.description;
  static const Field<DecorationImageSchema, String> _f$description =
      Field('description', _$description, opt: true);
  static bool _$nullable(DecorationImageSchema v) => v.nullable;
  static const Field<DecorationImageSchema, bool> _f$nullable =
      Field('nullable', _$nullable, opt: true, def: true);
  static String? _$ref(DecorationImageSchema v) => v.ref;
  static const Field<DecorationImageSchema, String> _f$ref =
      Field('ref', _$ref, mode: FieldMode.member);
  static Map<String, Schema>? _$schemas(DecorationImageSchema v) => v.schemas;
  static const Field<DecorationImageSchema, Map<String, Schema>> _f$schemas =
      Field('schemas', _$schemas, mode: FieldMode.member);
  static DataType? _$type(DecorationImageSchema v) => v.type;
  static const Field<DecorationImageSchema, DataType> _f$type =
      Field('type', _$type, mode: FieldMode.member);
  static String? _$format(DecorationImageSchema v) => v.format;
  static const Field<DecorationImageSchema, String> _f$format =
      Field('format', _$format, mode: FieldMode.member);
  static DiscriminatorSchema? _$discriminator(DecorationImageSchema v) =>
      v.discriminator;
  static const Field<DecorationImageSchema, DiscriminatorSchema>
      _f$discriminator =
      Field('discriminator', _$discriminator, mode: FieldMode.member);
  static List<String>? _$enumValues(DecorationImageSchema v) => v.enumValues;
  static const Field<DecorationImageSchema, List<String>> _f$enumValues =
      Field('enumValues', _$enumValues, mode: FieldMode.member);
  static Schema? _$items(DecorationImageSchema v) => v.items;
  static const Field<DecorationImageSchema, Schema> _f$items =
      Field('items', _$items, mode: FieldMode.member);
  static Map<String, Schema>? _$properties(DecorationImageSchema v) =>
      v.properties;
  static const Field<DecorationImageSchema, Map<String, Schema>> _f$properties =
      Field('properties', _$properties, mode: FieldMode.member);
  static List<Schema>? _$oneOf(DecorationImageSchema v) => v.oneOf;
  static const Field<DecorationImageSchema, List<Schema>> _f$oneOf =
      Field('oneOf', _$oneOf, mode: FieldMode.member);
  static List<Schema>? _$allOf(DecorationImageSchema v) => v.allOf;
  static const Field<DecorationImageSchema, List<Schema>> _f$allOf =
      Field('allOf', _$allOf, mode: FieldMode.member);
  static List<Schema>? _$anyOf(DecorationImageSchema v) => v.anyOf;
  static const Field<DecorationImageSchema, List<Schema>> _f$anyOf =
      Field('anyOf', _$anyOf, mode: FieldMode.member);

  @override
  final MappableFields<DecorationImageSchema> fields = const {
    #requiredProperties: _f$requiredProperties,
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
  };

  @override
  final String discriminatorKey = '_type';
  @override
  final dynamic discriminatorValue = 'decoration_image';
  @override
  late final ClassMapperBase superMapper = SchemaMapper.ensureInitialized();

  static DecorationImageSchema _instantiate(DecodingData data) {
    return DecorationImageSchema(
        requiredProperties: data.dec(_f$requiredProperties),
        description: data.dec(_f$description),
        nullable: data.dec(_f$nullable));
  }

  @override
  final Function instantiate = _instantiate;

  static DecorationImageSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DecorationImageSchema>(map);
  }

  static DecorationImageSchema fromJson(String json) {
    return ensureInitialized().decodeJson<DecorationImageSchema>(json);
  }
}

mixin DecorationImageSchemaMappable {
  String toJson() {
    return DecorationImageSchemaMapper.ensureInitialized()
        .encodeJson<DecorationImageSchema>(this as DecorationImageSchema);
  }

  Map<String, dynamic> toMap() {
    return DecorationImageSchemaMapper.ensureInitialized()
        .encodeMap<DecorationImageSchema>(this as DecorationImageSchema);
  }

  DecorationImageSchemaCopyWith<DecorationImageSchema, DecorationImageSchema,
          DecorationImageSchema>
      get copyWith => _DecorationImageSchemaCopyWithImpl(
          this as DecorationImageSchema, $identity, $identity);
  @override
  String toString() {
    return DecorationImageSchemaMapper.ensureInitialized()
        .stringifyValue(this as DecorationImageSchema);
  }

  @override
  bool operator ==(Object other) {
    return DecorationImageSchemaMapper.ensureInitialized()
        .equalsValue(this as DecorationImageSchema, other);
  }

  @override
  int get hashCode {
    return DecorationImageSchemaMapper.ensureInitialized()
        .hashValue(this as DecorationImageSchema);
  }
}

extension DecorationImageSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DecorationImageSchema, $Out> {
  DecorationImageSchemaCopyWith<$R, DecorationImageSchema, $Out>
      get $asDecorationImageSchema =>
          $base.as((v, t, t2) => _DecorationImageSchemaCopyWithImpl(v, t, t2));
}

abstract class DecorationImageSchemaCopyWith<
    $R,
    $In extends DecorationImageSchema,
    $Out> implements SchemaCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties;
  @override
  $R call(
      {List<String>? requiredProperties, String? description, bool? nullable});
  DecorationImageSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _DecorationImageSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DecorationImageSchema, $Out>
    implements DecorationImageSchemaCopyWith<$R, DecorationImageSchema, $Out> {
  _DecorationImageSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DecorationImageSchema> $mapper =
      DecorationImageSchemaMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties => $value.requiredProperties != null
          ? ListCopyWith(
              $value.requiredProperties!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(requiredProperties: v))
          : null;
  @override
  $R call(
          {Object? requiredProperties = $none,
          Object? description = $none,
          bool? nullable}) =>
      $apply(FieldCopyWithData({
        if (requiredProperties != $none)
          #requiredProperties: requiredProperties,
        if (description != $none) #description: description,
        if (nullable != null) #nullable: nullable
      }));
  @override
  DecorationImageSchema $make(CopyWithData data) => DecorationImageSchema(
      requiredProperties:
          data.get(#requiredProperties, or: $value.requiredProperties),
      description: data.get(#description, or: $value.description),
      nullable: data.get(#nullable, or: $value.nullable));

  @override
  DecorationImageSchemaCopyWith<$R2, DecorationImageSchema, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _DecorationImageSchemaCopyWithImpl($value, $cast, t);
}

class DoubleOrZeroSchemaMapper extends SubClassMapperBase<DoubleOrZeroSchema> {
  DoubleOrZeroSchemaMapper._();

  static DoubleOrZeroSchemaMapper? _instance;
  static DoubleOrZeroSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DoubleOrZeroSchemaMapper._());
      SchemaMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'DoubleOrZeroSchema';

  static List<String>? _$requiredProperties(DoubleOrZeroSchema v) =>
      v.requiredProperties;
  static const Field<DoubleOrZeroSchema, List<String>> _f$requiredProperties =
      Field('requiredProperties', _$requiredProperties, opt: true);
  static String? _$description(DoubleOrZeroSchema v) => v.description;
  static const Field<DoubleOrZeroSchema, String> _f$description =
      Field('description', _$description, opt: true);
  static bool _$nullable(DoubleOrZeroSchema v) => v.nullable;
  static const Field<DoubleOrZeroSchema, bool> _f$nullable =
      Field('nullable', _$nullable, opt: true, def: true);
  static String? _$ref(DoubleOrZeroSchema v) => v.ref;
  static const Field<DoubleOrZeroSchema, String> _f$ref =
      Field('ref', _$ref, mode: FieldMode.member);
  static Map<String, Schema>? _$schemas(DoubleOrZeroSchema v) => v.schemas;
  static const Field<DoubleOrZeroSchema, Map<String, Schema>> _f$schemas =
      Field('schemas', _$schemas, mode: FieldMode.member);
  static DataType? _$type(DoubleOrZeroSchema v) => v.type;
  static const Field<DoubleOrZeroSchema, DataType> _f$type =
      Field('type', _$type, mode: FieldMode.member);
  static String? _$format(DoubleOrZeroSchema v) => v.format;
  static const Field<DoubleOrZeroSchema, String> _f$format =
      Field('format', _$format, mode: FieldMode.member);
  static DiscriminatorSchema? _$discriminator(DoubleOrZeroSchema v) =>
      v.discriminator;
  static const Field<DoubleOrZeroSchema, DiscriminatorSchema> _f$discriminator =
      Field('discriminator', _$discriminator, mode: FieldMode.member);
  static List<String>? _$enumValues(DoubleOrZeroSchema v) => v.enumValues;
  static const Field<DoubleOrZeroSchema, List<String>> _f$enumValues =
      Field('enumValues', _$enumValues, mode: FieldMode.member);
  static Schema? _$items(DoubleOrZeroSchema v) => v.items;
  static const Field<DoubleOrZeroSchema, Schema> _f$items =
      Field('items', _$items, mode: FieldMode.member);
  static Map<String, Schema>? _$properties(DoubleOrZeroSchema v) =>
      v.properties;
  static const Field<DoubleOrZeroSchema, Map<String, Schema>> _f$properties =
      Field('properties', _$properties, mode: FieldMode.member);
  static List<Schema>? _$oneOf(DoubleOrZeroSchema v) => v.oneOf;
  static const Field<DoubleOrZeroSchema, List<Schema>> _f$oneOf =
      Field('oneOf', _$oneOf, mode: FieldMode.member);
  static List<Schema>? _$allOf(DoubleOrZeroSchema v) => v.allOf;
  static const Field<DoubleOrZeroSchema, List<Schema>> _f$allOf =
      Field('allOf', _$allOf, mode: FieldMode.member);
  static List<Schema>? _$anyOf(DoubleOrZeroSchema v) => v.anyOf;
  static const Field<DoubleOrZeroSchema, List<Schema>> _f$anyOf =
      Field('anyOf', _$anyOf, mode: FieldMode.member);

  @override
  final MappableFields<DoubleOrZeroSchema> fields = const {
    #requiredProperties: _f$requiredProperties,
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
  };

  @override
  final String discriminatorKey = '_type';
  @override
  final dynamic discriminatorValue = 'double_or_zero';
  @override
  late final ClassMapperBase superMapper = SchemaMapper.ensureInitialized();

  static DoubleOrZeroSchema _instantiate(DecodingData data) {
    return DoubleOrZeroSchema(
        requiredProperties: data.dec(_f$requiredProperties),
        description: data.dec(_f$description),
        nullable: data.dec(_f$nullable));
  }

  @override
  final Function instantiate = _instantiate;

  static DoubleOrZeroSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DoubleOrZeroSchema>(map);
  }

  static DoubleOrZeroSchema fromJson(String json) {
    return ensureInitialized().decodeJson<DoubleOrZeroSchema>(json);
  }
}

mixin DoubleOrZeroSchemaMappable {
  String toJson() {
    return DoubleOrZeroSchemaMapper.ensureInitialized()
        .encodeJson<DoubleOrZeroSchema>(this as DoubleOrZeroSchema);
  }

  Map<String, dynamic> toMap() {
    return DoubleOrZeroSchemaMapper.ensureInitialized()
        .encodeMap<DoubleOrZeroSchema>(this as DoubleOrZeroSchema);
  }

  DoubleOrZeroSchemaCopyWith<DoubleOrZeroSchema, DoubleOrZeroSchema,
          DoubleOrZeroSchema>
      get copyWith => _DoubleOrZeroSchemaCopyWithImpl(
          this as DoubleOrZeroSchema, $identity, $identity);
  @override
  String toString() {
    return DoubleOrZeroSchemaMapper.ensureInitialized()
        .stringifyValue(this as DoubleOrZeroSchema);
  }

  @override
  bool operator ==(Object other) {
    return DoubleOrZeroSchemaMapper.ensureInitialized()
        .equalsValue(this as DoubleOrZeroSchema, other);
  }

  @override
  int get hashCode {
    return DoubleOrZeroSchemaMapper.ensureInitialized()
        .hashValue(this as DoubleOrZeroSchema);
  }
}

extension DoubleOrZeroSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DoubleOrZeroSchema, $Out> {
  DoubleOrZeroSchemaCopyWith<$R, DoubleOrZeroSchema, $Out>
      get $asDoubleOrZeroSchema =>
          $base.as((v, t, t2) => _DoubleOrZeroSchemaCopyWithImpl(v, t, t2));
}

abstract class DoubleOrZeroSchemaCopyWith<$R, $In extends DoubleOrZeroSchema,
    $Out> implements SchemaCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties;
  @override
  $R call(
      {List<String>? requiredProperties, String? description, bool? nullable});
  DoubleOrZeroSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _DoubleOrZeroSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DoubleOrZeroSchema, $Out>
    implements DoubleOrZeroSchemaCopyWith<$R, DoubleOrZeroSchema, $Out> {
  _DoubleOrZeroSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DoubleOrZeroSchema> $mapper =
      DoubleOrZeroSchemaMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties => $value.requiredProperties != null
          ? ListCopyWith(
              $value.requiredProperties!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(requiredProperties: v))
          : null;
  @override
  $R call(
          {Object? requiredProperties = $none,
          Object? description = $none,
          bool? nullable}) =>
      $apply(FieldCopyWithData({
        if (requiredProperties != $none)
          #requiredProperties: requiredProperties,
        if (description != $none) #description: description,
        if (nullable != null) #nullable: nullable
      }));
  @override
  DoubleOrZeroSchema $make(CopyWithData data) => DoubleOrZeroSchema(
      requiredProperties:
          data.get(#requiredProperties, or: $value.requiredProperties),
      description: data.get(#description, or: $value.description),
      nullable: data.get(#nullable, or: $value.nullable));

  @override
  DoubleOrZeroSchemaCopyWith<$R2, DoubleOrZeroSchema, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _DoubleOrZeroSchemaCopyWithImpl($value, $cast, t);
}

class DurationSchemaMapper extends SubClassMapperBase<DurationSchema> {
  DurationSchemaMapper._();

  static DurationSchemaMapper? _instance;
  static DurationSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DurationSchemaMapper._());
      SchemaMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'DurationSchema';

  static List<String>? _$requiredProperties(DurationSchema v) =>
      v.requiredProperties;
  static const Field<DurationSchema, List<String>> _f$requiredProperties =
      Field('requiredProperties', _$requiredProperties, opt: true);
  static String? _$description(DurationSchema v) => v.description;
  static const Field<DurationSchema, String> _f$description =
      Field('description', _$description, opt: true);
  static bool _$nullable(DurationSchema v) => v.nullable;
  static const Field<DurationSchema, bool> _f$nullable =
      Field('nullable', _$nullable, opt: true, def: true);
  static String? _$ref(DurationSchema v) => v.ref;
  static const Field<DurationSchema, String> _f$ref =
      Field('ref', _$ref, mode: FieldMode.member);
  static Map<String, Schema>? _$schemas(DurationSchema v) => v.schemas;
  static const Field<DurationSchema, Map<String, Schema>> _f$schemas =
      Field('schemas', _$schemas, mode: FieldMode.member);
  static DataType? _$type(DurationSchema v) => v.type;
  static const Field<DurationSchema, DataType> _f$type =
      Field('type', _$type, mode: FieldMode.member);
  static String? _$format(DurationSchema v) => v.format;
  static const Field<DurationSchema, String> _f$format =
      Field('format', _$format, mode: FieldMode.member);
  static DiscriminatorSchema? _$discriminator(DurationSchema v) =>
      v.discriminator;
  static const Field<DurationSchema, DiscriminatorSchema> _f$discriminator =
      Field('discriminator', _$discriminator, mode: FieldMode.member);
  static List<String>? _$enumValues(DurationSchema v) => v.enumValues;
  static const Field<DurationSchema, List<String>> _f$enumValues =
      Field('enumValues', _$enumValues, mode: FieldMode.member);
  static Schema? _$items(DurationSchema v) => v.items;
  static const Field<DurationSchema, Schema> _f$items =
      Field('items', _$items, mode: FieldMode.member);
  static Map<String, Schema>? _$properties(DurationSchema v) => v.properties;
  static const Field<DurationSchema, Map<String, Schema>> _f$properties =
      Field('properties', _$properties, mode: FieldMode.member);
  static List<Schema>? _$oneOf(DurationSchema v) => v.oneOf;
  static const Field<DurationSchema, List<Schema>> _f$oneOf =
      Field('oneOf', _$oneOf, mode: FieldMode.member);
  static List<Schema>? _$allOf(DurationSchema v) => v.allOf;
  static const Field<DurationSchema, List<Schema>> _f$allOf =
      Field('allOf', _$allOf, mode: FieldMode.member);
  static List<Schema>? _$anyOf(DurationSchema v) => v.anyOf;
  static const Field<DurationSchema, List<Schema>> _f$anyOf =
      Field('anyOf', _$anyOf, mode: FieldMode.member);

  @override
  final MappableFields<DurationSchema> fields = const {
    #requiredProperties: _f$requiredProperties,
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
  };

  @override
  final String discriminatorKey = '_type';
  @override
  final dynamic discriminatorValue = 'duration';
  @override
  late final ClassMapperBase superMapper = SchemaMapper.ensureInitialized();

  static DurationSchema _instantiate(DecodingData data) {
    return DurationSchema(
        requiredProperties: data.dec(_f$requiredProperties),
        description: data.dec(_f$description),
        nullable: data.dec(_f$nullable));
  }

  @override
  final Function instantiate = _instantiate;

  static DurationSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DurationSchema>(map);
  }

  static DurationSchema fromJson(String json) {
    return ensureInitialized().decodeJson<DurationSchema>(json);
  }
}

mixin DurationSchemaMappable {
  String toJson() {
    return DurationSchemaMapper.ensureInitialized()
        .encodeJson<DurationSchema>(this as DurationSchema);
  }

  Map<String, dynamic> toMap() {
    return DurationSchemaMapper.ensureInitialized()
        .encodeMap<DurationSchema>(this as DurationSchema);
  }

  DurationSchemaCopyWith<DurationSchema, DurationSchema, DurationSchema>
      get copyWith => _DurationSchemaCopyWithImpl(
          this as DurationSchema, $identity, $identity);
  @override
  String toString() {
    return DurationSchemaMapper.ensureInitialized()
        .stringifyValue(this as DurationSchema);
  }

  @override
  bool operator ==(Object other) {
    return DurationSchemaMapper.ensureInitialized()
        .equalsValue(this as DurationSchema, other);
  }

  @override
  int get hashCode {
    return DurationSchemaMapper.ensureInitialized()
        .hashValue(this as DurationSchema);
  }
}

extension DurationSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DurationSchema, $Out> {
  DurationSchemaCopyWith<$R, DurationSchema, $Out> get $asDurationSchema =>
      $base.as((v, t, t2) => _DurationSchemaCopyWithImpl(v, t, t2));
}

abstract class DurationSchemaCopyWith<$R, $In extends DurationSchema, $Out>
    implements SchemaCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties;
  @override
  $R call(
      {List<String>? requiredProperties, String? description, bool? nullable});
  DurationSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _DurationSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DurationSchema, $Out>
    implements DurationSchemaCopyWith<$R, DurationSchema, $Out> {
  _DurationSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DurationSchema> $mapper =
      DurationSchemaMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties => $value.requiredProperties != null
          ? ListCopyWith(
              $value.requiredProperties!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(requiredProperties: v))
          : null;
  @override
  $R call(
          {Object? requiredProperties = $none,
          Object? description = $none,
          bool? nullable}) =>
      $apply(FieldCopyWithData({
        if (requiredProperties != $none)
          #requiredProperties: requiredProperties,
        if (description != $none) #description: description,
        if (nullable != null) #nullable: nullable
      }));
  @override
  DurationSchema $make(CopyWithData data) => DurationSchema(
      requiredProperties:
          data.get(#requiredProperties, or: $value.requiredProperties),
      description: data.get(#description, or: $value.description),
      nullable: data.get(#nullable, or: $value.nullable));

  @override
  DurationSchemaCopyWith<$R2, DurationSchema, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _DurationSchemaCopyWithImpl($value, $cast, t);
}

class EdgeInsetsGeometrySchemaMapper
    extends SubClassMapperBase<EdgeInsetsGeometrySchema> {
  EdgeInsetsGeometrySchemaMapper._();

  static EdgeInsetsGeometrySchemaMapper? _instance;
  static EdgeInsetsGeometrySchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = EdgeInsetsGeometrySchemaMapper._());
      SchemaMapper.ensureInitialized().addSubMapper(_instance!);
      SchemaMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'EdgeInsetsGeometrySchema';

  static List<String>? _$requiredProperties(EdgeInsetsGeometrySchema v) =>
      v.requiredProperties;
  static const Field<EdgeInsetsGeometrySchema, List<String>>
      _f$requiredProperties =
      Field('requiredProperties', _$requiredProperties, opt: true);
  static String? _$description(EdgeInsetsGeometrySchema v) => v.description;
  static const Field<EdgeInsetsGeometrySchema, String> _f$description =
      Field('description', _$description, opt: true);
  static bool _$nullable(EdgeInsetsGeometrySchema v) => v.nullable;
  static const Field<EdgeInsetsGeometrySchema, bool> _f$nullable =
      Field('nullable', _$nullable, opt: true, def: true);
  static Map<String, Schema>? _$properties(EdgeInsetsGeometrySchema v) =>
      v.properties;
  static const Field<EdgeInsetsGeometrySchema, Map<String, Schema>>
      _f$properties = Field('properties', _$properties, opt: true);
  static String? _$ref(EdgeInsetsGeometrySchema v) => v.ref;
  static const Field<EdgeInsetsGeometrySchema, String> _f$ref =
      Field('ref', _$ref, mode: FieldMode.member);
  static Map<String, Schema>? _$schemas(EdgeInsetsGeometrySchema v) =>
      v.schemas;
  static const Field<EdgeInsetsGeometrySchema, Map<String, Schema>> _f$schemas =
      Field('schemas', _$schemas, mode: FieldMode.member);
  static DataType? _$type(EdgeInsetsGeometrySchema v) => v.type;
  static const Field<EdgeInsetsGeometrySchema, DataType> _f$type =
      Field('type', _$type, mode: FieldMode.member);
  static String? _$format(EdgeInsetsGeometrySchema v) => v.format;
  static const Field<EdgeInsetsGeometrySchema, String> _f$format =
      Field('format', _$format, mode: FieldMode.member);
  static DiscriminatorSchema? _$discriminator(EdgeInsetsGeometrySchema v) =>
      v.discriminator;
  static const Field<EdgeInsetsGeometrySchema, DiscriminatorSchema>
      _f$discriminator =
      Field('discriminator', _$discriminator, mode: FieldMode.member);
  static List<String>? _$enumValues(EdgeInsetsGeometrySchema v) => v.enumValues;
  static const Field<EdgeInsetsGeometrySchema, List<String>> _f$enumValues =
      Field('enumValues', _$enumValues, mode: FieldMode.member);
  static Schema? _$items(EdgeInsetsGeometrySchema v) => v.items;
  static const Field<EdgeInsetsGeometrySchema, Schema> _f$items =
      Field('items', _$items, mode: FieldMode.member);
  static List<Schema>? _$oneOf(EdgeInsetsGeometrySchema v) => v.oneOf;
  static const Field<EdgeInsetsGeometrySchema, List<Schema>> _f$oneOf =
      Field('oneOf', _$oneOf, mode: FieldMode.member);
  static List<Schema>? _$allOf(EdgeInsetsGeometrySchema v) => v.allOf;
  static const Field<EdgeInsetsGeometrySchema, List<Schema>> _f$allOf =
      Field('allOf', _$allOf, mode: FieldMode.member);
  static List<Schema>? _$anyOf(EdgeInsetsGeometrySchema v) => v.anyOf;
  static const Field<EdgeInsetsGeometrySchema, List<Schema>> _f$anyOf =
      Field('anyOf', _$anyOf, mode: FieldMode.member);

  @override
  final MappableFields<EdgeInsetsGeometrySchema> fields = const {
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
  final dynamic discriminatorValue = 'edge_insets_geometry';
  @override
  late final ClassMapperBase superMapper = SchemaMapper.ensureInitialized();

  static EdgeInsetsGeometrySchema _instantiate(DecodingData data) {
    return EdgeInsetsGeometrySchema(
        requiredProperties: data.dec(_f$requiredProperties),
        description: data.dec(_f$description),
        nullable: data.dec(_f$nullable),
        properties: data.dec(_f$properties));
  }

  @override
  final Function instantiate = _instantiate;

  static EdgeInsetsGeometrySchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EdgeInsetsGeometrySchema>(map);
  }

  static EdgeInsetsGeometrySchema fromJson(String json) {
    return ensureInitialized().decodeJson<EdgeInsetsGeometrySchema>(json);
  }
}

mixin EdgeInsetsGeometrySchemaMappable {
  String toJson() {
    return EdgeInsetsGeometrySchemaMapper.ensureInitialized()
        .encodeJson<EdgeInsetsGeometrySchema>(this as EdgeInsetsGeometrySchema);
  }

  Map<String, dynamic> toMap() {
    return EdgeInsetsGeometrySchemaMapper.ensureInitialized()
        .encodeMap<EdgeInsetsGeometrySchema>(this as EdgeInsetsGeometrySchema);
  }

  EdgeInsetsGeometrySchemaCopyWith<EdgeInsetsGeometrySchema,
          EdgeInsetsGeometrySchema, EdgeInsetsGeometrySchema>
      get copyWith => _EdgeInsetsGeometrySchemaCopyWithImpl(
          this as EdgeInsetsGeometrySchema, $identity, $identity);
  @override
  String toString() {
    return EdgeInsetsGeometrySchemaMapper.ensureInitialized()
        .stringifyValue(this as EdgeInsetsGeometrySchema);
  }

  @override
  bool operator ==(Object other) {
    return EdgeInsetsGeometrySchemaMapper.ensureInitialized()
        .equalsValue(this as EdgeInsetsGeometrySchema, other);
  }

  @override
  int get hashCode {
    return EdgeInsetsGeometrySchemaMapper.ensureInitialized()
        .hashValue(this as EdgeInsetsGeometrySchema);
  }
}

extension EdgeInsetsGeometrySchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, EdgeInsetsGeometrySchema, $Out> {
  EdgeInsetsGeometrySchemaCopyWith<$R, EdgeInsetsGeometrySchema, $Out>
      get $asEdgeInsetsGeometrySchema => $base
          .as((v, t, t2) => _EdgeInsetsGeometrySchemaCopyWithImpl(v, t, t2));
}

abstract class EdgeInsetsGeometrySchemaCopyWith<
    $R,
    $In extends EdgeInsetsGeometrySchema,
    $Out> implements SchemaCopyWith<$R, $In, $Out> {
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
      Map<String, Schema>? properties});
  EdgeInsetsGeometrySchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _EdgeInsetsGeometrySchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EdgeInsetsGeometrySchema, $Out>
    implements
        EdgeInsetsGeometrySchemaCopyWith<$R, EdgeInsetsGeometrySchema, $Out> {
  _EdgeInsetsGeometrySchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EdgeInsetsGeometrySchema> $mapper =
      EdgeInsetsGeometrySchemaMapper.ensureInitialized();
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
          Object? properties = $none}) =>
      $apply(FieldCopyWithData({
        if (requiredProperties != $none)
          #requiredProperties: requiredProperties,
        if (description != $none) #description: description,
        if (nullable != null) #nullable: nullable,
        if (properties != $none) #properties: properties
      }));
  @override
  EdgeInsetsGeometrySchema $make(CopyWithData data) => EdgeInsetsGeometrySchema(
      requiredProperties:
          data.get(#requiredProperties, or: $value.requiredProperties),
      description: data.get(#description, or: $value.description),
      nullable: data.get(#nullable, or: $value.nullable),
      properties: data.get(#properties, or: $value.properties));

  @override
  EdgeInsetsGeometrySchemaCopyWith<$R2, EdgeInsetsGeometrySchema, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _EdgeInsetsGeometrySchemaCopyWithImpl($value, $cast, t);
}

class FontFeatureSchemaMapper extends SubClassMapperBase<FontFeatureSchema> {
  FontFeatureSchemaMapper._();

  static FontFeatureSchemaMapper? _instance;
  static FontFeatureSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FontFeatureSchemaMapper._());
      SchemaMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'FontFeatureSchema';

  static List<String>? _$requiredProperties(FontFeatureSchema v) =>
      v.requiredProperties;
  static const Field<FontFeatureSchema, List<String>> _f$requiredProperties =
      Field('requiredProperties', _$requiredProperties, opt: true);
  static String? _$description(FontFeatureSchema v) => v.description;
  static const Field<FontFeatureSchema, String> _f$description =
      Field('description', _$description, opt: true);
  static bool _$nullable(FontFeatureSchema v) => v.nullable;
  static const Field<FontFeatureSchema, bool> _f$nullable =
      Field('nullable', _$nullable, opt: true, def: true);
  static String? _$ref(FontFeatureSchema v) => v.ref;
  static const Field<FontFeatureSchema, String> _f$ref =
      Field('ref', _$ref, mode: FieldMode.member);
  static Map<String, Schema>? _$schemas(FontFeatureSchema v) => v.schemas;
  static const Field<FontFeatureSchema, Map<String, Schema>> _f$schemas =
      Field('schemas', _$schemas, mode: FieldMode.member);
  static DataType? _$type(FontFeatureSchema v) => v.type;
  static const Field<FontFeatureSchema, DataType> _f$type =
      Field('type', _$type, mode: FieldMode.member);
  static String? _$format(FontFeatureSchema v) => v.format;
  static const Field<FontFeatureSchema, String> _f$format =
      Field('format', _$format, mode: FieldMode.member);
  static DiscriminatorSchema? _$discriminator(FontFeatureSchema v) =>
      v.discriminator;
  static const Field<FontFeatureSchema, DiscriminatorSchema> _f$discriminator =
      Field('discriminator', _$discriminator, mode: FieldMode.member);
  static List<String>? _$enumValues(FontFeatureSchema v) => v.enumValues;
  static const Field<FontFeatureSchema, List<String>> _f$enumValues =
      Field('enumValues', _$enumValues, mode: FieldMode.member);
  static Schema? _$items(FontFeatureSchema v) => v.items;
  static const Field<FontFeatureSchema, Schema> _f$items =
      Field('items', _$items, mode: FieldMode.member);
  static Map<String, Schema>? _$properties(FontFeatureSchema v) => v.properties;
  static const Field<FontFeatureSchema, Map<String, Schema>> _f$properties =
      Field('properties', _$properties, mode: FieldMode.member);
  static List<Schema>? _$oneOf(FontFeatureSchema v) => v.oneOf;
  static const Field<FontFeatureSchema, List<Schema>> _f$oneOf =
      Field('oneOf', _$oneOf, mode: FieldMode.member);
  static List<Schema>? _$allOf(FontFeatureSchema v) => v.allOf;
  static const Field<FontFeatureSchema, List<Schema>> _f$allOf =
      Field('allOf', _$allOf, mode: FieldMode.member);
  static List<Schema>? _$anyOf(FontFeatureSchema v) => v.anyOf;
  static const Field<FontFeatureSchema, List<Schema>> _f$anyOf =
      Field('anyOf', _$anyOf, mode: FieldMode.member);

  @override
  final MappableFields<FontFeatureSchema> fields = const {
    #requiredProperties: _f$requiredProperties,
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
  };

  @override
  final String discriminatorKey = '_type';
  @override
  final dynamic discriminatorValue = 'font_feature';
  @override
  late final ClassMapperBase superMapper = SchemaMapper.ensureInitialized();

  static FontFeatureSchema _instantiate(DecodingData data) {
    return FontFeatureSchema(
        requiredProperties: data.dec(_f$requiredProperties),
        description: data.dec(_f$description),
        nullable: data.dec(_f$nullable));
  }

  @override
  final Function instantiate = _instantiate;

  static FontFeatureSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<FontFeatureSchema>(map);
  }

  static FontFeatureSchema fromJson(String json) {
    return ensureInitialized().decodeJson<FontFeatureSchema>(json);
  }
}

mixin FontFeatureSchemaMappable {
  String toJson() {
    return FontFeatureSchemaMapper.ensureInitialized()
        .encodeJson<FontFeatureSchema>(this as FontFeatureSchema);
  }

  Map<String, dynamic> toMap() {
    return FontFeatureSchemaMapper.ensureInitialized()
        .encodeMap<FontFeatureSchema>(this as FontFeatureSchema);
  }

  FontFeatureSchemaCopyWith<FontFeatureSchema, FontFeatureSchema,
          FontFeatureSchema>
      get copyWith => _FontFeatureSchemaCopyWithImpl(
          this as FontFeatureSchema, $identity, $identity);
  @override
  String toString() {
    return FontFeatureSchemaMapper.ensureInitialized()
        .stringifyValue(this as FontFeatureSchema);
  }

  @override
  bool operator ==(Object other) {
    return FontFeatureSchemaMapper.ensureInitialized()
        .equalsValue(this as FontFeatureSchema, other);
  }

  @override
  int get hashCode {
    return FontFeatureSchemaMapper.ensureInitialized()
        .hashValue(this as FontFeatureSchema);
  }
}

extension FontFeatureSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, FontFeatureSchema, $Out> {
  FontFeatureSchemaCopyWith<$R, FontFeatureSchema, $Out>
      get $asFontFeatureSchema =>
          $base.as((v, t, t2) => _FontFeatureSchemaCopyWithImpl(v, t, t2));
}

abstract class FontFeatureSchemaCopyWith<$R, $In extends FontFeatureSchema,
    $Out> implements SchemaCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties;
  @override
  $R call(
      {List<String>? requiredProperties, String? description, bool? nullable});
  FontFeatureSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _FontFeatureSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, FontFeatureSchema, $Out>
    implements FontFeatureSchemaCopyWith<$R, FontFeatureSchema, $Out> {
  _FontFeatureSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FontFeatureSchema> $mapper =
      FontFeatureSchemaMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties => $value.requiredProperties != null
          ? ListCopyWith(
              $value.requiredProperties!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(requiredProperties: v))
          : null;
  @override
  $R call(
          {Object? requiredProperties = $none,
          Object? description = $none,
          bool? nullable}) =>
      $apply(FieldCopyWithData({
        if (requiredProperties != $none)
          #requiredProperties: requiredProperties,
        if (description != $none) #description: description,
        if (nullable != null) #nullable: nullable
      }));
  @override
  FontFeatureSchema $make(CopyWithData data) => FontFeatureSchema(
      requiredProperties:
          data.get(#requiredProperties, or: $value.requiredProperties),
      description: data.get(#description, or: $value.description),
      nullable: data.get(#nullable, or: $value.nullable));

  @override
  FontFeatureSchemaCopyWith<$R2, FontFeatureSchema, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _FontFeatureSchemaCopyWithImpl($value, $cast, t);
}

class GradientSchemaMapper extends SubClassMapperBase<GradientSchema> {
  GradientSchemaMapper._();

  static GradientSchemaMapper? _instance;
  static GradientSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GradientSchemaMapper._());
      SchemaMapper.ensureInitialized().addSubMapper(_instance!);
      SchemaMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'GradientSchema';

  static List<String>? _$requiredProperties(GradientSchema v) =>
      v.requiredProperties;
  static const Field<GradientSchema, List<String>> _f$requiredProperties =
      Field('requiredProperties', _$requiredProperties, opt: true);
  static String? _$description(GradientSchema v) => v.description;
  static const Field<GradientSchema, String> _f$description =
      Field('description', _$description, opt: true);
  static bool _$nullable(GradientSchema v) => v.nullable;
  static const Field<GradientSchema, bool> _f$nullable =
      Field('nullable', _$nullable, opt: true, def: true);
  static Map<String, Schema>? _$properties(GradientSchema v) => v.properties;
  static const Field<GradientSchema, Map<String, Schema>> _f$properties =
      Field('properties', _$properties, opt: true);
  static String? _$ref(GradientSchema v) => v.ref;
  static const Field<GradientSchema, String> _f$ref =
      Field('ref', _$ref, mode: FieldMode.member);
  static Map<String, Schema>? _$schemas(GradientSchema v) => v.schemas;
  static const Field<GradientSchema, Map<String, Schema>> _f$schemas =
      Field('schemas', _$schemas, mode: FieldMode.member);
  static DataType? _$type(GradientSchema v) => v.type;
  static const Field<GradientSchema, DataType> _f$type =
      Field('type', _$type, mode: FieldMode.member);
  static String? _$format(GradientSchema v) => v.format;
  static const Field<GradientSchema, String> _f$format =
      Field('format', _$format, mode: FieldMode.member);
  static DiscriminatorSchema? _$discriminator(GradientSchema v) =>
      v.discriminator;
  static const Field<GradientSchema, DiscriminatorSchema> _f$discriminator =
      Field('discriminator', _$discriminator, mode: FieldMode.member);
  static List<String>? _$enumValues(GradientSchema v) => v.enumValues;
  static const Field<GradientSchema, List<String>> _f$enumValues =
      Field('enumValues', _$enumValues, mode: FieldMode.member);
  static Schema? _$items(GradientSchema v) => v.items;
  static const Field<GradientSchema, Schema> _f$items =
      Field('items', _$items, mode: FieldMode.member);
  static List<Schema>? _$oneOf(GradientSchema v) => v.oneOf;
  static const Field<GradientSchema, List<Schema>> _f$oneOf =
      Field('oneOf', _$oneOf, mode: FieldMode.member);
  static List<Schema>? _$allOf(GradientSchema v) => v.allOf;
  static const Field<GradientSchema, List<Schema>> _f$allOf =
      Field('allOf', _$allOf, mode: FieldMode.member);
  static List<Schema>? _$anyOf(GradientSchema v) => v.anyOf;
  static const Field<GradientSchema, List<Schema>> _f$anyOf =
      Field('anyOf', _$anyOf, mode: FieldMode.member);

  @override
  final MappableFields<GradientSchema> fields = const {
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
  final dynamic discriminatorValue = 'gradient';
  @override
  late final ClassMapperBase superMapper = SchemaMapper.ensureInitialized();

  static GradientSchema _instantiate(DecodingData data) {
    return GradientSchema(
        requiredProperties: data.dec(_f$requiredProperties),
        description: data.dec(_f$description),
        nullable: data.dec(_f$nullable),
        properties: data.dec(_f$properties));
  }

  @override
  final Function instantiate = _instantiate;

  static GradientSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GradientSchema>(map);
  }

  static GradientSchema fromJson(String json) {
    return ensureInitialized().decodeJson<GradientSchema>(json);
  }
}

mixin GradientSchemaMappable {
  String toJson() {
    return GradientSchemaMapper.ensureInitialized()
        .encodeJson<GradientSchema>(this as GradientSchema);
  }

  Map<String, dynamic> toMap() {
    return GradientSchemaMapper.ensureInitialized()
        .encodeMap<GradientSchema>(this as GradientSchema);
  }

  GradientSchemaCopyWith<GradientSchema, GradientSchema, GradientSchema>
      get copyWith => _GradientSchemaCopyWithImpl(
          this as GradientSchema, $identity, $identity);
  @override
  String toString() {
    return GradientSchemaMapper.ensureInitialized()
        .stringifyValue(this as GradientSchema);
  }

  @override
  bool operator ==(Object other) {
    return GradientSchemaMapper.ensureInitialized()
        .equalsValue(this as GradientSchema, other);
  }

  @override
  int get hashCode {
    return GradientSchemaMapper.ensureInitialized()
        .hashValue(this as GradientSchema);
  }
}

extension GradientSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GradientSchema, $Out> {
  GradientSchemaCopyWith<$R, GradientSchema, $Out> get $asGradientSchema =>
      $base.as((v, t, t2) => _GradientSchemaCopyWithImpl(v, t, t2));
}

abstract class GradientSchemaCopyWith<$R, $In extends GradientSchema, $Out>
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
      Map<String, Schema>? properties});
  GradientSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _GradientSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GradientSchema, $Out>
    implements GradientSchemaCopyWith<$R, GradientSchema, $Out> {
  _GradientSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GradientSchema> $mapper =
      GradientSchemaMapper.ensureInitialized();
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
          Object? properties = $none}) =>
      $apply(FieldCopyWithData({
        if (requiredProperties != $none)
          #requiredProperties: requiredProperties,
        if (description != $none) #description: description,
        if (nullable != null) #nullable: nullable,
        if (properties != $none) #properties: properties
      }));
  @override
  GradientSchema $make(CopyWithData data) => GradientSchema(
      requiredProperties:
          data.get(#requiredProperties, or: $value.requiredProperties),
      description: data.get(#description, or: $value.description),
      nullable: data.get(#nullable, or: $value.nullable),
      properties: data.get(#properties, or: $value.properties));

  @override
  GradientSchemaCopyWith<$R2, GradientSchema, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _GradientSchemaCopyWithImpl($value, $cast, t);
}

class GridDelegateSchemaMapper extends SubClassMapperBase<GridDelegateSchema> {
  GridDelegateSchemaMapper._();

  static GridDelegateSchemaMapper? _instance;
  static GridDelegateSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GridDelegateSchemaMapper._());
      SchemaMapper.ensureInitialized().addSubMapper(_instance!);
      SchemaMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'GridDelegateSchema';

  static List<String>? _$requiredProperties(GridDelegateSchema v) =>
      v.requiredProperties;
  static const Field<GridDelegateSchema, List<String>> _f$requiredProperties =
      Field('requiredProperties', _$requiredProperties, opt: true);
  static String? _$description(GridDelegateSchema v) => v.description;
  static const Field<GridDelegateSchema, String> _f$description =
      Field('description', _$description, opt: true);
  static bool _$nullable(GridDelegateSchema v) => v.nullable;
  static const Field<GridDelegateSchema, bool> _f$nullable =
      Field('nullable', _$nullable, opt: true, def: true);
  static Map<String, Schema>? _$properties(GridDelegateSchema v) =>
      v.properties;
  static const Field<GridDelegateSchema, Map<String, Schema>> _f$properties =
      Field('properties', _$properties, opt: true);
  static String? _$ref(GridDelegateSchema v) => v.ref;
  static const Field<GridDelegateSchema, String> _f$ref =
      Field('ref', _$ref, mode: FieldMode.member);
  static Map<String, Schema>? _$schemas(GridDelegateSchema v) => v.schemas;
  static const Field<GridDelegateSchema, Map<String, Schema>> _f$schemas =
      Field('schemas', _$schemas, mode: FieldMode.member);
  static DataType? _$type(GridDelegateSchema v) => v.type;
  static const Field<GridDelegateSchema, DataType> _f$type =
      Field('type', _$type, mode: FieldMode.member);
  static String? _$format(GridDelegateSchema v) => v.format;
  static const Field<GridDelegateSchema, String> _f$format =
      Field('format', _$format, mode: FieldMode.member);
  static DiscriminatorSchema? _$discriminator(GridDelegateSchema v) =>
      v.discriminator;
  static const Field<GridDelegateSchema, DiscriminatorSchema> _f$discriminator =
      Field('discriminator', _$discriminator, mode: FieldMode.member);
  static List<String>? _$enumValues(GridDelegateSchema v) => v.enumValues;
  static const Field<GridDelegateSchema, List<String>> _f$enumValues =
      Field('enumValues', _$enumValues, mode: FieldMode.member);
  static Schema? _$items(GridDelegateSchema v) => v.items;
  static const Field<GridDelegateSchema, Schema> _f$items =
      Field('items', _$items, mode: FieldMode.member);
  static List<Schema>? _$oneOf(GridDelegateSchema v) => v.oneOf;
  static const Field<GridDelegateSchema, List<Schema>> _f$oneOf =
      Field('oneOf', _$oneOf, mode: FieldMode.member);
  static List<Schema>? _$allOf(GridDelegateSchema v) => v.allOf;
  static const Field<GridDelegateSchema, List<Schema>> _f$allOf =
      Field('allOf', _$allOf, mode: FieldMode.member);
  static List<Schema>? _$anyOf(GridDelegateSchema v) => v.anyOf;
  static const Field<GridDelegateSchema, List<Schema>> _f$anyOf =
      Field('anyOf', _$anyOf, mode: FieldMode.member);

  @override
  final MappableFields<GridDelegateSchema> fields = const {
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
  final dynamic discriminatorValue = 'grid_delegate';
  @override
  late final ClassMapperBase superMapper = SchemaMapper.ensureInitialized();

  static GridDelegateSchema _instantiate(DecodingData data) {
    return GridDelegateSchema(
        requiredProperties: data.dec(_f$requiredProperties),
        description: data.dec(_f$description),
        nullable: data.dec(_f$nullable),
        properties: data.dec(_f$properties));
  }

  @override
  final Function instantiate = _instantiate;

  static GridDelegateSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GridDelegateSchema>(map);
  }

  static GridDelegateSchema fromJson(String json) {
    return ensureInitialized().decodeJson<GridDelegateSchema>(json);
  }
}

mixin GridDelegateSchemaMappable {
  String toJson() {
    return GridDelegateSchemaMapper.ensureInitialized()
        .encodeJson<GridDelegateSchema>(this as GridDelegateSchema);
  }

  Map<String, dynamic> toMap() {
    return GridDelegateSchemaMapper.ensureInitialized()
        .encodeMap<GridDelegateSchema>(this as GridDelegateSchema);
  }

  GridDelegateSchemaCopyWith<GridDelegateSchema, GridDelegateSchema,
          GridDelegateSchema>
      get copyWith => _GridDelegateSchemaCopyWithImpl(
          this as GridDelegateSchema, $identity, $identity);
  @override
  String toString() {
    return GridDelegateSchemaMapper.ensureInitialized()
        .stringifyValue(this as GridDelegateSchema);
  }

  @override
  bool operator ==(Object other) {
    return GridDelegateSchemaMapper.ensureInitialized()
        .equalsValue(this as GridDelegateSchema, other);
  }

  @override
  int get hashCode {
    return GridDelegateSchemaMapper.ensureInitialized()
        .hashValue(this as GridDelegateSchema);
  }
}

extension GridDelegateSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GridDelegateSchema, $Out> {
  GridDelegateSchemaCopyWith<$R, GridDelegateSchema, $Out>
      get $asGridDelegateSchema =>
          $base.as((v, t, t2) => _GridDelegateSchemaCopyWithImpl(v, t, t2));
}

abstract class GridDelegateSchemaCopyWith<$R, $In extends GridDelegateSchema,
    $Out> implements SchemaCopyWith<$R, $In, $Out> {
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
      Map<String, Schema>? properties});
  GridDelegateSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _GridDelegateSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GridDelegateSchema, $Out>
    implements GridDelegateSchemaCopyWith<$R, GridDelegateSchema, $Out> {
  _GridDelegateSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GridDelegateSchema> $mapper =
      GridDelegateSchemaMapper.ensureInitialized();
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
          Object? properties = $none}) =>
      $apply(FieldCopyWithData({
        if (requiredProperties != $none)
          #requiredProperties: requiredProperties,
        if (description != $none) #description: description,
        if (nullable != null) #nullable: nullable,
        if (properties != $none) #properties: properties
      }));
  @override
  GridDelegateSchema $make(CopyWithData data) => GridDelegateSchema(
      requiredProperties:
          data.get(#requiredProperties, or: $value.requiredProperties),
      description: data.get(#description, or: $value.description),
      nullable: data.get(#nullable, or: $value.nullable),
      properties: data.get(#properties, or: $value.properties));

  @override
  GridDelegateSchemaCopyWith<$R2, GridDelegateSchema, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _GridDelegateSchemaCopyWithImpl($value, $cast, t);
}

class IconDataSchemaMapper extends SubClassMapperBase<IconDataSchema> {
  IconDataSchemaMapper._();

  static IconDataSchemaMapper? _instance;
  static IconDataSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = IconDataSchemaMapper._());
      SchemaMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'IconDataSchema';

  static List<String>? _$requiredProperties(IconDataSchema v) =>
      v.requiredProperties;
  static const Field<IconDataSchema, List<String>> _f$requiredProperties =
      Field('requiredProperties', _$requiredProperties, opt: true);
  static String? _$description(IconDataSchema v) => v.description;
  static const Field<IconDataSchema, String> _f$description =
      Field('description', _$description, opt: true);
  static bool _$nullable(IconDataSchema v) => v.nullable;
  static const Field<IconDataSchema, bool> _f$nullable =
      Field('nullable', _$nullable, opt: true, def: true);
  static String? _$ref(IconDataSchema v) => v.ref;
  static const Field<IconDataSchema, String> _f$ref =
      Field('ref', _$ref, mode: FieldMode.member);
  static Map<String, Schema>? _$schemas(IconDataSchema v) => v.schemas;
  static const Field<IconDataSchema, Map<String, Schema>> _f$schemas =
      Field('schemas', _$schemas, mode: FieldMode.member);
  static DataType? _$type(IconDataSchema v) => v.type;
  static const Field<IconDataSchema, DataType> _f$type =
      Field('type', _$type, mode: FieldMode.member);
  static String? _$format(IconDataSchema v) => v.format;
  static const Field<IconDataSchema, String> _f$format =
      Field('format', _$format, mode: FieldMode.member);
  static DiscriminatorSchema? _$discriminator(IconDataSchema v) =>
      v.discriminator;
  static const Field<IconDataSchema, DiscriminatorSchema> _f$discriminator =
      Field('discriminator', _$discriminator, mode: FieldMode.member);
  static List<String>? _$enumValues(IconDataSchema v) => v.enumValues;
  static const Field<IconDataSchema, List<String>> _f$enumValues =
      Field('enumValues', _$enumValues, mode: FieldMode.member);
  static Schema? _$items(IconDataSchema v) => v.items;
  static const Field<IconDataSchema, Schema> _f$items =
      Field('items', _$items, mode: FieldMode.member);
  static Map<String, Schema>? _$properties(IconDataSchema v) => v.properties;
  static const Field<IconDataSchema, Map<String, Schema>> _f$properties =
      Field('properties', _$properties, mode: FieldMode.member);
  static List<Schema>? _$oneOf(IconDataSchema v) => v.oneOf;
  static const Field<IconDataSchema, List<Schema>> _f$oneOf =
      Field('oneOf', _$oneOf, mode: FieldMode.member);
  static List<Schema>? _$allOf(IconDataSchema v) => v.allOf;
  static const Field<IconDataSchema, List<Schema>> _f$allOf =
      Field('allOf', _$allOf, mode: FieldMode.member);
  static List<Schema>? _$anyOf(IconDataSchema v) => v.anyOf;
  static const Field<IconDataSchema, List<Schema>> _f$anyOf =
      Field('anyOf', _$anyOf, mode: FieldMode.member);

  @override
  final MappableFields<IconDataSchema> fields = const {
    #requiredProperties: _f$requiredProperties,
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
  };

  @override
  final String discriminatorKey = '_type';
  @override
  final dynamic discriminatorValue = 'icon_data';
  @override
  late final ClassMapperBase superMapper = SchemaMapper.ensureInitialized();

  static IconDataSchema _instantiate(DecodingData data) {
    return IconDataSchema(
        requiredProperties: data.dec(_f$requiredProperties),
        description: data.dec(_f$description),
        nullable: data.dec(_f$nullable));
  }

  @override
  final Function instantiate = _instantiate;

  static IconDataSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<IconDataSchema>(map);
  }

  static IconDataSchema fromJson(String json) {
    return ensureInitialized().decodeJson<IconDataSchema>(json);
  }
}

mixin IconDataSchemaMappable {
  String toJson() {
    return IconDataSchemaMapper.ensureInitialized()
        .encodeJson<IconDataSchema>(this as IconDataSchema);
  }

  Map<String, dynamic> toMap() {
    return IconDataSchemaMapper.ensureInitialized()
        .encodeMap<IconDataSchema>(this as IconDataSchema);
  }

  IconDataSchemaCopyWith<IconDataSchema, IconDataSchema, IconDataSchema>
      get copyWith => _IconDataSchemaCopyWithImpl(
          this as IconDataSchema, $identity, $identity);
  @override
  String toString() {
    return IconDataSchemaMapper.ensureInitialized()
        .stringifyValue(this as IconDataSchema);
  }

  @override
  bool operator ==(Object other) {
    return IconDataSchemaMapper.ensureInitialized()
        .equalsValue(this as IconDataSchema, other);
  }

  @override
  int get hashCode {
    return IconDataSchemaMapper.ensureInitialized()
        .hashValue(this as IconDataSchema);
  }
}

extension IconDataSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, IconDataSchema, $Out> {
  IconDataSchemaCopyWith<$R, IconDataSchema, $Out> get $asIconDataSchema =>
      $base.as((v, t, t2) => _IconDataSchemaCopyWithImpl(v, t, t2));
}

abstract class IconDataSchemaCopyWith<$R, $In extends IconDataSchema, $Out>
    implements SchemaCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties;
  @override
  $R call(
      {List<String>? requiredProperties, String? description, bool? nullable});
  IconDataSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _IconDataSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, IconDataSchema, $Out>
    implements IconDataSchemaCopyWith<$R, IconDataSchema, $Out> {
  _IconDataSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<IconDataSchema> $mapper =
      IconDataSchemaMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties => $value.requiredProperties != null
          ? ListCopyWith(
              $value.requiredProperties!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(requiredProperties: v))
          : null;
  @override
  $R call(
          {Object? requiredProperties = $none,
          Object? description = $none,
          bool? nullable}) =>
      $apply(FieldCopyWithData({
        if (requiredProperties != $none)
          #requiredProperties: requiredProperties,
        if (description != $none) #description: description,
        if (nullable != null) #nullable: nullable
      }));
  @override
  IconDataSchema $make(CopyWithData data) => IconDataSchema(
      requiredProperties:
          data.get(#requiredProperties, or: $value.requiredProperties),
      description: data.get(#description, or: $value.description),
      nullable: data.get(#nullable, or: $value.nullable));

  @override
  IconDataSchemaCopyWith<$R2, IconDataSchema, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _IconDataSchemaCopyWithImpl($value, $cast, t);
}

class IconThemeDataSchemaMapper
    extends SubClassMapperBase<IconThemeDataSchema> {
  IconThemeDataSchemaMapper._();

  static IconThemeDataSchemaMapper? _instance;
  static IconThemeDataSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = IconThemeDataSchemaMapper._());
      SchemaMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'IconThemeDataSchema';

  static List<String>? _$requiredProperties(IconThemeDataSchema v) =>
      v.requiredProperties;
  static const Field<IconThemeDataSchema, List<String>> _f$requiredProperties =
      Field('requiredProperties', _$requiredProperties, opt: true);
  static String? _$description(IconThemeDataSchema v) => v.description;
  static const Field<IconThemeDataSchema, String> _f$description =
      Field('description', _$description, opt: true);
  static bool _$nullable(IconThemeDataSchema v) => v.nullable;
  static const Field<IconThemeDataSchema, bool> _f$nullable =
      Field('nullable', _$nullable, opt: true, def: true);
  static String? _$ref(IconThemeDataSchema v) => v.ref;
  static const Field<IconThemeDataSchema, String> _f$ref =
      Field('ref', _$ref, mode: FieldMode.member);
  static Map<String, Schema>? _$schemas(IconThemeDataSchema v) => v.schemas;
  static const Field<IconThemeDataSchema, Map<String, Schema>> _f$schemas =
      Field('schemas', _$schemas, mode: FieldMode.member);
  static DataType? _$type(IconThemeDataSchema v) => v.type;
  static const Field<IconThemeDataSchema, DataType> _f$type =
      Field('type', _$type, mode: FieldMode.member);
  static String? _$format(IconThemeDataSchema v) => v.format;
  static const Field<IconThemeDataSchema, String> _f$format =
      Field('format', _$format, mode: FieldMode.member);
  static DiscriminatorSchema? _$discriminator(IconThemeDataSchema v) =>
      v.discriminator;
  static const Field<IconThemeDataSchema, DiscriminatorSchema>
      _f$discriminator =
      Field('discriminator', _$discriminator, mode: FieldMode.member);
  static List<String>? _$enumValues(IconThemeDataSchema v) => v.enumValues;
  static const Field<IconThemeDataSchema, List<String>> _f$enumValues =
      Field('enumValues', _$enumValues, mode: FieldMode.member);
  static Schema? _$items(IconThemeDataSchema v) => v.items;
  static const Field<IconThemeDataSchema, Schema> _f$items =
      Field('items', _$items, mode: FieldMode.member);
  static Map<String, Schema>? _$properties(IconThemeDataSchema v) =>
      v.properties;
  static const Field<IconThemeDataSchema, Map<String, Schema>> _f$properties =
      Field('properties', _$properties, mode: FieldMode.member);
  static List<Schema>? _$oneOf(IconThemeDataSchema v) => v.oneOf;
  static const Field<IconThemeDataSchema, List<Schema>> _f$oneOf =
      Field('oneOf', _$oneOf, mode: FieldMode.member);
  static List<Schema>? _$allOf(IconThemeDataSchema v) => v.allOf;
  static const Field<IconThemeDataSchema, List<Schema>> _f$allOf =
      Field('allOf', _$allOf, mode: FieldMode.member);
  static List<Schema>? _$anyOf(IconThemeDataSchema v) => v.anyOf;
  static const Field<IconThemeDataSchema, List<Schema>> _f$anyOf =
      Field('anyOf', _$anyOf, mode: FieldMode.member);

  @override
  final MappableFields<IconThemeDataSchema> fields = const {
    #requiredProperties: _f$requiredProperties,
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
  };

  @override
  final String discriminatorKey = '_type';
  @override
  final dynamic discriminatorValue = 'icon_theme_data';
  @override
  late final ClassMapperBase superMapper = SchemaMapper.ensureInitialized();

  static IconThemeDataSchema _instantiate(DecodingData data) {
    return IconThemeDataSchema(
        requiredProperties: data.dec(_f$requiredProperties),
        description: data.dec(_f$description),
        nullable: data.dec(_f$nullable));
  }

  @override
  final Function instantiate = _instantiate;

  static IconThemeDataSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<IconThemeDataSchema>(map);
  }

  static IconThemeDataSchema fromJson(String json) {
    return ensureInitialized().decodeJson<IconThemeDataSchema>(json);
  }
}

mixin IconThemeDataSchemaMappable {
  String toJson() {
    return IconThemeDataSchemaMapper.ensureInitialized()
        .encodeJson<IconThemeDataSchema>(this as IconThemeDataSchema);
  }

  Map<String, dynamic> toMap() {
    return IconThemeDataSchemaMapper.ensureInitialized()
        .encodeMap<IconThemeDataSchema>(this as IconThemeDataSchema);
  }

  IconThemeDataSchemaCopyWith<IconThemeDataSchema, IconThemeDataSchema,
          IconThemeDataSchema>
      get copyWith => _IconThemeDataSchemaCopyWithImpl(
          this as IconThemeDataSchema, $identity, $identity);
  @override
  String toString() {
    return IconThemeDataSchemaMapper.ensureInitialized()
        .stringifyValue(this as IconThemeDataSchema);
  }

  @override
  bool operator ==(Object other) {
    return IconThemeDataSchemaMapper.ensureInitialized()
        .equalsValue(this as IconThemeDataSchema, other);
  }

  @override
  int get hashCode {
    return IconThemeDataSchemaMapper.ensureInitialized()
        .hashValue(this as IconThemeDataSchema);
  }
}

extension IconThemeDataSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, IconThemeDataSchema, $Out> {
  IconThemeDataSchemaCopyWith<$R, IconThemeDataSchema, $Out>
      get $asIconThemeDataSchema =>
          $base.as((v, t, t2) => _IconThemeDataSchemaCopyWithImpl(v, t, t2));
}

abstract class IconThemeDataSchemaCopyWith<$R, $In extends IconThemeDataSchema,
    $Out> implements SchemaCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties;
  @override
  $R call(
      {List<String>? requiredProperties, String? description, bool? nullable});
  IconThemeDataSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _IconThemeDataSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, IconThemeDataSchema, $Out>
    implements IconThemeDataSchemaCopyWith<$R, IconThemeDataSchema, $Out> {
  _IconThemeDataSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<IconThemeDataSchema> $mapper =
      IconThemeDataSchemaMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties => $value.requiredProperties != null
          ? ListCopyWith(
              $value.requiredProperties!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(requiredProperties: v))
          : null;
  @override
  $R call(
          {Object? requiredProperties = $none,
          Object? description = $none,
          bool? nullable}) =>
      $apply(FieldCopyWithData({
        if (requiredProperties != $none)
          #requiredProperties: requiredProperties,
        if (description != $none) #description: description,
        if (nullable != null) #nullable: nullable
      }));
  @override
  IconThemeDataSchema $make(CopyWithData data) => IconThemeDataSchema(
      requiredProperties:
          data.get(#requiredProperties, or: $value.requiredProperties),
      description: data.get(#description, or: $value.description),
      nullable: data.get(#nullable, or: $value.nullable));

  @override
  IconThemeDataSchemaCopyWith<$R2, IconThemeDataSchema, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _IconThemeDataSchemaCopyWithImpl($value, $cast, t);
}

class ImageProviderSchemaMapper
    extends SubClassMapperBase<ImageProviderSchema> {
  ImageProviderSchemaMapper._();

  static ImageProviderSchemaMapper? _instance;
  static ImageProviderSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ImageProviderSchemaMapper._());
      SchemaMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ImageProviderSchema';

  static List<String>? _$requiredProperties(ImageProviderSchema v) =>
      v.requiredProperties;
  static const Field<ImageProviderSchema, List<String>> _f$requiredProperties =
      Field('requiredProperties', _$requiredProperties, opt: true);
  static String? _$description(ImageProviderSchema v) => v.description;
  static const Field<ImageProviderSchema, String> _f$description =
      Field('description', _$description, opt: true);
  static bool _$nullable(ImageProviderSchema v) => v.nullable;
  static const Field<ImageProviderSchema, bool> _f$nullable =
      Field('nullable', _$nullable, opt: true, def: true);
  static String? _$ref(ImageProviderSchema v) => v.ref;
  static const Field<ImageProviderSchema, String> _f$ref =
      Field('ref', _$ref, mode: FieldMode.member);
  static Map<String, Schema>? _$schemas(ImageProviderSchema v) => v.schemas;
  static const Field<ImageProviderSchema, Map<String, Schema>> _f$schemas =
      Field('schemas', _$schemas, mode: FieldMode.member);
  static DataType? _$type(ImageProviderSchema v) => v.type;
  static const Field<ImageProviderSchema, DataType> _f$type =
      Field('type', _$type, mode: FieldMode.member);
  static String? _$format(ImageProviderSchema v) => v.format;
  static const Field<ImageProviderSchema, String> _f$format =
      Field('format', _$format, mode: FieldMode.member);
  static DiscriminatorSchema? _$discriminator(ImageProviderSchema v) =>
      v.discriminator;
  static const Field<ImageProviderSchema, DiscriminatorSchema>
      _f$discriminator =
      Field('discriminator', _$discriminator, mode: FieldMode.member);
  static List<String>? _$enumValues(ImageProviderSchema v) => v.enumValues;
  static const Field<ImageProviderSchema, List<String>> _f$enumValues =
      Field('enumValues', _$enumValues, mode: FieldMode.member);
  static Schema? _$items(ImageProviderSchema v) => v.items;
  static const Field<ImageProviderSchema, Schema> _f$items =
      Field('items', _$items, mode: FieldMode.member);
  static Map<String, Schema>? _$properties(ImageProviderSchema v) =>
      v.properties;
  static const Field<ImageProviderSchema, Map<String, Schema>> _f$properties =
      Field('properties', _$properties, mode: FieldMode.member);
  static List<Schema>? _$oneOf(ImageProviderSchema v) => v.oneOf;
  static const Field<ImageProviderSchema, List<Schema>> _f$oneOf =
      Field('oneOf', _$oneOf, mode: FieldMode.member);
  static List<Schema>? _$allOf(ImageProviderSchema v) => v.allOf;
  static const Field<ImageProviderSchema, List<Schema>> _f$allOf =
      Field('allOf', _$allOf, mode: FieldMode.member);
  static List<Schema>? _$anyOf(ImageProviderSchema v) => v.anyOf;
  static const Field<ImageProviderSchema, List<Schema>> _f$anyOf =
      Field('anyOf', _$anyOf, mode: FieldMode.member);

  @override
  final MappableFields<ImageProviderSchema> fields = const {
    #requiredProperties: _f$requiredProperties,
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
  };

  @override
  final String discriminatorKey = '_type';
  @override
  final dynamic discriminatorValue = 'image_provider';
  @override
  late final ClassMapperBase superMapper = SchemaMapper.ensureInitialized();

  static ImageProviderSchema _instantiate(DecodingData data) {
    return ImageProviderSchema(
        requiredProperties: data.dec(_f$requiredProperties),
        description: data.dec(_f$description),
        nullable: data.dec(_f$nullable));
  }

  @override
  final Function instantiate = _instantiate;

  static ImageProviderSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ImageProviderSchema>(map);
  }

  static ImageProviderSchema fromJson(String json) {
    return ensureInitialized().decodeJson<ImageProviderSchema>(json);
  }
}

mixin ImageProviderSchemaMappable {
  String toJson() {
    return ImageProviderSchemaMapper.ensureInitialized()
        .encodeJson<ImageProviderSchema>(this as ImageProviderSchema);
  }

  Map<String, dynamic> toMap() {
    return ImageProviderSchemaMapper.ensureInitialized()
        .encodeMap<ImageProviderSchema>(this as ImageProviderSchema);
  }

  ImageProviderSchemaCopyWith<ImageProviderSchema, ImageProviderSchema,
          ImageProviderSchema>
      get copyWith => _ImageProviderSchemaCopyWithImpl(
          this as ImageProviderSchema, $identity, $identity);
  @override
  String toString() {
    return ImageProviderSchemaMapper.ensureInitialized()
        .stringifyValue(this as ImageProviderSchema);
  }

  @override
  bool operator ==(Object other) {
    return ImageProviderSchemaMapper.ensureInitialized()
        .equalsValue(this as ImageProviderSchema, other);
  }

  @override
  int get hashCode {
    return ImageProviderSchemaMapper.ensureInitialized()
        .hashValue(this as ImageProviderSchema);
  }
}

extension ImageProviderSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ImageProviderSchema, $Out> {
  ImageProviderSchemaCopyWith<$R, ImageProviderSchema, $Out>
      get $asImageProviderSchema =>
          $base.as((v, t, t2) => _ImageProviderSchemaCopyWithImpl(v, t, t2));
}

abstract class ImageProviderSchemaCopyWith<$R, $In extends ImageProviderSchema,
    $Out> implements SchemaCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties;
  @override
  $R call(
      {List<String>? requiredProperties, String? description, bool? nullable});
  ImageProviderSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ImageProviderSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ImageProviderSchema, $Out>
    implements ImageProviderSchemaCopyWith<$R, ImageProviderSchema, $Out> {
  _ImageProviderSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ImageProviderSchema> $mapper =
      ImageProviderSchemaMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties => $value.requiredProperties != null
          ? ListCopyWith(
              $value.requiredProperties!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(requiredProperties: v))
          : null;
  @override
  $R call(
          {Object? requiredProperties = $none,
          Object? description = $none,
          bool? nullable}) =>
      $apply(FieldCopyWithData({
        if (requiredProperties != $none)
          #requiredProperties: requiredProperties,
        if (description != $none) #description: description,
        if (nullable != null) #nullable: nullable
      }));
  @override
  ImageProviderSchema $make(CopyWithData data) => ImageProviderSchema(
      requiredProperties:
          data.get(#requiredProperties, or: $value.requiredProperties),
      description: data.get(#description, or: $value.description),
      nullable: data.get(#nullable, or: $value.nullable));

  @override
  ImageProviderSchemaCopyWith<$R2, ImageProviderSchema, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ImageProviderSchemaCopyWithImpl($value, $cast, t);
}

class LocaleSchemaMapper extends SubClassMapperBase<LocaleSchema> {
  LocaleSchemaMapper._();

  static LocaleSchemaMapper? _instance;
  static LocaleSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LocaleSchemaMapper._());
      SchemaMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'LocaleSchema';

  static List<String>? _$requiredProperties(LocaleSchema v) =>
      v.requiredProperties;
  static const Field<LocaleSchema, List<String>> _f$requiredProperties =
      Field('requiredProperties', _$requiredProperties, opt: true);
  static String? _$description(LocaleSchema v) => v.description;
  static const Field<LocaleSchema, String> _f$description =
      Field('description', _$description, opt: true);
  static bool _$nullable(LocaleSchema v) => v.nullable;
  static const Field<LocaleSchema, bool> _f$nullable =
      Field('nullable', _$nullable, opt: true, def: true);
  static String? _$ref(LocaleSchema v) => v.ref;
  static const Field<LocaleSchema, String> _f$ref =
      Field('ref', _$ref, mode: FieldMode.member);
  static Map<String, Schema>? _$schemas(LocaleSchema v) => v.schemas;
  static const Field<LocaleSchema, Map<String, Schema>> _f$schemas =
      Field('schemas', _$schemas, mode: FieldMode.member);
  static DataType? _$type(LocaleSchema v) => v.type;
  static const Field<LocaleSchema, DataType> _f$type =
      Field('type', _$type, mode: FieldMode.member);
  static String? _$format(LocaleSchema v) => v.format;
  static const Field<LocaleSchema, String> _f$format =
      Field('format', _$format, mode: FieldMode.member);
  static DiscriminatorSchema? _$discriminator(LocaleSchema v) =>
      v.discriminator;
  static const Field<LocaleSchema, DiscriminatorSchema> _f$discriminator =
      Field('discriminator', _$discriminator, mode: FieldMode.member);
  static List<String>? _$enumValues(LocaleSchema v) => v.enumValues;
  static const Field<LocaleSchema, List<String>> _f$enumValues =
      Field('enumValues', _$enumValues, mode: FieldMode.member);
  static Schema? _$items(LocaleSchema v) => v.items;
  static const Field<LocaleSchema, Schema> _f$items =
      Field('items', _$items, mode: FieldMode.member);
  static Map<String, Schema>? _$properties(LocaleSchema v) => v.properties;
  static const Field<LocaleSchema, Map<String, Schema>> _f$properties =
      Field('properties', _$properties, mode: FieldMode.member);
  static List<Schema>? _$oneOf(LocaleSchema v) => v.oneOf;
  static const Field<LocaleSchema, List<Schema>> _f$oneOf =
      Field('oneOf', _$oneOf, mode: FieldMode.member);
  static List<Schema>? _$allOf(LocaleSchema v) => v.allOf;
  static const Field<LocaleSchema, List<Schema>> _f$allOf =
      Field('allOf', _$allOf, mode: FieldMode.member);
  static List<Schema>? _$anyOf(LocaleSchema v) => v.anyOf;
  static const Field<LocaleSchema, List<Schema>> _f$anyOf =
      Field('anyOf', _$anyOf, mode: FieldMode.member);

  @override
  final MappableFields<LocaleSchema> fields = const {
    #requiredProperties: _f$requiredProperties,
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
  };

  @override
  final String discriminatorKey = '_type';
  @override
  final dynamic discriminatorValue = 'locale';
  @override
  late final ClassMapperBase superMapper = SchemaMapper.ensureInitialized();

  static LocaleSchema _instantiate(DecodingData data) {
    return LocaleSchema(
        requiredProperties: data.dec(_f$requiredProperties),
        description: data.dec(_f$description),
        nullable: data.dec(_f$nullable));
  }

  @override
  final Function instantiate = _instantiate;

  static LocaleSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LocaleSchema>(map);
  }

  static LocaleSchema fromJson(String json) {
    return ensureInitialized().decodeJson<LocaleSchema>(json);
  }
}

mixin LocaleSchemaMappable {
  String toJson() {
    return LocaleSchemaMapper.ensureInitialized()
        .encodeJson<LocaleSchema>(this as LocaleSchema);
  }

  Map<String, dynamic> toMap() {
    return LocaleSchemaMapper.ensureInitialized()
        .encodeMap<LocaleSchema>(this as LocaleSchema);
  }

  LocaleSchemaCopyWith<LocaleSchema, LocaleSchema, LocaleSchema> get copyWith =>
      _LocaleSchemaCopyWithImpl(this as LocaleSchema, $identity, $identity);
  @override
  String toString() {
    return LocaleSchemaMapper.ensureInitialized()
        .stringifyValue(this as LocaleSchema);
  }

  @override
  bool operator ==(Object other) {
    return LocaleSchemaMapper.ensureInitialized()
        .equalsValue(this as LocaleSchema, other);
  }

  @override
  int get hashCode {
    return LocaleSchemaMapper.ensureInitialized()
        .hashValue(this as LocaleSchema);
  }
}

extension LocaleSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, LocaleSchema, $Out> {
  LocaleSchemaCopyWith<$R, LocaleSchema, $Out> get $asLocaleSchema =>
      $base.as((v, t, t2) => _LocaleSchemaCopyWithImpl(v, t, t2));
}

abstract class LocaleSchemaCopyWith<$R, $In extends LocaleSchema, $Out>
    implements SchemaCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties;
  @override
  $R call(
      {List<String>? requiredProperties, String? description, bool? nullable});
  LocaleSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _LocaleSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LocaleSchema, $Out>
    implements LocaleSchemaCopyWith<$R, LocaleSchema, $Out> {
  _LocaleSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LocaleSchema> $mapper =
      LocaleSchemaMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties => $value.requiredProperties != null
          ? ListCopyWith(
              $value.requiredProperties!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(requiredProperties: v))
          : null;
  @override
  $R call(
          {Object? requiredProperties = $none,
          Object? description = $none,
          bool? nullable}) =>
      $apply(FieldCopyWithData({
        if (requiredProperties != $none)
          #requiredProperties: requiredProperties,
        if (description != $none) #description: description,
        if (nullable != null) #nullable: nullable
      }));
  @override
  LocaleSchema $make(CopyWithData data) => LocaleSchema(
      requiredProperties:
          data.get(#requiredProperties, or: $value.requiredProperties),
      description: data.get(#description, or: $value.description),
      nullable: data.get(#nullable, or: $value.nullable));

  @override
  LocaleSchemaCopyWith<$R2, LocaleSchema, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _LocaleSchemaCopyWithImpl($value, $cast, t);
}

class Matrix4SchemaMapper extends SubClassMapperBase<Matrix4Schema> {
  Matrix4SchemaMapper._();

  static Matrix4SchemaMapper? _instance;
  static Matrix4SchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = Matrix4SchemaMapper._());
      SchemaMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'Matrix4Schema';

  static List<String>? _$requiredProperties(Matrix4Schema v) =>
      v.requiredProperties;
  static const Field<Matrix4Schema, List<String>> _f$requiredProperties =
      Field('requiredProperties', _$requiredProperties, opt: true);
  static String? _$description(Matrix4Schema v) => v.description;
  static const Field<Matrix4Schema, String> _f$description =
      Field('description', _$description, opt: true);
  static bool _$nullable(Matrix4Schema v) => v.nullable;
  static const Field<Matrix4Schema, bool> _f$nullable =
      Field('nullable', _$nullable, opt: true, def: true);
  static String? _$ref(Matrix4Schema v) => v.ref;
  static const Field<Matrix4Schema, String> _f$ref =
      Field('ref', _$ref, mode: FieldMode.member);
  static Map<String, Schema>? _$schemas(Matrix4Schema v) => v.schemas;
  static const Field<Matrix4Schema, Map<String, Schema>> _f$schemas =
      Field('schemas', _$schemas, mode: FieldMode.member);
  static DataType? _$type(Matrix4Schema v) => v.type;
  static const Field<Matrix4Schema, DataType> _f$type =
      Field('type', _$type, mode: FieldMode.member);
  static String? _$format(Matrix4Schema v) => v.format;
  static const Field<Matrix4Schema, String> _f$format =
      Field('format', _$format, mode: FieldMode.member);
  static DiscriminatorSchema? _$discriminator(Matrix4Schema v) =>
      v.discriminator;
  static const Field<Matrix4Schema, DiscriminatorSchema> _f$discriminator =
      Field('discriminator', _$discriminator, mode: FieldMode.member);
  static List<String>? _$enumValues(Matrix4Schema v) => v.enumValues;
  static const Field<Matrix4Schema, List<String>> _f$enumValues =
      Field('enumValues', _$enumValues, mode: FieldMode.member);
  static Schema? _$items(Matrix4Schema v) => v.items;
  static const Field<Matrix4Schema, Schema> _f$items =
      Field('items', _$items, mode: FieldMode.member);
  static Map<String, Schema>? _$properties(Matrix4Schema v) => v.properties;
  static const Field<Matrix4Schema, Map<String, Schema>> _f$properties =
      Field('properties', _$properties, mode: FieldMode.member);
  static List<Schema>? _$oneOf(Matrix4Schema v) => v.oneOf;
  static const Field<Matrix4Schema, List<Schema>> _f$oneOf =
      Field('oneOf', _$oneOf, mode: FieldMode.member);
  static List<Schema>? _$allOf(Matrix4Schema v) => v.allOf;
  static const Field<Matrix4Schema, List<Schema>> _f$allOf =
      Field('allOf', _$allOf, mode: FieldMode.member);
  static List<Schema>? _$anyOf(Matrix4Schema v) => v.anyOf;
  static const Field<Matrix4Schema, List<Schema>> _f$anyOf =
      Field('anyOf', _$anyOf, mode: FieldMode.member);

  @override
  final MappableFields<Matrix4Schema> fields = const {
    #requiredProperties: _f$requiredProperties,
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
  };

  @override
  final String discriminatorKey = '_type';
  @override
  final dynamic discriminatorValue = 'matrix4';
  @override
  late final ClassMapperBase superMapper = SchemaMapper.ensureInitialized();

  static Matrix4Schema _instantiate(DecodingData data) {
    return Matrix4Schema(
        requiredProperties: data.dec(_f$requiredProperties),
        description: data.dec(_f$description),
        nullable: data.dec(_f$nullable));
  }

  @override
  final Function instantiate = _instantiate;

  static Matrix4Schema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Matrix4Schema>(map);
  }

  static Matrix4Schema fromJson(String json) {
    return ensureInitialized().decodeJson<Matrix4Schema>(json);
  }
}

mixin Matrix4SchemaMappable {
  String toJson() {
    return Matrix4SchemaMapper.ensureInitialized()
        .encodeJson<Matrix4Schema>(this as Matrix4Schema);
  }

  Map<String, dynamic> toMap() {
    return Matrix4SchemaMapper.ensureInitialized()
        .encodeMap<Matrix4Schema>(this as Matrix4Schema);
  }

  Matrix4SchemaCopyWith<Matrix4Schema, Matrix4Schema, Matrix4Schema>
      get copyWith => _Matrix4SchemaCopyWithImpl(
          this as Matrix4Schema, $identity, $identity);
  @override
  String toString() {
    return Matrix4SchemaMapper.ensureInitialized()
        .stringifyValue(this as Matrix4Schema);
  }

  @override
  bool operator ==(Object other) {
    return Matrix4SchemaMapper.ensureInitialized()
        .equalsValue(this as Matrix4Schema, other);
  }

  @override
  int get hashCode {
    return Matrix4SchemaMapper.ensureInitialized()
        .hashValue(this as Matrix4Schema);
  }
}

extension Matrix4SchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, Matrix4Schema, $Out> {
  Matrix4SchemaCopyWith<$R, Matrix4Schema, $Out> get $asMatrix4Schema =>
      $base.as((v, t, t2) => _Matrix4SchemaCopyWithImpl(v, t, t2));
}

abstract class Matrix4SchemaCopyWith<$R, $In extends Matrix4Schema, $Out>
    implements SchemaCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties;
  @override
  $R call(
      {List<String>? requiredProperties, String? description, bool? nullable});
  Matrix4SchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _Matrix4SchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Matrix4Schema, $Out>
    implements Matrix4SchemaCopyWith<$R, Matrix4Schema, $Out> {
  _Matrix4SchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Matrix4Schema> $mapper =
      Matrix4SchemaMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties => $value.requiredProperties != null
          ? ListCopyWith(
              $value.requiredProperties!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(requiredProperties: v))
          : null;
  @override
  $R call(
          {Object? requiredProperties = $none,
          Object? description = $none,
          bool? nullable}) =>
      $apply(FieldCopyWithData({
        if (requiredProperties != $none)
          #requiredProperties: requiredProperties,
        if (description != $none) #description: description,
        if (nullable != null) #nullable: nullable
      }));
  @override
  Matrix4Schema $make(CopyWithData data) => Matrix4Schema(
      requiredProperties:
          data.get(#requiredProperties, or: $value.requiredProperties),
      description: data.get(#description, or: $value.description),
      nullable: data.get(#nullable, or: $value.nullable));

  @override
  Matrix4SchemaCopyWith<$R2, Matrix4Schema, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _Matrix4SchemaCopyWithImpl($value, $cast, t);
}

class MaskFilterSchemaMapper extends SubClassMapperBase<MaskFilterSchema> {
  MaskFilterSchemaMapper._();

  static MaskFilterSchemaMapper? _instance;
  static MaskFilterSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MaskFilterSchemaMapper._());
      SchemaMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'MaskFilterSchema';

  static List<String>? _$requiredProperties(MaskFilterSchema v) =>
      v.requiredProperties;
  static const Field<MaskFilterSchema, List<String>> _f$requiredProperties =
      Field('requiredProperties', _$requiredProperties, opt: true);
  static String? _$description(MaskFilterSchema v) => v.description;
  static const Field<MaskFilterSchema, String> _f$description =
      Field('description', _$description, opt: true);
  static bool _$nullable(MaskFilterSchema v) => v.nullable;
  static const Field<MaskFilterSchema, bool> _f$nullable =
      Field('nullable', _$nullable, opt: true, def: true);
  static String? _$ref(MaskFilterSchema v) => v.ref;
  static const Field<MaskFilterSchema, String> _f$ref =
      Field('ref', _$ref, mode: FieldMode.member);
  static Map<String, Schema>? _$schemas(MaskFilterSchema v) => v.schemas;
  static const Field<MaskFilterSchema, Map<String, Schema>> _f$schemas =
      Field('schemas', _$schemas, mode: FieldMode.member);
  static DataType? _$type(MaskFilterSchema v) => v.type;
  static const Field<MaskFilterSchema, DataType> _f$type =
      Field('type', _$type, mode: FieldMode.member);
  static String? _$format(MaskFilterSchema v) => v.format;
  static const Field<MaskFilterSchema, String> _f$format =
      Field('format', _$format, mode: FieldMode.member);
  static DiscriminatorSchema? _$discriminator(MaskFilterSchema v) =>
      v.discriminator;
  static const Field<MaskFilterSchema, DiscriminatorSchema> _f$discriminator =
      Field('discriminator', _$discriminator, mode: FieldMode.member);
  static List<String>? _$enumValues(MaskFilterSchema v) => v.enumValues;
  static const Field<MaskFilterSchema, List<String>> _f$enumValues =
      Field('enumValues', _$enumValues, mode: FieldMode.member);
  static Schema? _$items(MaskFilterSchema v) => v.items;
  static const Field<MaskFilterSchema, Schema> _f$items =
      Field('items', _$items, mode: FieldMode.member);
  static Map<String, Schema>? _$properties(MaskFilterSchema v) => v.properties;
  static const Field<MaskFilterSchema, Map<String, Schema>> _f$properties =
      Field('properties', _$properties, mode: FieldMode.member);
  static List<Schema>? _$oneOf(MaskFilterSchema v) => v.oneOf;
  static const Field<MaskFilterSchema, List<Schema>> _f$oneOf =
      Field('oneOf', _$oneOf, mode: FieldMode.member);
  static List<Schema>? _$allOf(MaskFilterSchema v) => v.allOf;
  static const Field<MaskFilterSchema, List<Schema>> _f$allOf =
      Field('allOf', _$allOf, mode: FieldMode.member);
  static List<Schema>? _$anyOf(MaskFilterSchema v) => v.anyOf;
  static const Field<MaskFilterSchema, List<Schema>> _f$anyOf =
      Field('anyOf', _$anyOf, mode: FieldMode.member);

  @override
  final MappableFields<MaskFilterSchema> fields = const {
    #requiredProperties: _f$requiredProperties,
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
  };

  @override
  final String discriminatorKey = '_type';
  @override
  final dynamic discriminatorValue = 'mask_filter';
  @override
  late final ClassMapperBase superMapper = SchemaMapper.ensureInitialized();

  static MaskFilterSchema _instantiate(DecodingData data) {
    return MaskFilterSchema(
        requiredProperties: data.dec(_f$requiredProperties),
        description: data.dec(_f$description),
        nullable: data.dec(_f$nullable));
  }

  @override
  final Function instantiate = _instantiate;

  static MaskFilterSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MaskFilterSchema>(map);
  }

  static MaskFilterSchema fromJson(String json) {
    return ensureInitialized().decodeJson<MaskFilterSchema>(json);
  }
}

mixin MaskFilterSchemaMappable {
  String toJson() {
    return MaskFilterSchemaMapper.ensureInitialized()
        .encodeJson<MaskFilterSchema>(this as MaskFilterSchema);
  }

  Map<String, dynamic> toMap() {
    return MaskFilterSchemaMapper.ensureInitialized()
        .encodeMap<MaskFilterSchema>(this as MaskFilterSchema);
  }

  MaskFilterSchemaCopyWith<MaskFilterSchema, MaskFilterSchema, MaskFilterSchema>
      get copyWith => _MaskFilterSchemaCopyWithImpl(
          this as MaskFilterSchema, $identity, $identity);
  @override
  String toString() {
    return MaskFilterSchemaMapper.ensureInitialized()
        .stringifyValue(this as MaskFilterSchema);
  }

  @override
  bool operator ==(Object other) {
    return MaskFilterSchemaMapper.ensureInitialized()
        .equalsValue(this as MaskFilterSchema, other);
  }

  @override
  int get hashCode {
    return MaskFilterSchemaMapper.ensureInitialized()
        .hashValue(this as MaskFilterSchema);
  }
}

extension MaskFilterSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MaskFilterSchema, $Out> {
  MaskFilterSchemaCopyWith<$R, MaskFilterSchema, $Out>
      get $asMaskFilterSchema =>
          $base.as((v, t, t2) => _MaskFilterSchemaCopyWithImpl(v, t, t2));
}

abstract class MaskFilterSchemaCopyWith<$R, $In extends MaskFilterSchema, $Out>
    implements SchemaCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties;
  @override
  $R call(
      {List<String>? requiredProperties, String? description, bool? nullable});
  MaskFilterSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _MaskFilterSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MaskFilterSchema, $Out>
    implements MaskFilterSchemaCopyWith<$R, MaskFilterSchema, $Out> {
  _MaskFilterSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MaskFilterSchema> $mapper =
      MaskFilterSchemaMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties => $value.requiredProperties != null
          ? ListCopyWith(
              $value.requiredProperties!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(requiredProperties: v))
          : null;
  @override
  $R call(
          {Object? requiredProperties = $none,
          Object? description = $none,
          bool? nullable}) =>
      $apply(FieldCopyWithData({
        if (requiredProperties != $none)
          #requiredProperties: requiredProperties,
        if (description != $none) #description: description,
        if (nullable != null) #nullable: nullable
      }));
  @override
  MaskFilterSchema $make(CopyWithData data) => MaskFilterSchema(
      requiredProperties:
          data.get(#requiredProperties, or: $value.requiredProperties),
      description: data.get(#description, or: $value.description),
      nullable: data.get(#nullable, or: $value.nullable));

  @override
  MaskFilterSchemaCopyWith<$R2, MaskFilterSchema, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _MaskFilterSchemaCopyWithImpl($value, $cast, t);
}

class PaintSchemaMapper extends SubClassMapperBase<PaintSchema> {
  PaintSchemaMapper._();

  static PaintSchemaMapper? _instance;
  static PaintSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PaintSchemaMapper._());
      SchemaMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'PaintSchema';

  static List<String>? _$requiredProperties(PaintSchema v) =>
      v.requiredProperties;
  static const Field<PaintSchema, List<String>> _f$requiredProperties =
      Field('requiredProperties', _$requiredProperties, opt: true);
  static String? _$description(PaintSchema v) => v.description;
  static const Field<PaintSchema, String> _f$description =
      Field('description', _$description, opt: true);
  static bool _$nullable(PaintSchema v) => v.nullable;
  static const Field<PaintSchema, bool> _f$nullable =
      Field('nullable', _$nullable, opt: true, def: true);
  static String? _$ref(PaintSchema v) => v.ref;
  static const Field<PaintSchema, String> _f$ref =
      Field('ref', _$ref, mode: FieldMode.member);
  static Map<String, Schema>? _$schemas(PaintSchema v) => v.schemas;
  static const Field<PaintSchema, Map<String, Schema>> _f$schemas =
      Field('schemas', _$schemas, mode: FieldMode.member);
  static DataType? _$type(PaintSchema v) => v.type;
  static const Field<PaintSchema, DataType> _f$type =
      Field('type', _$type, mode: FieldMode.member);
  static String? _$format(PaintSchema v) => v.format;
  static const Field<PaintSchema, String> _f$format =
      Field('format', _$format, mode: FieldMode.member);
  static DiscriminatorSchema? _$discriminator(PaintSchema v) => v.discriminator;
  static const Field<PaintSchema, DiscriminatorSchema> _f$discriminator =
      Field('discriminator', _$discriminator, mode: FieldMode.member);
  static List<String>? _$enumValues(PaintSchema v) => v.enumValues;
  static const Field<PaintSchema, List<String>> _f$enumValues =
      Field('enumValues', _$enumValues, mode: FieldMode.member);
  static Schema? _$items(PaintSchema v) => v.items;
  static const Field<PaintSchema, Schema> _f$items =
      Field('items', _$items, mode: FieldMode.member);
  static Map<String, Schema>? _$properties(PaintSchema v) => v.properties;
  static const Field<PaintSchema, Map<String, Schema>> _f$properties =
      Field('properties', _$properties, mode: FieldMode.member);
  static List<Schema>? _$oneOf(PaintSchema v) => v.oneOf;
  static const Field<PaintSchema, List<Schema>> _f$oneOf =
      Field('oneOf', _$oneOf, mode: FieldMode.member);
  static List<Schema>? _$allOf(PaintSchema v) => v.allOf;
  static const Field<PaintSchema, List<Schema>> _f$allOf =
      Field('allOf', _$allOf, mode: FieldMode.member);
  static List<Schema>? _$anyOf(PaintSchema v) => v.anyOf;
  static const Field<PaintSchema, List<Schema>> _f$anyOf =
      Field('anyOf', _$anyOf, mode: FieldMode.member);

  @override
  final MappableFields<PaintSchema> fields = const {
    #requiredProperties: _f$requiredProperties,
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
  };

  @override
  final String discriminatorKey = '_type';
  @override
  final dynamic discriminatorValue = 'paint';
  @override
  late final ClassMapperBase superMapper = SchemaMapper.ensureInitialized();

  static PaintSchema _instantiate(DecodingData data) {
    return PaintSchema(
        requiredProperties: data.dec(_f$requiredProperties),
        description: data.dec(_f$description),
        nullable: data.dec(_f$nullable));
  }

  @override
  final Function instantiate = _instantiate;

  static PaintSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PaintSchema>(map);
  }

  static PaintSchema fromJson(String json) {
    return ensureInitialized().decodeJson<PaintSchema>(json);
  }
}

mixin PaintSchemaMappable {
  String toJson() {
    return PaintSchemaMapper.ensureInitialized()
        .encodeJson<PaintSchema>(this as PaintSchema);
  }

  Map<String, dynamic> toMap() {
    return PaintSchemaMapper.ensureInitialized()
        .encodeMap<PaintSchema>(this as PaintSchema);
  }

  PaintSchemaCopyWith<PaintSchema, PaintSchema, PaintSchema> get copyWith =>
      _PaintSchemaCopyWithImpl(this as PaintSchema, $identity, $identity);
  @override
  String toString() {
    return PaintSchemaMapper.ensureInitialized()
        .stringifyValue(this as PaintSchema);
  }

  @override
  bool operator ==(Object other) {
    return PaintSchemaMapper.ensureInitialized()
        .equalsValue(this as PaintSchema, other);
  }

  @override
  int get hashCode {
    return PaintSchemaMapper.ensureInitialized().hashValue(this as PaintSchema);
  }
}

extension PaintSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PaintSchema, $Out> {
  PaintSchemaCopyWith<$R, PaintSchema, $Out> get $asPaintSchema =>
      $base.as((v, t, t2) => _PaintSchemaCopyWithImpl(v, t, t2));
}

abstract class PaintSchemaCopyWith<$R, $In extends PaintSchema, $Out>
    implements SchemaCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties;
  @override
  $R call(
      {List<String>? requiredProperties, String? description, bool? nullable});
  PaintSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PaintSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PaintSchema, $Out>
    implements PaintSchemaCopyWith<$R, PaintSchema, $Out> {
  _PaintSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PaintSchema> $mapper =
      PaintSchemaMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties => $value.requiredProperties != null
          ? ListCopyWith(
              $value.requiredProperties!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(requiredProperties: v))
          : null;
  @override
  $R call(
          {Object? requiredProperties = $none,
          Object? description = $none,
          bool? nullable}) =>
      $apply(FieldCopyWithData({
        if (requiredProperties != $none)
          #requiredProperties: requiredProperties,
        if (description != $none) #description: description,
        if (nullable != null) #nullable: nullable
      }));
  @override
  PaintSchema $make(CopyWithData data) => PaintSchema(
      requiredProperties:
          data.get(#requiredProperties, or: $value.requiredProperties),
      description: data.get(#description, or: $value.description),
      nullable: data.get(#nullable, or: $value.nullable));

  @override
  PaintSchemaCopyWith<$R2, PaintSchema, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PaintSchemaCopyWithImpl($value, $cast, t);
}

class RadiusSchemaMapper extends SubClassMapperBase<RadiusSchema> {
  RadiusSchemaMapper._();

  static RadiusSchemaMapper? _instance;
  static RadiusSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RadiusSchemaMapper._());
      SchemaMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'RadiusSchema';

  static List<String>? _$requiredProperties(RadiusSchema v) =>
      v.requiredProperties;
  static const Field<RadiusSchema, List<String>> _f$requiredProperties =
      Field('requiredProperties', _$requiredProperties, opt: true);
  static String? _$description(RadiusSchema v) => v.description;
  static const Field<RadiusSchema, String> _f$description =
      Field('description', _$description, opt: true);
  static bool _$nullable(RadiusSchema v) => v.nullable;
  static const Field<RadiusSchema, bool> _f$nullable =
      Field('nullable', _$nullable, opt: true, def: true);
  static String? _$ref(RadiusSchema v) => v.ref;
  static const Field<RadiusSchema, String> _f$ref =
      Field('ref', _$ref, mode: FieldMode.member);
  static Map<String, Schema>? _$schemas(RadiusSchema v) => v.schemas;
  static const Field<RadiusSchema, Map<String, Schema>> _f$schemas =
      Field('schemas', _$schemas, mode: FieldMode.member);
  static DataType? _$type(RadiusSchema v) => v.type;
  static const Field<RadiusSchema, DataType> _f$type =
      Field('type', _$type, mode: FieldMode.member);
  static String? _$format(RadiusSchema v) => v.format;
  static const Field<RadiusSchema, String> _f$format =
      Field('format', _$format, mode: FieldMode.member);
  static DiscriminatorSchema? _$discriminator(RadiusSchema v) =>
      v.discriminator;
  static const Field<RadiusSchema, DiscriminatorSchema> _f$discriminator =
      Field('discriminator', _$discriminator, mode: FieldMode.member);
  static List<String>? _$enumValues(RadiusSchema v) => v.enumValues;
  static const Field<RadiusSchema, List<String>> _f$enumValues =
      Field('enumValues', _$enumValues, mode: FieldMode.member);
  static Schema? _$items(RadiusSchema v) => v.items;
  static const Field<RadiusSchema, Schema> _f$items =
      Field('items', _$items, mode: FieldMode.member);
  static Map<String, Schema>? _$properties(RadiusSchema v) => v.properties;
  static const Field<RadiusSchema, Map<String, Schema>> _f$properties =
      Field('properties', _$properties, mode: FieldMode.member);
  static List<Schema>? _$oneOf(RadiusSchema v) => v.oneOf;
  static const Field<RadiusSchema, List<Schema>> _f$oneOf =
      Field('oneOf', _$oneOf, mode: FieldMode.member);
  static List<Schema>? _$allOf(RadiusSchema v) => v.allOf;
  static const Field<RadiusSchema, List<Schema>> _f$allOf =
      Field('allOf', _$allOf, mode: FieldMode.member);
  static List<Schema>? _$anyOf(RadiusSchema v) => v.anyOf;
  static const Field<RadiusSchema, List<Schema>> _f$anyOf =
      Field('anyOf', _$anyOf, mode: FieldMode.member);

  @override
  final MappableFields<RadiusSchema> fields = const {
    #requiredProperties: _f$requiredProperties,
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
  };

  @override
  final String discriminatorKey = '_type';
  @override
  final dynamic discriminatorValue = 'radius';
  @override
  late final ClassMapperBase superMapper = SchemaMapper.ensureInitialized();

  static RadiusSchema _instantiate(DecodingData data) {
    return RadiusSchema(
        requiredProperties: data.dec(_f$requiredProperties),
        description: data.dec(_f$description),
        nullable: data.dec(_f$nullable));
  }

  @override
  final Function instantiate = _instantiate;

  static RadiusSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RadiusSchema>(map);
  }

  static RadiusSchema fromJson(String json) {
    return ensureInitialized().decodeJson<RadiusSchema>(json);
  }
}

mixin RadiusSchemaMappable {
  String toJson() {
    return RadiusSchemaMapper.ensureInitialized()
        .encodeJson<RadiusSchema>(this as RadiusSchema);
  }

  Map<String, dynamic> toMap() {
    return RadiusSchemaMapper.ensureInitialized()
        .encodeMap<RadiusSchema>(this as RadiusSchema);
  }

  RadiusSchemaCopyWith<RadiusSchema, RadiusSchema, RadiusSchema> get copyWith =>
      _RadiusSchemaCopyWithImpl(this as RadiusSchema, $identity, $identity);
  @override
  String toString() {
    return RadiusSchemaMapper.ensureInitialized()
        .stringifyValue(this as RadiusSchema);
  }

  @override
  bool operator ==(Object other) {
    return RadiusSchemaMapper.ensureInitialized()
        .equalsValue(this as RadiusSchema, other);
  }

  @override
  int get hashCode {
    return RadiusSchemaMapper.ensureInitialized()
        .hashValue(this as RadiusSchema);
  }
}

extension RadiusSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RadiusSchema, $Out> {
  RadiusSchemaCopyWith<$R, RadiusSchema, $Out> get $asRadiusSchema =>
      $base.as((v, t, t2) => _RadiusSchemaCopyWithImpl(v, t, t2));
}

abstract class RadiusSchemaCopyWith<$R, $In extends RadiusSchema, $Out>
    implements SchemaCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties;
  @override
  $R call(
      {List<String>? requiredProperties, String? description, bool? nullable});
  RadiusSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RadiusSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RadiusSchema, $Out>
    implements RadiusSchemaCopyWith<$R, RadiusSchema, $Out> {
  _RadiusSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RadiusSchema> $mapper =
      RadiusSchemaMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties => $value.requiredProperties != null
          ? ListCopyWith(
              $value.requiredProperties!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(requiredProperties: v))
          : null;
  @override
  $R call(
          {Object? requiredProperties = $none,
          Object? description = $none,
          bool? nullable}) =>
      $apply(FieldCopyWithData({
        if (requiredProperties != $none)
          #requiredProperties: requiredProperties,
        if (description != $none) #description: description,
        if (nullable != null) #nullable: nullable
      }));
  @override
  RadiusSchema $make(CopyWithData data) => RadiusSchema(
      requiredProperties:
          data.get(#requiredProperties, or: $value.requiredProperties),
      description: data.get(#description, or: $value.description),
      nullable: data.get(#nullable, or: $value.nullable));

  @override
  RadiusSchemaCopyWith<$R2, RadiusSchema, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _RadiusSchemaCopyWithImpl($value, $cast, t);
}

class RectSchemaMapper extends SubClassMapperBase<RectSchema> {
  RectSchemaMapper._();

  static RectSchemaMapper? _instance;
  static RectSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RectSchemaMapper._());
      SchemaMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'RectSchema';

  static List<String>? _$requiredProperties(RectSchema v) =>
      v.requiredProperties;
  static const Field<RectSchema, List<String>> _f$requiredProperties =
      Field('requiredProperties', _$requiredProperties, opt: true);
  static String? _$description(RectSchema v) => v.description;
  static const Field<RectSchema, String> _f$description =
      Field('description', _$description, opt: true);
  static bool _$nullable(RectSchema v) => v.nullable;
  static const Field<RectSchema, bool> _f$nullable =
      Field('nullable', _$nullable, opt: true, def: true);
  static String? _$ref(RectSchema v) => v.ref;
  static const Field<RectSchema, String> _f$ref =
      Field('ref', _$ref, mode: FieldMode.member);
  static Map<String, Schema>? _$schemas(RectSchema v) => v.schemas;
  static const Field<RectSchema, Map<String, Schema>> _f$schemas =
      Field('schemas', _$schemas, mode: FieldMode.member);
  static DataType? _$type(RectSchema v) => v.type;
  static const Field<RectSchema, DataType> _f$type =
      Field('type', _$type, mode: FieldMode.member);
  static String? _$format(RectSchema v) => v.format;
  static const Field<RectSchema, String> _f$format =
      Field('format', _$format, mode: FieldMode.member);
  static DiscriminatorSchema? _$discriminator(RectSchema v) => v.discriminator;
  static const Field<RectSchema, DiscriminatorSchema> _f$discriminator =
      Field('discriminator', _$discriminator, mode: FieldMode.member);
  static List<String>? _$enumValues(RectSchema v) => v.enumValues;
  static const Field<RectSchema, List<String>> _f$enumValues =
      Field('enumValues', _$enumValues, mode: FieldMode.member);
  static Schema? _$items(RectSchema v) => v.items;
  static const Field<RectSchema, Schema> _f$items =
      Field('items', _$items, mode: FieldMode.member);
  static Map<String, Schema>? _$properties(RectSchema v) => v.properties;
  static const Field<RectSchema, Map<String, Schema>> _f$properties =
      Field('properties', _$properties, mode: FieldMode.member);
  static List<Schema>? _$oneOf(RectSchema v) => v.oneOf;
  static const Field<RectSchema, List<Schema>> _f$oneOf =
      Field('oneOf', _$oneOf, mode: FieldMode.member);
  static List<Schema>? _$allOf(RectSchema v) => v.allOf;
  static const Field<RectSchema, List<Schema>> _f$allOf =
      Field('allOf', _$allOf, mode: FieldMode.member);
  static List<Schema>? _$anyOf(RectSchema v) => v.anyOf;
  static const Field<RectSchema, List<Schema>> _f$anyOf =
      Field('anyOf', _$anyOf, mode: FieldMode.member);

  @override
  final MappableFields<RectSchema> fields = const {
    #requiredProperties: _f$requiredProperties,
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
  };

  @override
  final String discriminatorKey = '_type';
  @override
  final dynamic discriminatorValue = 'rect';
  @override
  late final ClassMapperBase superMapper = SchemaMapper.ensureInitialized();

  static RectSchema _instantiate(DecodingData data) {
    return RectSchema(
        requiredProperties: data.dec(_f$requiredProperties),
        description: data.dec(_f$description),
        nullable: data.dec(_f$nullable));
  }

  @override
  final Function instantiate = _instantiate;

  static RectSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RectSchema>(map);
  }

  static RectSchema fromJson(String json) {
    return ensureInitialized().decodeJson<RectSchema>(json);
  }
}

mixin RectSchemaMappable {
  String toJson() {
    return RectSchemaMapper.ensureInitialized()
        .encodeJson<RectSchema>(this as RectSchema);
  }

  Map<String, dynamic> toMap() {
    return RectSchemaMapper.ensureInitialized()
        .encodeMap<RectSchema>(this as RectSchema);
  }

  RectSchemaCopyWith<RectSchema, RectSchema, RectSchema> get copyWith =>
      _RectSchemaCopyWithImpl(this as RectSchema, $identity, $identity);
  @override
  String toString() {
    return RectSchemaMapper.ensureInitialized()
        .stringifyValue(this as RectSchema);
  }

  @override
  bool operator ==(Object other) {
    return RectSchemaMapper.ensureInitialized()
        .equalsValue(this as RectSchema, other);
  }

  @override
  int get hashCode {
    return RectSchemaMapper.ensureInitialized().hashValue(this as RectSchema);
  }
}

extension RectSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RectSchema, $Out> {
  RectSchemaCopyWith<$R, RectSchema, $Out> get $asRectSchema =>
      $base.as((v, t, t2) => _RectSchemaCopyWithImpl(v, t, t2));
}

abstract class RectSchemaCopyWith<$R, $In extends RectSchema, $Out>
    implements SchemaCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties;
  @override
  $R call(
      {List<String>? requiredProperties, String? description, bool? nullable});
  RectSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RectSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RectSchema, $Out>
    implements RectSchemaCopyWith<$R, RectSchema, $Out> {
  _RectSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RectSchema> $mapper =
      RectSchemaMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties => $value.requiredProperties != null
          ? ListCopyWith(
              $value.requiredProperties!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(requiredProperties: v))
          : null;
  @override
  $R call(
          {Object? requiredProperties = $none,
          Object? description = $none,
          bool? nullable}) =>
      $apply(FieldCopyWithData({
        if (requiredProperties != $none)
          #requiredProperties: requiredProperties,
        if (description != $none) #description: description,
        if (nullable != null) #nullable: nullable
      }));
  @override
  RectSchema $make(CopyWithData data) => RectSchema(
      requiredProperties:
          data.get(#requiredProperties, or: $value.requiredProperties),
      description: data.get(#description, or: $value.description),
      nullable: data.get(#nullable, or: $value.nullable));

  @override
  RectSchemaCopyWith<$R2, RectSchema, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _RectSchemaCopyWithImpl($value, $cast, t);
}

class ShapeBorderSchemaMapper extends SubClassMapperBase<ShapeBorderSchema> {
  ShapeBorderSchemaMapper._();

  static ShapeBorderSchemaMapper? _instance;
  static ShapeBorderSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ShapeBorderSchemaMapper._());
      SchemaMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ShapeBorderSchema';

  static List<String>? _$requiredProperties(ShapeBorderSchema v) =>
      v.requiredProperties;
  static const Field<ShapeBorderSchema, List<String>> _f$requiredProperties =
      Field('requiredProperties', _$requiredProperties, opt: true);
  static String? _$description(ShapeBorderSchema v) => v.description;
  static const Field<ShapeBorderSchema, String> _f$description =
      Field('description', _$description, opt: true);
  static bool _$nullable(ShapeBorderSchema v) => v.nullable;
  static const Field<ShapeBorderSchema, bool> _f$nullable =
      Field('nullable', _$nullable, opt: true, def: true);
  static String? _$ref(ShapeBorderSchema v) => v.ref;
  static const Field<ShapeBorderSchema, String> _f$ref =
      Field('ref', _$ref, mode: FieldMode.member);
  static Map<String, Schema>? _$schemas(ShapeBorderSchema v) => v.schemas;
  static const Field<ShapeBorderSchema, Map<String, Schema>> _f$schemas =
      Field('schemas', _$schemas, mode: FieldMode.member);
  static DataType? _$type(ShapeBorderSchema v) => v.type;
  static const Field<ShapeBorderSchema, DataType> _f$type =
      Field('type', _$type, mode: FieldMode.member);
  static String? _$format(ShapeBorderSchema v) => v.format;
  static const Field<ShapeBorderSchema, String> _f$format =
      Field('format', _$format, mode: FieldMode.member);
  static DiscriminatorSchema? _$discriminator(ShapeBorderSchema v) =>
      v.discriminator;
  static const Field<ShapeBorderSchema, DiscriminatorSchema> _f$discriminator =
      Field('discriminator', _$discriminator, mode: FieldMode.member);
  static List<String>? _$enumValues(ShapeBorderSchema v) => v.enumValues;
  static const Field<ShapeBorderSchema, List<String>> _f$enumValues =
      Field('enumValues', _$enumValues, mode: FieldMode.member);
  static Schema? _$items(ShapeBorderSchema v) => v.items;
  static const Field<ShapeBorderSchema, Schema> _f$items =
      Field('items', _$items, mode: FieldMode.member);
  static Map<String, Schema>? _$properties(ShapeBorderSchema v) => v.properties;
  static const Field<ShapeBorderSchema, Map<String, Schema>> _f$properties =
      Field('properties', _$properties, mode: FieldMode.member);
  static List<Schema>? _$oneOf(ShapeBorderSchema v) => v.oneOf;
  static const Field<ShapeBorderSchema, List<Schema>> _f$oneOf =
      Field('oneOf', _$oneOf, mode: FieldMode.member);
  static List<Schema>? _$allOf(ShapeBorderSchema v) => v.allOf;
  static const Field<ShapeBorderSchema, List<Schema>> _f$allOf =
      Field('allOf', _$allOf, mode: FieldMode.member);
  static List<Schema>? _$anyOf(ShapeBorderSchema v) => v.anyOf;
  static const Field<ShapeBorderSchema, List<Schema>> _f$anyOf =
      Field('anyOf', _$anyOf, mode: FieldMode.member);

  @override
  final MappableFields<ShapeBorderSchema> fields = const {
    #requiredProperties: _f$requiredProperties,
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
  };

  @override
  final String discriminatorKey = '_type';
  @override
  final dynamic discriminatorValue = 'shape_border';
  @override
  late final ClassMapperBase superMapper = SchemaMapper.ensureInitialized();

  static ShapeBorderSchema _instantiate(DecodingData data) {
    return ShapeBorderSchema(
        requiredProperties: data.dec(_f$requiredProperties),
        description: data.dec(_f$description),
        nullable: data.dec(_f$nullable));
  }

  @override
  final Function instantiate = _instantiate;

  static ShapeBorderSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ShapeBorderSchema>(map);
  }

  static ShapeBorderSchema fromJson(String json) {
    return ensureInitialized().decodeJson<ShapeBorderSchema>(json);
  }
}

mixin ShapeBorderSchemaMappable {
  String toJson() {
    return ShapeBorderSchemaMapper.ensureInitialized()
        .encodeJson<ShapeBorderSchema>(this as ShapeBorderSchema);
  }

  Map<String, dynamic> toMap() {
    return ShapeBorderSchemaMapper.ensureInitialized()
        .encodeMap<ShapeBorderSchema>(this as ShapeBorderSchema);
  }

  ShapeBorderSchemaCopyWith<ShapeBorderSchema, ShapeBorderSchema,
          ShapeBorderSchema>
      get copyWith => _ShapeBorderSchemaCopyWithImpl(
          this as ShapeBorderSchema, $identity, $identity);
  @override
  String toString() {
    return ShapeBorderSchemaMapper.ensureInitialized()
        .stringifyValue(this as ShapeBorderSchema);
  }

  @override
  bool operator ==(Object other) {
    return ShapeBorderSchemaMapper.ensureInitialized()
        .equalsValue(this as ShapeBorderSchema, other);
  }

  @override
  int get hashCode {
    return ShapeBorderSchemaMapper.ensureInitialized()
        .hashValue(this as ShapeBorderSchema);
  }
}

extension ShapeBorderSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ShapeBorderSchema, $Out> {
  ShapeBorderSchemaCopyWith<$R, ShapeBorderSchema, $Out>
      get $asShapeBorderSchema =>
          $base.as((v, t, t2) => _ShapeBorderSchemaCopyWithImpl(v, t, t2));
}

abstract class ShapeBorderSchemaCopyWith<$R, $In extends ShapeBorderSchema,
    $Out> implements SchemaCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties;
  @override
  $R call(
      {List<String>? requiredProperties, String? description, bool? nullable});
  ShapeBorderSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ShapeBorderSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ShapeBorderSchema, $Out>
    implements ShapeBorderSchemaCopyWith<$R, ShapeBorderSchema, $Out> {
  _ShapeBorderSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ShapeBorderSchema> $mapper =
      ShapeBorderSchemaMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties => $value.requiredProperties != null
          ? ListCopyWith(
              $value.requiredProperties!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(requiredProperties: v))
          : null;
  @override
  $R call(
          {Object? requiredProperties = $none,
          Object? description = $none,
          bool? nullable}) =>
      $apply(FieldCopyWithData({
        if (requiredProperties != $none)
          #requiredProperties: requiredProperties,
        if (description != $none) #description: description,
        if (nullable != null) #nullable: nullable
      }));
  @override
  ShapeBorderSchema $make(CopyWithData data) => ShapeBorderSchema(
      requiredProperties:
          data.get(#requiredProperties, or: $value.requiredProperties),
      description: data.get(#description, or: $value.description),
      nullable: data.get(#nullable, or: $value.nullable));

  @override
  ShapeBorderSchemaCopyWith<$R2, ShapeBorderSchema, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ShapeBorderSchemaCopyWithImpl($value, $cast, t);
}

class ShaderSchemaMapper extends SubClassMapperBase<ShaderSchema> {
  ShaderSchemaMapper._();

  static ShaderSchemaMapper? _instance;
  static ShaderSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ShaderSchemaMapper._());
      SchemaMapper.ensureInitialized().addSubMapper(_instance!);
      SchemaMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ShaderSchema';

  static List<String>? _$requiredProperties(ShaderSchema v) =>
      v.requiredProperties;
  static const Field<ShaderSchema, List<String>> _f$requiredProperties =
      Field('requiredProperties', _$requiredProperties, opt: true);
  static String? _$description(ShaderSchema v) => v.description;
  static const Field<ShaderSchema, String> _f$description =
      Field('description', _$description, opt: true);
  static bool _$nullable(ShaderSchema v) => v.nullable;
  static const Field<ShaderSchema, bool> _f$nullable =
      Field('nullable', _$nullable, opt: true, def: true);
  static Map<String, Schema>? _$properties(ShaderSchema v) => v.properties;
  static const Field<ShaderSchema, Map<String, Schema>> _f$properties =
      Field('properties', _$properties, opt: true);
  static String? _$ref(ShaderSchema v) => v.ref;
  static const Field<ShaderSchema, String> _f$ref =
      Field('ref', _$ref, mode: FieldMode.member);
  static Map<String, Schema>? _$schemas(ShaderSchema v) => v.schemas;
  static const Field<ShaderSchema, Map<String, Schema>> _f$schemas =
      Field('schemas', _$schemas, mode: FieldMode.member);
  static DataType? _$type(ShaderSchema v) => v.type;
  static const Field<ShaderSchema, DataType> _f$type =
      Field('type', _$type, mode: FieldMode.member);
  static String? _$format(ShaderSchema v) => v.format;
  static const Field<ShaderSchema, String> _f$format =
      Field('format', _$format, mode: FieldMode.member);
  static DiscriminatorSchema? _$discriminator(ShaderSchema v) =>
      v.discriminator;
  static const Field<ShaderSchema, DiscriminatorSchema> _f$discriminator =
      Field('discriminator', _$discriminator, mode: FieldMode.member);
  static List<String>? _$enumValues(ShaderSchema v) => v.enumValues;
  static const Field<ShaderSchema, List<String>> _f$enumValues =
      Field('enumValues', _$enumValues, mode: FieldMode.member);
  static Schema? _$items(ShaderSchema v) => v.items;
  static const Field<ShaderSchema, Schema> _f$items =
      Field('items', _$items, mode: FieldMode.member);
  static List<Schema>? _$oneOf(ShaderSchema v) => v.oneOf;
  static const Field<ShaderSchema, List<Schema>> _f$oneOf =
      Field('oneOf', _$oneOf, mode: FieldMode.member);
  static List<Schema>? _$allOf(ShaderSchema v) => v.allOf;
  static const Field<ShaderSchema, List<Schema>> _f$allOf =
      Field('allOf', _$allOf, mode: FieldMode.member);
  static List<Schema>? _$anyOf(ShaderSchema v) => v.anyOf;
  static const Field<ShaderSchema, List<Schema>> _f$anyOf =
      Field('anyOf', _$anyOf, mode: FieldMode.member);

  @override
  final MappableFields<ShaderSchema> fields = const {
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
  final dynamic discriminatorValue = 'shader';
  @override
  late final ClassMapperBase superMapper = SchemaMapper.ensureInitialized();

  static ShaderSchema _instantiate(DecodingData data) {
    return ShaderSchema(
        requiredProperties: data.dec(_f$requiredProperties),
        description: data.dec(_f$description),
        nullable: data.dec(_f$nullable),
        properties: data.dec(_f$properties));
  }

  @override
  final Function instantiate = _instantiate;

  static ShaderSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ShaderSchema>(map);
  }

  static ShaderSchema fromJson(String json) {
    return ensureInitialized().decodeJson<ShaderSchema>(json);
  }
}

mixin ShaderSchemaMappable {
  String toJson() {
    return ShaderSchemaMapper.ensureInitialized()
        .encodeJson<ShaderSchema>(this as ShaderSchema);
  }

  Map<String, dynamic> toMap() {
    return ShaderSchemaMapper.ensureInitialized()
        .encodeMap<ShaderSchema>(this as ShaderSchema);
  }

  ShaderSchemaCopyWith<ShaderSchema, ShaderSchema, ShaderSchema> get copyWith =>
      _ShaderSchemaCopyWithImpl(this as ShaderSchema, $identity, $identity);
  @override
  String toString() {
    return ShaderSchemaMapper.ensureInitialized()
        .stringifyValue(this as ShaderSchema);
  }

  @override
  bool operator ==(Object other) {
    return ShaderSchemaMapper.ensureInitialized()
        .equalsValue(this as ShaderSchema, other);
  }

  @override
  int get hashCode {
    return ShaderSchemaMapper.ensureInitialized()
        .hashValue(this as ShaderSchema);
  }
}

extension ShaderSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ShaderSchema, $Out> {
  ShaderSchemaCopyWith<$R, ShaderSchema, $Out> get $asShaderSchema =>
      $base.as((v, t, t2) => _ShaderSchemaCopyWithImpl(v, t, t2));
}

abstract class ShaderSchemaCopyWith<$R, $In extends ShaderSchema, $Out>
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
      Map<String, Schema>? properties});
  ShaderSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ShaderSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ShaderSchema, $Out>
    implements ShaderSchemaCopyWith<$R, ShaderSchema, $Out> {
  _ShaderSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ShaderSchema> $mapper =
      ShaderSchemaMapper.ensureInitialized();
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
          Object? properties = $none}) =>
      $apply(FieldCopyWithData({
        if (requiredProperties != $none)
          #requiredProperties: requiredProperties,
        if (description != $none) #description: description,
        if (nullable != null) #nullable: nullable,
        if (properties != $none) #properties: properties
      }));
  @override
  ShaderSchema $make(CopyWithData data) => ShaderSchema(
      requiredProperties:
          data.get(#requiredProperties, or: $value.requiredProperties),
      description: data.get(#description, or: $value.description),
      nullable: data.get(#nullable, or: $value.nullable),
      properties: data.get(#properties, or: $value.properties));

  @override
  ShaderSchemaCopyWith<$R2, ShaderSchema, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ShaderSchemaCopyWithImpl($value, $cast, t);
}

class OffsetSchemaMapper extends SubClassMapperBase<OffsetSchema> {
  OffsetSchemaMapper._();

  static OffsetSchemaMapper? _instance;
  static OffsetSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = OffsetSchemaMapper._());
      SchemaMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'OffsetSchema';

  static List<String>? _$requiredProperties(OffsetSchema v) =>
      v.requiredProperties;
  static const Field<OffsetSchema, List<String>> _f$requiredProperties =
      Field('requiredProperties', _$requiredProperties, opt: true);
  static String? _$description(OffsetSchema v) => v.description;
  static const Field<OffsetSchema, String> _f$description =
      Field('description', _$description, opt: true);
  static bool _$nullable(OffsetSchema v) => v.nullable;
  static const Field<OffsetSchema, bool> _f$nullable =
      Field('nullable', _$nullable, opt: true, def: true);
  static String? _$ref(OffsetSchema v) => v.ref;
  static const Field<OffsetSchema, String> _f$ref =
      Field('ref', _$ref, mode: FieldMode.member);
  static Map<String, Schema>? _$schemas(OffsetSchema v) => v.schemas;
  static const Field<OffsetSchema, Map<String, Schema>> _f$schemas =
      Field('schemas', _$schemas, mode: FieldMode.member);
  static DataType? _$type(OffsetSchema v) => v.type;
  static const Field<OffsetSchema, DataType> _f$type =
      Field('type', _$type, mode: FieldMode.member);
  static String? _$format(OffsetSchema v) => v.format;
  static const Field<OffsetSchema, String> _f$format =
      Field('format', _$format, mode: FieldMode.member);
  static DiscriminatorSchema? _$discriminator(OffsetSchema v) =>
      v.discriminator;
  static const Field<OffsetSchema, DiscriminatorSchema> _f$discriminator =
      Field('discriminator', _$discriminator, mode: FieldMode.member);
  static List<String>? _$enumValues(OffsetSchema v) => v.enumValues;
  static const Field<OffsetSchema, List<String>> _f$enumValues =
      Field('enumValues', _$enumValues, mode: FieldMode.member);
  static Schema? _$items(OffsetSchema v) => v.items;
  static const Field<OffsetSchema, Schema> _f$items =
      Field('items', _$items, mode: FieldMode.member);
  static Map<String, Schema>? _$properties(OffsetSchema v) => v.properties;
  static const Field<OffsetSchema, Map<String, Schema>> _f$properties =
      Field('properties', _$properties, mode: FieldMode.member);
  static List<Schema>? _$oneOf(OffsetSchema v) => v.oneOf;
  static const Field<OffsetSchema, List<Schema>> _f$oneOf =
      Field('oneOf', _$oneOf, mode: FieldMode.member);
  static List<Schema>? _$allOf(OffsetSchema v) => v.allOf;
  static const Field<OffsetSchema, List<Schema>> _f$allOf =
      Field('allOf', _$allOf, mode: FieldMode.member);
  static List<Schema>? _$anyOf(OffsetSchema v) => v.anyOf;
  static const Field<OffsetSchema, List<Schema>> _f$anyOf =
      Field('anyOf', _$anyOf, mode: FieldMode.member);

  @override
  final MappableFields<OffsetSchema> fields = const {
    #requiredProperties: _f$requiredProperties,
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
  };

  @override
  final String discriminatorKey = '_type';
  @override
  final dynamic discriminatorValue = 'offset';
  @override
  late final ClassMapperBase superMapper = SchemaMapper.ensureInitialized();

  static OffsetSchema _instantiate(DecodingData data) {
    return OffsetSchema(
        requiredProperties: data.dec(_f$requiredProperties),
        description: data.dec(_f$description),
        nullable: data.dec(_f$nullable));
  }

  @override
  final Function instantiate = _instantiate;

  static OffsetSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<OffsetSchema>(map);
  }

  static OffsetSchema fromJson(String json) {
    return ensureInitialized().decodeJson<OffsetSchema>(json);
  }
}

mixin OffsetSchemaMappable {
  String toJson() {
    return OffsetSchemaMapper.ensureInitialized()
        .encodeJson<OffsetSchema>(this as OffsetSchema);
  }

  Map<String, dynamic> toMap() {
    return OffsetSchemaMapper.ensureInitialized()
        .encodeMap<OffsetSchema>(this as OffsetSchema);
  }

  OffsetSchemaCopyWith<OffsetSchema, OffsetSchema, OffsetSchema> get copyWith =>
      _OffsetSchemaCopyWithImpl(this as OffsetSchema, $identity, $identity);
  @override
  String toString() {
    return OffsetSchemaMapper.ensureInitialized()
        .stringifyValue(this as OffsetSchema);
  }

  @override
  bool operator ==(Object other) {
    return OffsetSchemaMapper.ensureInitialized()
        .equalsValue(this as OffsetSchema, other);
  }

  @override
  int get hashCode {
    return OffsetSchemaMapper.ensureInitialized()
        .hashValue(this as OffsetSchema);
  }
}

extension OffsetSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, OffsetSchema, $Out> {
  OffsetSchemaCopyWith<$R, OffsetSchema, $Out> get $asOffsetSchema =>
      $base.as((v, t, t2) => _OffsetSchemaCopyWithImpl(v, t, t2));
}

abstract class OffsetSchemaCopyWith<$R, $In extends OffsetSchema, $Out>
    implements SchemaCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties;
  @override
  $R call(
      {List<String>? requiredProperties, String? description, bool? nullable});
  OffsetSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _OffsetSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, OffsetSchema, $Out>
    implements OffsetSchemaCopyWith<$R, OffsetSchema, $Out> {
  _OffsetSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<OffsetSchema> $mapper =
      OffsetSchemaMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties => $value.requiredProperties != null
          ? ListCopyWith(
              $value.requiredProperties!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(requiredProperties: v))
          : null;
  @override
  $R call(
          {Object? requiredProperties = $none,
          Object? description = $none,
          bool? nullable}) =>
      $apply(FieldCopyWithData({
        if (requiredProperties != $none)
          #requiredProperties: requiredProperties,
        if (description != $none) #description: description,
        if (nullable != null) #nullable: nullable
      }));
  @override
  OffsetSchema $make(CopyWithData data) => OffsetSchema(
      requiredProperties:
          data.get(#requiredProperties, or: $value.requiredProperties),
      description: data.get(#description, or: $value.description),
      nullable: data.get(#nullable, or: $value.nullable));

  @override
  OffsetSchemaCopyWith<$R2, OffsetSchema, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _OffsetSchemaCopyWithImpl($value, $cast, t);
}

class StrutStyleSchemaMapper extends SubClassMapperBase<StrutStyleSchema> {
  StrutStyleSchemaMapper._();

  static StrutStyleSchemaMapper? _instance;
  static StrutStyleSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = StrutStyleSchemaMapper._());
      SchemaMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'StrutStyleSchema';

  static List<String>? _$requiredProperties(StrutStyleSchema v) =>
      v.requiredProperties;
  static const Field<StrutStyleSchema, List<String>> _f$requiredProperties =
      Field('requiredProperties', _$requiredProperties, opt: true);
  static String? _$description(StrutStyleSchema v) => v.description;
  static const Field<StrutStyleSchema, String> _f$description =
      Field('description', _$description, opt: true);
  static bool _$nullable(StrutStyleSchema v) => v.nullable;
  static const Field<StrutStyleSchema, bool> _f$nullable =
      Field('nullable', _$nullable, opt: true, def: true);
  static String? _$ref(StrutStyleSchema v) => v.ref;
  static const Field<StrutStyleSchema, String> _f$ref =
      Field('ref', _$ref, mode: FieldMode.member);
  static Map<String, Schema>? _$schemas(StrutStyleSchema v) => v.schemas;
  static const Field<StrutStyleSchema, Map<String, Schema>> _f$schemas =
      Field('schemas', _$schemas, mode: FieldMode.member);
  static DataType? _$type(StrutStyleSchema v) => v.type;
  static const Field<StrutStyleSchema, DataType> _f$type =
      Field('type', _$type, mode: FieldMode.member);
  static String? _$format(StrutStyleSchema v) => v.format;
  static const Field<StrutStyleSchema, String> _f$format =
      Field('format', _$format, mode: FieldMode.member);
  static DiscriminatorSchema? _$discriminator(StrutStyleSchema v) =>
      v.discriminator;
  static const Field<StrutStyleSchema, DiscriminatorSchema> _f$discriminator =
      Field('discriminator', _$discriminator, mode: FieldMode.member);
  static List<String>? _$enumValues(StrutStyleSchema v) => v.enumValues;
  static const Field<StrutStyleSchema, List<String>> _f$enumValues =
      Field('enumValues', _$enumValues, mode: FieldMode.member);
  static Schema? _$items(StrutStyleSchema v) => v.items;
  static const Field<StrutStyleSchema, Schema> _f$items =
      Field('items', _$items, mode: FieldMode.member);
  static Map<String, Schema>? _$properties(StrutStyleSchema v) => v.properties;
  static const Field<StrutStyleSchema, Map<String, Schema>> _f$properties =
      Field('properties', _$properties, mode: FieldMode.member);
  static List<Schema>? _$oneOf(StrutStyleSchema v) => v.oneOf;
  static const Field<StrutStyleSchema, List<Schema>> _f$oneOf =
      Field('oneOf', _$oneOf, mode: FieldMode.member);
  static List<Schema>? _$allOf(StrutStyleSchema v) => v.allOf;
  static const Field<StrutStyleSchema, List<Schema>> _f$allOf =
      Field('allOf', _$allOf, mode: FieldMode.member);
  static List<Schema>? _$anyOf(StrutStyleSchema v) => v.anyOf;
  static const Field<StrutStyleSchema, List<Schema>> _f$anyOf =
      Field('anyOf', _$anyOf, mode: FieldMode.member);

  @override
  final MappableFields<StrutStyleSchema> fields = const {
    #requiredProperties: _f$requiredProperties,
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
  };

  @override
  final String discriminatorKey = '_type';
  @override
  final dynamic discriminatorValue = 'strut_style';
  @override
  late final ClassMapperBase superMapper = SchemaMapper.ensureInitialized();

  static StrutStyleSchema _instantiate(DecodingData data) {
    return StrutStyleSchema(
        requiredProperties: data.dec(_f$requiredProperties),
        description: data.dec(_f$description),
        nullable: data.dec(_f$nullable));
  }

  @override
  final Function instantiate = _instantiate;

  static StrutStyleSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<StrutStyleSchema>(map);
  }

  static StrutStyleSchema fromJson(String json) {
    return ensureInitialized().decodeJson<StrutStyleSchema>(json);
  }
}

mixin StrutStyleSchemaMappable {
  String toJson() {
    return StrutStyleSchemaMapper.ensureInitialized()
        .encodeJson<StrutStyleSchema>(this as StrutStyleSchema);
  }

  Map<String, dynamic> toMap() {
    return StrutStyleSchemaMapper.ensureInitialized()
        .encodeMap<StrutStyleSchema>(this as StrutStyleSchema);
  }

  StrutStyleSchemaCopyWith<StrutStyleSchema, StrutStyleSchema, StrutStyleSchema>
      get copyWith => _StrutStyleSchemaCopyWithImpl(
          this as StrutStyleSchema, $identity, $identity);
  @override
  String toString() {
    return StrutStyleSchemaMapper.ensureInitialized()
        .stringifyValue(this as StrutStyleSchema);
  }

  @override
  bool operator ==(Object other) {
    return StrutStyleSchemaMapper.ensureInitialized()
        .equalsValue(this as StrutStyleSchema, other);
  }

  @override
  int get hashCode {
    return StrutStyleSchemaMapper.ensureInitialized()
        .hashValue(this as StrutStyleSchema);
  }
}

extension StrutStyleSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, StrutStyleSchema, $Out> {
  StrutStyleSchemaCopyWith<$R, StrutStyleSchema, $Out>
      get $asStrutStyleSchema =>
          $base.as((v, t, t2) => _StrutStyleSchemaCopyWithImpl(v, t, t2));
}

abstract class StrutStyleSchemaCopyWith<$R, $In extends StrutStyleSchema, $Out>
    implements SchemaCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties;
  @override
  $R call(
      {List<String>? requiredProperties, String? description, bool? nullable});
  StrutStyleSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _StrutStyleSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, StrutStyleSchema, $Out>
    implements StrutStyleSchemaCopyWith<$R, StrutStyleSchema, $Out> {
  _StrutStyleSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<StrutStyleSchema> $mapper =
      StrutStyleSchemaMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties => $value.requiredProperties != null
          ? ListCopyWith(
              $value.requiredProperties!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(requiredProperties: v))
          : null;
  @override
  $R call(
          {Object? requiredProperties = $none,
          Object? description = $none,
          bool? nullable}) =>
      $apply(FieldCopyWithData({
        if (requiredProperties != $none)
          #requiredProperties: requiredProperties,
        if (description != $none) #description: description,
        if (nullable != null) #nullable: nullable
      }));
  @override
  StrutStyleSchema $make(CopyWithData data) => StrutStyleSchema(
      requiredProperties:
          data.get(#requiredProperties, or: $value.requiredProperties),
      description: data.get(#description, or: $value.description),
      nullable: data.get(#nullable, or: $value.nullable));

  @override
  StrutStyleSchemaCopyWith<$R2, StrutStyleSchema, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _StrutStyleSchemaCopyWithImpl($value, $cast, t);
}

class TextHeightBehaviorSchemaMapper
    extends SubClassMapperBase<TextHeightBehaviorSchema> {
  TextHeightBehaviorSchemaMapper._();

  static TextHeightBehaviorSchemaMapper? _instance;
  static TextHeightBehaviorSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = TextHeightBehaviorSchemaMapper._());
      SchemaMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'TextHeightBehaviorSchema';

  static List<String>? _$requiredProperties(TextHeightBehaviorSchema v) =>
      v.requiredProperties;
  static const Field<TextHeightBehaviorSchema, List<String>>
      _f$requiredProperties =
      Field('requiredProperties', _$requiredProperties, opt: true);
  static String? _$description(TextHeightBehaviorSchema v) => v.description;
  static const Field<TextHeightBehaviorSchema, String> _f$description =
      Field('description', _$description, opt: true);
  static bool _$nullable(TextHeightBehaviorSchema v) => v.nullable;
  static const Field<TextHeightBehaviorSchema, bool> _f$nullable =
      Field('nullable', _$nullable, opt: true, def: true);
  static String? _$ref(TextHeightBehaviorSchema v) => v.ref;
  static const Field<TextHeightBehaviorSchema, String> _f$ref =
      Field('ref', _$ref, mode: FieldMode.member);
  static Map<String, Schema>? _$schemas(TextHeightBehaviorSchema v) =>
      v.schemas;
  static const Field<TextHeightBehaviorSchema, Map<String, Schema>> _f$schemas =
      Field('schemas', _$schemas, mode: FieldMode.member);
  static DataType? _$type(TextHeightBehaviorSchema v) => v.type;
  static const Field<TextHeightBehaviorSchema, DataType> _f$type =
      Field('type', _$type, mode: FieldMode.member);
  static String? _$format(TextHeightBehaviorSchema v) => v.format;
  static const Field<TextHeightBehaviorSchema, String> _f$format =
      Field('format', _$format, mode: FieldMode.member);
  static DiscriminatorSchema? _$discriminator(TextHeightBehaviorSchema v) =>
      v.discriminator;
  static const Field<TextHeightBehaviorSchema, DiscriminatorSchema>
      _f$discriminator =
      Field('discriminator', _$discriminator, mode: FieldMode.member);
  static List<String>? _$enumValues(TextHeightBehaviorSchema v) => v.enumValues;
  static const Field<TextHeightBehaviorSchema, List<String>> _f$enumValues =
      Field('enumValues', _$enumValues, mode: FieldMode.member);
  static Schema? _$items(TextHeightBehaviorSchema v) => v.items;
  static const Field<TextHeightBehaviorSchema, Schema> _f$items =
      Field('items', _$items, mode: FieldMode.member);
  static Map<String, Schema>? _$properties(TextHeightBehaviorSchema v) =>
      v.properties;
  static const Field<TextHeightBehaviorSchema, Map<String, Schema>>
      _f$properties = Field('properties', _$properties, mode: FieldMode.member);
  static List<Schema>? _$oneOf(TextHeightBehaviorSchema v) => v.oneOf;
  static const Field<TextHeightBehaviorSchema, List<Schema>> _f$oneOf =
      Field('oneOf', _$oneOf, mode: FieldMode.member);
  static List<Schema>? _$allOf(TextHeightBehaviorSchema v) => v.allOf;
  static const Field<TextHeightBehaviorSchema, List<Schema>> _f$allOf =
      Field('allOf', _$allOf, mode: FieldMode.member);
  static List<Schema>? _$anyOf(TextHeightBehaviorSchema v) => v.anyOf;
  static const Field<TextHeightBehaviorSchema, List<Schema>> _f$anyOf =
      Field('anyOf', _$anyOf, mode: FieldMode.member);

  @override
  final MappableFields<TextHeightBehaviorSchema> fields = const {
    #requiredProperties: _f$requiredProperties,
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
  };

  @override
  final String discriminatorKey = '_type';
  @override
  final dynamic discriminatorValue = 'text_height_behavior';
  @override
  late final ClassMapperBase superMapper = SchemaMapper.ensureInitialized();

  static TextHeightBehaviorSchema _instantiate(DecodingData data) {
    return TextHeightBehaviorSchema(
        requiredProperties: data.dec(_f$requiredProperties),
        description: data.dec(_f$description),
        nullable: data.dec(_f$nullable));
  }

  @override
  final Function instantiate = _instantiate;

  static TextHeightBehaviorSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TextHeightBehaviorSchema>(map);
  }

  static TextHeightBehaviorSchema fromJson(String json) {
    return ensureInitialized().decodeJson<TextHeightBehaviorSchema>(json);
  }
}

mixin TextHeightBehaviorSchemaMappable {
  String toJson() {
    return TextHeightBehaviorSchemaMapper.ensureInitialized()
        .encodeJson<TextHeightBehaviorSchema>(this as TextHeightBehaviorSchema);
  }

  Map<String, dynamic> toMap() {
    return TextHeightBehaviorSchemaMapper.ensureInitialized()
        .encodeMap<TextHeightBehaviorSchema>(this as TextHeightBehaviorSchema);
  }

  TextHeightBehaviorSchemaCopyWith<TextHeightBehaviorSchema,
          TextHeightBehaviorSchema, TextHeightBehaviorSchema>
      get copyWith => _TextHeightBehaviorSchemaCopyWithImpl(
          this as TextHeightBehaviorSchema, $identity, $identity);
  @override
  String toString() {
    return TextHeightBehaviorSchemaMapper.ensureInitialized()
        .stringifyValue(this as TextHeightBehaviorSchema);
  }

  @override
  bool operator ==(Object other) {
    return TextHeightBehaviorSchemaMapper.ensureInitialized()
        .equalsValue(this as TextHeightBehaviorSchema, other);
  }

  @override
  int get hashCode {
    return TextHeightBehaviorSchemaMapper.ensureInitialized()
        .hashValue(this as TextHeightBehaviorSchema);
  }
}

extension TextHeightBehaviorSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TextHeightBehaviorSchema, $Out> {
  TextHeightBehaviorSchemaCopyWith<$R, TextHeightBehaviorSchema, $Out>
      get $asTextHeightBehaviorSchema => $base
          .as((v, t, t2) => _TextHeightBehaviorSchemaCopyWithImpl(v, t, t2));
}

abstract class TextHeightBehaviorSchemaCopyWith<
    $R,
    $In extends TextHeightBehaviorSchema,
    $Out> implements SchemaCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties;
  @override
  $R call(
      {List<String>? requiredProperties, String? description, bool? nullable});
  TextHeightBehaviorSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _TextHeightBehaviorSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TextHeightBehaviorSchema, $Out>
    implements
        TextHeightBehaviorSchemaCopyWith<$R, TextHeightBehaviorSchema, $Out> {
  _TextHeightBehaviorSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TextHeightBehaviorSchema> $mapper =
      TextHeightBehaviorSchemaMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties => $value.requiredProperties != null
          ? ListCopyWith(
              $value.requiredProperties!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(requiredProperties: v))
          : null;
  @override
  $R call(
          {Object? requiredProperties = $none,
          Object? description = $none,
          bool? nullable}) =>
      $apply(FieldCopyWithData({
        if (requiredProperties != $none)
          #requiredProperties: requiredProperties,
        if (description != $none) #description: description,
        if (nullable != null) #nullable: nullable
      }));
  @override
  TextHeightBehaviorSchema $make(CopyWithData data) => TextHeightBehaviorSchema(
      requiredProperties:
          data.get(#requiredProperties, or: $value.requiredProperties),
      description: data.get(#description, or: $value.description),
      nullable: data.get(#nullable, or: $value.nullable));

  @override
  TextHeightBehaviorSchemaCopyWith<$R2, TextHeightBehaviorSchema, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _TextHeightBehaviorSchemaCopyWithImpl($value, $cast, t);
}

class TextDecorationSchemaMapper
    extends SubClassMapperBase<TextDecorationSchema> {
  TextDecorationSchemaMapper._();

  static TextDecorationSchemaMapper? _instance;
  static TextDecorationSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TextDecorationSchemaMapper._());
      SchemaMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'TextDecorationSchema';

  static List<String>? _$requiredProperties(TextDecorationSchema v) =>
      v.requiredProperties;
  static const Field<TextDecorationSchema, List<String>> _f$requiredProperties =
      Field('requiredProperties', _$requiredProperties, opt: true);
  static String? _$description(TextDecorationSchema v) => v.description;
  static const Field<TextDecorationSchema, String> _f$description =
      Field('description', _$description, opt: true);
  static bool _$nullable(TextDecorationSchema v) => v.nullable;
  static const Field<TextDecorationSchema, bool> _f$nullable =
      Field('nullable', _$nullable, opt: true, def: true);
  static String? _$ref(TextDecorationSchema v) => v.ref;
  static const Field<TextDecorationSchema, String> _f$ref =
      Field('ref', _$ref, mode: FieldMode.member);
  static Map<String, Schema>? _$schemas(TextDecorationSchema v) => v.schemas;
  static const Field<TextDecorationSchema, Map<String, Schema>> _f$schemas =
      Field('schemas', _$schemas, mode: FieldMode.member);
  static DataType? _$type(TextDecorationSchema v) => v.type;
  static const Field<TextDecorationSchema, DataType> _f$type =
      Field('type', _$type, mode: FieldMode.member);
  static String? _$format(TextDecorationSchema v) => v.format;
  static const Field<TextDecorationSchema, String> _f$format =
      Field('format', _$format, mode: FieldMode.member);
  static DiscriminatorSchema? _$discriminator(TextDecorationSchema v) =>
      v.discriminator;
  static const Field<TextDecorationSchema, DiscriminatorSchema>
      _f$discriminator =
      Field('discriminator', _$discriminator, mode: FieldMode.member);
  static List<String>? _$enumValues(TextDecorationSchema v) => v.enumValues;
  static const Field<TextDecorationSchema, List<String>> _f$enumValues =
      Field('enumValues', _$enumValues, mode: FieldMode.member);
  static Schema? _$items(TextDecorationSchema v) => v.items;
  static const Field<TextDecorationSchema, Schema> _f$items =
      Field('items', _$items, mode: FieldMode.member);
  static Map<String, Schema>? _$properties(TextDecorationSchema v) =>
      v.properties;
  static const Field<TextDecorationSchema, Map<String, Schema>> _f$properties =
      Field('properties', _$properties, mode: FieldMode.member);
  static List<Schema>? _$oneOf(TextDecorationSchema v) => v.oneOf;
  static const Field<TextDecorationSchema, List<Schema>> _f$oneOf =
      Field('oneOf', _$oneOf, mode: FieldMode.member);
  static List<Schema>? _$allOf(TextDecorationSchema v) => v.allOf;
  static const Field<TextDecorationSchema, List<Schema>> _f$allOf =
      Field('allOf', _$allOf, mode: FieldMode.member);
  static List<Schema>? _$anyOf(TextDecorationSchema v) => v.anyOf;
  static const Field<TextDecorationSchema, List<Schema>> _f$anyOf =
      Field('anyOf', _$anyOf, mode: FieldMode.member);

  @override
  final MappableFields<TextDecorationSchema> fields = const {
    #requiredProperties: _f$requiredProperties,
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
  };

  @override
  final String discriminatorKey = '_type';
  @override
  final dynamic discriminatorValue = 'text_decoration';
  @override
  late final ClassMapperBase superMapper = SchemaMapper.ensureInitialized();

  static TextDecorationSchema _instantiate(DecodingData data) {
    return TextDecorationSchema(
        requiredProperties: data.dec(_f$requiredProperties),
        description: data.dec(_f$description),
        nullable: data.dec(_f$nullable));
  }

  @override
  final Function instantiate = _instantiate;

  static TextDecorationSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TextDecorationSchema>(map);
  }

  static TextDecorationSchema fromJson(String json) {
    return ensureInitialized().decodeJson<TextDecorationSchema>(json);
  }
}

mixin TextDecorationSchemaMappable {
  String toJson() {
    return TextDecorationSchemaMapper.ensureInitialized()
        .encodeJson<TextDecorationSchema>(this as TextDecorationSchema);
  }

  Map<String, dynamic> toMap() {
    return TextDecorationSchemaMapper.ensureInitialized()
        .encodeMap<TextDecorationSchema>(this as TextDecorationSchema);
  }

  TextDecorationSchemaCopyWith<TextDecorationSchema, TextDecorationSchema,
          TextDecorationSchema>
      get copyWith => _TextDecorationSchemaCopyWithImpl(
          this as TextDecorationSchema, $identity, $identity);
  @override
  String toString() {
    return TextDecorationSchemaMapper.ensureInitialized()
        .stringifyValue(this as TextDecorationSchema);
  }

  @override
  bool operator ==(Object other) {
    return TextDecorationSchemaMapper.ensureInitialized()
        .equalsValue(this as TextDecorationSchema, other);
  }

  @override
  int get hashCode {
    return TextDecorationSchemaMapper.ensureInitialized()
        .hashValue(this as TextDecorationSchema);
  }
}

extension TextDecorationSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TextDecorationSchema, $Out> {
  TextDecorationSchemaCopyWith<$R, TextDecorationSchema, $Out>
      get $asTextDecorationSchema =>
          $base.as((v, t, t2) => _TextDecorationSchemaCopyWithImpl(v, t, t2));
}

abstract class TextDecorationSchemaCopyWith<
    $R,
    $In extends TextDecorationSchema,
    $Out> implements SchemaCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties;
  @override
  $R call(
      {List<String>? requiredProperties, String? description, bool? nullable});
  TextDecorationSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _TextDecorationSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TextDecorationSchema, $Out>
    implements TextDecorationSchemaCopyWith<$R, TextDecorationSchema, $Out> {
  _TextDecorationSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TextDecorationSchema> $mapper =
      TextDecorationSchemaMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties => $value.requiredProperties != null
          ? ListCopyWith(
              $value.requiredProperties!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(requiredProperties: v))
          : null;
  @override
  $R call(
          {Object? requiredProperties = $none,
          Object? description = $none,
          bool? nullable}) =>
      $apply(FieldCopyWithData({
        if (requiredProperties != $none)
          #requiredProperties: requiredProperties,
        if (description != $none) #description: description,
        if (nullable != null) #nullable: nullable
      }));
  @override
  TextDecorationSchema $make(CopyWithData data) => TextDecorationSchema(
      requiredProperties:
          data.get(#requiredProperties, or: $value.requiredProperties),
      description: data.get(#description, or: $value.description),
      nullable: data.get(#nullable, or: $value.nullable));

  @override
  TextDecorationSchemaCopyWith<$R2, TextDecorationSchema, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _TextDecorationSchemaCopyWithImpl($value, $cast, t);
}

class TextStyleSchemaMapper extends SubClassMapperBase<TextStyleSchema> {
  TextStyleSchemaMapper._();

  static TextStyleSchemaMapper? _instance;
  static TextStyleSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TextStyleSchemaMapper._());
      SchemaMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'TextStyleSchema';

  static List<String>? _$requiredProperties(TextStyleSchema v) =>
      v.requiredProperties;
  static const Field<TextStyleSchema, List<String>> _f$requiredProperties =
      Field('requiredProperties', _$requiredProperties, opt: true);
  static String? _$description(TextStyleSchema v) => v.description;
  static const Field<TextStyleSchema, String> _f$description =
      Field('description', _$description, opt: true);
  static bool _$nullable(TextStyleSchema v) => v.nullable;
  static const Field<TextStyleSchema, bool> _f$nullable =
      Field('nullable', _$nullable, opt: true, def: true);
  static String? _$ref(TextStyleSchema v) => v.ref;
  static const Field<TextStyleSchema, String> _f$ref =
      Field('ref', _$ref, mode: FieldMode.member);
  static Map<String, Schema>? _$schemas(TextStyleSchema v) => v.schemas;
  static const Field<TextStyleSchema, Map<String, Schema>> _f$schemas =
      Field('schemas', _$schemas, mode: FieldMode.member);
  static DataType? _$type(TextStyleSchema v) => v.type;
  static const Field<TextStyleSchema, DataType> _f$type =
      Field('type', _$type, mode: FieldMode.member);
  static String? _$format(TextStyleSchema v) => v.format;
  static const Field<TextStyleSchema, String> _f$format =
      Field('format', _$format, mode: FieldMode.member);
  static DiscriminatorSchema? _$discriminator(TextStyleSchema v) =>
      v.discriminator;
  static const Field<TextStyleSchema, DiscriminatorSchema> _f$discriminator =
      Field('discriminator', _$discriminator, mode: FieldMode.member);
  static List<String>? _$enumValues(TextStyleSchema v) => v.enumValues;
  static const Field<TextStyleSchema, List<String>> _f$enumValues =
      Field('enumValues', _$enumValues, mode: FieldMode.member);
  static Schema? _$items(TextStyleSchema v) => v.items;
  static const Field<TextStyleSchema, Schema> _f$items =
      Field('items', _$items, mode: FieldMode.member);
  static Map<String, Schema>? _$properties(TextStyleSchema v) => v.properties;
  static const Field<TextStyleSchema, Map<String, Schema>> _f$properties =
      Field('properties', _$properties, mode: FieldMode.member);
  static List<Schema>? _$oneOf(TextStyleSchema v) => v.oneOf;
  static const Field<TextStyleSchema, List<Schema>> _f$oneOf =
      Field('oneOf', _$oneOf, mode: FieldMode.member);
  static List<Schema>? _$allOf(TextStyleSchema v) => v.allOf;
  static const Field<TextStyleSchema, List<Schema>> _f$allOf =
      Field('allOf', _$allOf, mode: FieldMode.member);
  static List<Schema>? _$anyOf(TextStyleSchema v) => v.anyOf;
  static const Field<TextStyleSchema, List<Schema>> _f$anyOf =
      Field('anyOf', _$anyOf, mode: FieldMode.member);

  @override
  final MappableFields<TextStyleSchema> fields = const {
    #requiredProperties: _f$requiredProperties,
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
  };

  @override
  final String discriminatorKey = '_type';
  @override
  final dynamic discriminatorValue = 'text_style';
  @override
  late final ClassMapperBase superMapper = SchemaMapper.ensureInitialized();

  static TextStyleSchema _instantiate(DecodingData data) {
    return TextStyleSchema(
        requiredProperties: data.dec(_f$requiredProperties),
        description: data.dec(_f$description),
        nullable: data.dec(_f$nullable));
  }

  @override
  final Function instantiate = _instantiate;

  static TextStyleSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TextStyleSchema>(map);
  }

  static TextStyleSchema fromJson(String json) {
    return ensureInitialized().decodeJson<TextStyleSchema>(json);
  }
}

mixin TextStyleSchemaMappable {
  String toJson() {
    return TextStyleSchemaMapper.ensureInitialized()
        .encodeJson<TextStyleSchema>(this as TextStyleSchema);
  }

  Map<String, dynamic> toMap() {
    return TextStyleSchemaMapper.ensureInitialized()
        .encodeMap<TextStyleSchema>(this as TextStyleSchema);
  }

  TextStyleSchemaCopyWith<TextStyleSchema, TextStyleSchema, TextStyleSchema>
      get copyWith => _TextStyleSchemaCopyWithImpl(
          this as TextStyleSchema, $identity, $identity);
  @override
  String toString() {
    return TextStyleSchemaMapper.ensureInitialized()
        .stringifyValue(this as TextStyleSchema);
  }

  @override
  bool operator ==(Object other) {
    return TextStyleSchemaMapper.ensureInitialized()
        .equalsValue(this as TextStyleSchema, other);
  }

  @override
  int get hashCode {
    return TextStyleSchemaMapper.ensureInitialized()
        .hashValue(this as TextStyleSchema);
  }
}

extension TextStyleSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TextStyleSchema, $Out> {
  TextStyleSchemaCopyWith<$R, TextStyleSchema, $Out> get $asTextStyleSchema =>
      $base.as((v, t, t2) => _TextStyleSchemaCopyWithImpl(v, t, t2));
}

abstract class TextStyleSchemaCopyWith<$R, $In extends TextStyleSchema, $Out>
    implements SchemaCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties;
  @override
  $R call(
      {List<String>? requiredProperties, String? description, bool? nullable});
  TextStyleSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _TextStyleSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TextStyleSchema, $Out>
    implements TextStyleSchemaCopyWith<$R, TextStyleSchema, $Out> {
  _TextStyleSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TextStyleSchema> $mapper =
      TextStyleSchemaMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties => $value.requiredProperties != null
          ? ListCopyWith(
              $value.requiredProperties!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(requiredProperties: v))
          : null;
  @override
  $R call(
          {Object? requiredProperties = $none,
          Object? description = $none,
          bool? nullable}) =>
      $apply(FieldCopyWithData({
        if (requiredProperties != $none)
          #requiredProperties: requiredProperties,
        if (description != $none) #description: description,
        if (nullable != null) #nullable: nullable
      }));
  @override
  TextStyleSchema $make(CopyWithData data) => TextStyleSchema(
      requiredProperties:
          data.get(#requiredProperties, or: $value.requiredProperties),
      description: data.get(#description, or: $value.description),
      nullable: data.get(#nullable, or: $value.nullable));

  @override
  TextStyleSchemaCopyWith<$R2, TextStyleSchema, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _TextStyleSchemaCopyWithImpl($value, $cast, t);
}

class BoxShadowSchemaMapper extends SubClassMapperBase<BoxShadowSchema> {
  BoxShadowSchemaMapper._();

  static BoxShadowSchemaMapper? _instance;
  static BoxShadowSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BoxShadowSchemaMapper._());
      SchemaMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'BoxShadowSchema';

  static List<String>? _$requiredProperties(BoxShadowSchema v) =>
      v.requiredProperties;
  static const Field<BoxShadowSchema, List<String>> _f$requiredProperties =
      Field('requiredProperties', _$requiredProperties, opt: true);
  static String? _$description(BoxShadowSchema v) => v.description;
  static const Field<BoxShadowSchema, String> _f$description =
      Field('description', _$description, opt: true);
  static bool _$nullable(BoxShadowSchema v) => v.nullable;
  static const Field<BoxShadowSchema, bool> _f$nullable =
      Field('nullable', _$nullable, opt: true, def: true);
  static String? _$ref(BoxShadowSchema v) => v.ref;
  static const Field<BoxShadowSchema, String> _f$ref =
      Field('ref', _$ref, mode: FieldMode.member);
  static Map<String, Schema>? _$schemas(BoxShadowSchema v) => v.schemas;
  static const Field<BoxShadowSchema, Map<String, Schema>> _f$schemas =
      Field('schemas', _$schemas, mode: FieldMode.member);
  static DataType? _$type(BoxShadowSchema v) => v.type;
  static const Field<BoxShadowSchema, DataType> _f$type =
      Field('type', _$type, mode: FieldMode.member);
  static String? _$format(BoxShadowSchema v) => v.format;
  static const Field<BoxShadowSchema, String> _f$format =
      Field('format', _$format, mode: FieldMode.member);
  static DiscriminatorSchema? _$discriminator(BoxShadowSchema v) =>
      v.discriminator;
  static const Field<BoxShadowSchema, DiscriminatorSchema> _f$discriminator =
      Field('discriminator', _$discriminator, mode: FieldMode.member);
  static List<String>? _$enumValues(BoxShadowSchema v) => v.enumValues;
  static const Field<BoxShadowSchema, List<String>> _f$enumValues =
      Field('enumValues', _$enumValues, mode: FieldMode.member);
  static Schema? _$items(BoxShadowSchema v) => v.items;
  static const Field<BoxShadowSchema, Schema> _f$items =
      Field('items', _$items, mode: FieldMode.member);
  static Map<String, Schema>? _$properties(BoxShadowSchema v) => v.properties;
  static const Field<BoxShadowSchema, Map<String, Schema>> _f$properties =
      Field('properties', _$properties, mode: FieldMode.member);
  static List<Schema>? _$oneOf(BoxShadowSchema v) => v.oneOf;
  static const Field<BoxShadowSchema, List<Schema>> _f$oneOf =
      Field('oneOf', _$oneOf, mode: FieldMode.member);
  static List<Schema>? _$allOf(BoxShadowSchema v) => v.allOf;
  static const Field<BoxShadowSchema, List<Schema>> _f$allOf =
      Field('allOf', _$allOf, mode: FieldMode.member);
  static List<Schema>? _$anyOf(BoxShadowSchema v) => v.anyOf;
  static const Field<BoxShadowSchema, List<Schema>> _f$anyOf =
      Field('anyOf', _$anyOf, mode: FieldMode.member);

  @override
  final MappableFields<BoxShadowSchema> fields = const {
    #requiredProperties: _f$requiredProperties,
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
  };

  @override
  final String discriminatorKey = '_type';
  @override
  final dynamic discriminatorValue = 'box_shadow';
  @override
  late final ClassMapperBase superMapper = SchemaMapper.ensureInitialized();

  static BoxShadowSchema _instantiate(DecodingData data) {
    return BoxShadowSchema(
        requiredProperties: data.dec(_f$requiredProperties),
        description: data.dec(_f$description),
        nullable: data.dec(_f$nullable));
  }

  @override
  final Function instantiate = _instantiate;

  static BoxShadowSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BoxShadowSchema>(map);
  }

  static BoxShadowSchema fromJson(String json) {
    return ensureInitialized().decodeJson<BoxShadowSchema>(json);
  }
}

mixin BoxShadowSchemaMappable {
  String toJson() {
    return BoxShadowSchemaMapper.ensureInitialized()
        .encodeJson<BoxShadowSchema>(this as BoxShadowSchema);
  }

  Map<String, dynamic> toMap() {
    return BoxShadowSchemaMapper.ensureInitialized()
        .encodeMap<BoxShadowSchema>(this as BoxShadowSchema);
  }

  BoxShadowSchemaCopyWith<BoxShadowSchema, BoxShadowSchema, BoxShadowSchema>
      get copyWith => _BoxShadowSchemaCopyWithImpl(
          this as BoxShadowSchema, $identity, $identity);
  @override
  String toString() {
    return BoxShadowSchemaMapper.ensureInitialized()
        .stringifyValue(this as BoxShadowSchema);
  }

  @override
  bool operator ==(Object other) {
    return BoxShadowSchemaMapper.ensureInitialized()
        .equalsValue(this as BoxShadowSchema, other);
  }

  @override
  int get hashCode {
    return BoxShadowSchemaMapper.ensureInitialized()
        .hashValue(this as BoxShadowSchema);
  }
}

extension BoxShadowSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, BoxShadowSchema, $Out> {
  BoxShadowSchemaCopyWith<$R, BoxShadowSchema, $Out> get $asBoxShadowSchema =>
      $base.as((v, t, t2) => _BoxShadowSchemaCopyWithImpl(v, t, t2));
}

abstract class BoxShadowSchemaCopyWith<$R, $In extends BoxShadowSchema, $Out>
    implements SchemaCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties;
  @override
  $R call(
      {List<String>? requiredProperties, String? description, bool? nullable});
  BoxShadowSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _BoxShadowSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BoxShadowSchema, $Out>
    implements BoxShadowSchemaCopyWith<$R, BoxShadowSchema, $Out> {
  _BoxShadowSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BoxShadowSchema> $mapper =
      BoxShadowSchemaMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties => $value.requiredProperties != null
          ? ListCopyWith(
              $value.requiredProperties!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(requiredProperties: v))
          : null;
  @override
  $R call(
          {Object? requiredProperties = $none,
          Object? description = $none,
          bool? nullable}) =>
      $apply(FieldCopyWithData({
        if (requiredProperties != $none)
          #requiredProperties: requiredProperties,
        if (description != $none) #description: description,
        if (nullable != null) #nullable: nullable
      }));
  @override
  BoxShadowSchema $make(CopyWithData data) => BoxShadowSchema(
      requiredProperties:
          data.get(#requiredProperties, or: $value.requiredProperties),
      description: data.get(#description, or: $value.description),
      nullable: data.get(#nullable, or: $value.nullable));

  @override
  BoxShadowSchemaCopyWith<$R2, BoxShadowSchema, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _BoxShadowSchemaCopyWithImpl($value, $cast, t);
}

class VisualDensitySchemaMapper
    extends SubClassMapperBase<VisualDensitySchema> {
  VisualDensitySchemaMapper._();

  static VisualDensitySchemaMapper? _instance;
  static VisualDensitySchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = VisualDensitySchemaMapper._());
      SchemaMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'VisualDensitySchema';

  static List<String>? _$requiredProperties(VisualDensitySchema v) =>
      v.requiredProperties;
  static const Field<VisualDensitySchema, List<String>> _f$requiredProperties =
      Field('requiredProperties', _$requiredProperties, opt: true);
  static String? _$description(VisualDensitySchema v) => v.description;
  static const Field<VisualDensitySchema, String> _f$description =
      Field('description', _$description, opt: true);
  static bool _$nullable(VisualDensitySchema v) => v.nullable;
  static const Field<VisualDensitySchema, bool> _f$nullable =
      Field('nullable', _$nullable, opt: true, def: true);
  static String? _$ref(VisualDensitySchema v) => v.ref;
  static const Field<VisualDensitySchema, String> _f$ref =
      Field('ref', _$ref, mode: FieldMode.member);
  static Map<String, Schema>? _$schemas(VisualDensitySchema v) => v.schemas;
  static const Field<VisualDensitySchema, Map<String, Schema>> _f$schemas =
      Field('schemas', _$schemas, mode: FieldMode.member);
  static DataType? _$type(VisualDensitySchema v) => v.type;
  static const Field<VisualDensitySchema, DataType> _f$type =
      Field('type', _$type, mode: FieldMode.member);
  static String? _$format(VisualDensitySchema v) => v.format;
  static const Field<VisualDensitySchema, String> _f$format =
      Field('format', _$format, mode: FieldMode.member);
  static DiscriminatorSchema? _$discriminator(VisualDensitySchema v) =>
      v.discriminator;
  static const Field<VisualDensitySchema, DiscriminatorSchema>
      _f$discriminator =
      Field('discriminator', _$discriminator, mode: FieldMode.member);
  static List<String>? _$enumValues(VisualDensitySchema v) => v.enumValues;
  static const Field<VisualDensitySchema, List<String>> _f$enumValues =
      Field('enumValues', _$enumValues, mode: FieldMode.member);
  static Schema? _$items(VisualDensitySchema v) => v.items;
  static const Field<VisualDensitySchema, Schema> _f$items =
      Field('items', _$items, mode: FieldMode.member);
  static Map<String, Schema>? _$properties(VisualDensitySchema v) =>
      v.properties;
  static const Field<VisualDensitySchema, Map<String, Schema>> _f$properties =
      Field('properties', _$properties, mode: FieldMode.member);
  static List<Schema>? _$oneOf(VisualDensitySchema v) => v.oneOf;
  static const Field<VisualDensitySchema, List<Schema>> _f$oneOf =
      Field('oneOf', _$oneOf, mode: FieldMode.member);
  static List<Schema>? _$allOf(VisualDensitySchema v) => v.allOf;
  static const Field<VisualDensitySchema, List<Schema>> _f$allOf =
      Field('allOf', _$allOf, mode: FieldMode.member);
  static List<Schema>? _$anyOf(VisualDensitySchema v) => v.anyOf;
  static const Field<VisualDensitySchema, List<Schema>> _f$anyOf =
      Field('anyOf', _$anyOf, mode: FieldMode.member);

  @override
  final MappableFields<VisualDensitySchema> fields = const {
    #requiredProperties: _f$requiredProperties,
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
  };

  @override
  final String discriminatorKey = '_type';
  @override
  final dynamic discriminatorValue = 'visual_density';
  @override
  late final ClassMapperBase superMapper = SchemaMapper.ensureInitialized();

  static VisualDensitySchema _instantiate(DecodingData data) {
    return VisualDensitySchema(
        requiredProperties: data.dec(_f$requiredProperties),
        description: data.dec(_f$description),
        nullable: data.dec(_f$nullable));
  }

  @override
  final Function instantiate = _instantiate;

  static VisualDensitySchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<VisualDensitySchema>(map);
  }

  static VisualDensitySchema fromJson(String json) {
    return ensureInitialized().decodeJson<VisualDensitySchema>(json);
  }
}

mixin VisualDensitySchemaMappable {
  String toJson() {
    return VisualDensitySchemaMapper.ensureInitialized()
        .encodeJson<VisualDensitySchema>(this as VisualDensitySchema);
  }

  Map<String, dynamic> toMap() {
    return VisualDensitySchemaMapper.ensureInitialized()
        .encodeMap<VisualDensitySchema>(this as VisualDensitySchema);
  }

  VisualDensitySchemaCopyWith<VisualDensitySchema, VisualDensitySchema,
          VisualDensitySchema>
      get copyWith => _VisualDensitySchemaCopyWithImpl(
          this as VisualDensitySchema, $identity, $identity);
  @override
  String toString() {
    return VisualDensitySchemaMapper.ensureInitialized()
        .stringifyValue(this as VisualDensitySchema);
  }

  @override
  bool operator ==(Object other) {
    return VisualDensitySchemaMapper.ensureInitialized()
        .equalsValue(this as VisualDensitySchema, other);
  }

  @override
  int get hashCode {
    return VisualDensitySchemaMapper.ensureInitialized()
        .hashValue(this as VisualDensitySchema);
  }
}

extension VisualDensitySchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, VisualDensitySchema, $Out> {
  VisualDensitySchemaCopyWith<$R, VisualDensitySchema, $Out>
      get $asVisualDensitySchema =>
          $base.as((v, t, t2) => _VisualDensitySchemaCopyWithImpl(v, t, t2));
}

abstract class VisualDensitySchemaCopyWith<$R, $In extends VisualDensitySchema,
    $Out> implements SchemaCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties;
  @override
  $R call(
      {List<String>? requiredProperties, String? description, bool? nullable});
  VisualDensitySchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _VisualDensitySchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, VisualDensitySchema, $Out>
    implements VisualDensitySchemaCopyWith<$R, VisualDensitySchema, $Out> {
  _VisualDensitySchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<VisualDensitySchema> $mapper =
      VisualDensitySchemaMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get requiredProperties => $value.requiredProperties != null
          ? ListCopyWith(
              $value.requiredProperties!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(requiredProperties: v))
          : null;
  @override
  $R call(
          {Object? requiredProperties = $none,
          Object? description = $none,
          bool? nullable}) =>
      $apply(FieldCopyWithData({
        if (requiredProperties != $none)
          #requiredProperties: requiredProperties,
        if (description != $none) #description: description,
        if (nullable != null) #nullable: nullable
      }));
  @override
  VisualDensitySchema $make(CopyWithData data) => VisualDensitySchema(
      requiredProperties:
          data.get(#requiredProperties, or: $value.requiredProperties),
      description: data.get(#description, or: $value.description),
      nullable: data.get(#nullable, or: $value.nullable));

  @override
  VisualDensitySchemaCopyWith<$R2, VisualDensitySchema, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _VisualDensitySchemaCopyWithImpl($value, $cast, t);
}

class WidgetSchemaMapper extends SubClassMapperBase<WidgetSchema> {
  WidgetSchemaMapper._();

  static WidgetSchemaMapper? _instance;
  static WidgetSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = WidgetSchemaMapper._());
      SchemaMapper.ensureInitialized().addSubMapper(_instance!);
      SchemaMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'WidgetSchema';

  static List<String>? _$requiredProperties(WidgetSchema v) =>
      v.requiredProperties;
  static const Field<WidgetSchema, List<String>> _f$requiredProperties =
      Field('requiredProperties', _$requiredProperties, opt: true);
  static String? _$description(WidgetSchema v) => v.description;
  static const Field<WidgetSchema, String> _f$description =
      Field('description', _$description, opt: true);
  static bool _$nullable(WidgetSchema v) => v.nullable;
  static const Field<WidgetSchema, bool> _f$nullable =
      Field('nullable', _$nullable, opt: true, def: true);
  static Map<String, Schema>? _$properties(WidgetSchema v) => v.properties;
  static const Field<WidgetSchema, Map<String, Schema>> _f$properties =
      Field('properties', _$properties, opt: true);
  static String? _$ref(WidgetSchema v) => v.ref;
  static const Field<WidgetSchema, String> _f$ref =
      Field('ref', _$ref, mode: FieldMode.member);
  static Map<String, Schema>? _$schemas(WidgetSchema v) => v.schemas;
  static const Field<WidgetSchema, Map<String, Schema>> _f$schemas =
      Field('schemas', _$schemas, mode: FieldMode.member);
  static DataType? _$type(WidgetSchema v) => v.type;
  static const Field<WidgetSchema, DataType> _f$type =
      Field('type', _$type, mode: FieldMode.member);
  static String? _$format(WidgetSchema v) => v.format;
  static const Field<WidgetSchema, String> _f$format =
      Field('format', _$format, mode: FieldMode.member);
  static DiscriminatorSchema? _$discriminator(WidgetSchema v) =>
      v.discriminator;
  static const Field<WidgetSchema, DiscriminatorSchema> _f$discriminator =
      Field('discriminator', _$discriminator, mode: FieldMode.member);
  static List<String>? _$enumValues(WidgetSchema v) => v.enumValues;
  static const Field<WidgetSchema, List<String>> _f$enumValues =
      Field('enumValues', _$enumValues, mode: FieldMode.member);
  static Schema? _$items(WidgetSchema v) => v.items;
  static const Field<WidgetSchema, Schema> _f$items =
      Field('items', _$items, mode: FieldMode.member);
  static List<Schema>? _$oneOf(WidgetSchema v) => v.oneOf;
  static const Field<WidgetSchema, List<Schema>> _f$oneOf =
      Field('oneOf', _$oneOf, mode: FieldMode.member);
  static List<Schema>? _$allOf(WidgetSchema v) => v.allOf;
  static const Field<WidgetSchema, List<Schema>> _f$allOf =
      Field('allOf', _$allOf, mode: FieldMode.member);
  static List<Schema>? _$anyOf(WidgetSchema v) => v.anyOf;
  static const Field<WidgetSchema, List<Schema>> _f$anyOf =
      Field('anyOf', _$anyOf, mode: FieldMode.member);

  @override
  final MappableFields<WidgetSchema> fields = const {
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
  final dynamic discriminatorValue = 'widget';
  @override
  late final ClassMapperBase superMapper = SchemaMapper.ensureInitialized();

  static WidgetSchema _instantiate(DecodingData data) {
    return WidgetSchema(
        requiredProperties: data.dec(_f$requiredProperties),
        description: data.dec(_f$description),
        nullable: data.dec(_f$nullable),
        properties: data.dec(_f$properties));
  }

  @override
  final Function instantiate = _instantiate;

  static WidgetSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<WidgetSchema>(map);
  }

  static WidgetSchema fromJson(String json) {
    return ensureInitialized().decodeJson<WidgetSchema>(json);
  }
}

mixin WidgetSchemaMappable {
  String toJson() {
    return WidgetSchemaMapper.ensureInitialized()
        .encodeJson<WidgetSchema>(this as WidgetSchema);
  }

  Map<String, dynamic> toMap() {
    return WidgetSchemaMapper.ensureInitialized()
        .encodeMap<WidgetSchema>(this as WidgetSchema);
  }

  WidgetSchemaCopyWith<WidgetSchema, WidgetSchema, WidgetSchema> get copyWith =>
      _WidgetSchemaCopyWithImpl(this as WidgetSchema, $identity, $identity);
  @override
  String toString() {
    return WidgetSchemaMapper.ensureInitialized()
        .stringifyValue(this as WidgetSchema);
  }

  @override
  bool operator ==(Object other) {
    return WidgetSchemaMapper.ensureInitialized()
        .equalsValue(this as WidgetSchema, other);
  }

  @override
  int get hashCode {
    return WidgetSchemaMapper.ensureInitialized()
        .hashValue(this as WidgetSchema);
  }
}

extension WidgetSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, WidgetSchema, $Out> {
  WidgetSchemaCopyWith<$R, WidgetSchema, $Out> get $asWidgetSchema =>
      $base.as((v, t, t2) => _WidgetSchemaCopyWithImpl(v, t, t2));
}

abstract class WidgetSchemaCopyWith<$R, $In extends WidgetSchema, $Out>
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
      Map<String, Schema>? properties});
  WidgetSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _WidgetSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, WidgetSchema, $Out>
    implements WidgetSchemaCopyWith<$R, WidgetSchema, $Out> {
  _WidgetSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<WidgetSchema> $mapper =
      WidgetSchemaMapper.ensureInitialized();
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
          Object? properties = $none}) =>
      $apply(FieldCopyWithData({
        if (requiredProperties != $none)
          #requiredProperties: requiredProperties,
        if (description != $none) #description: description,
        if (nullable != null) #nullable: nullable,
        if (properties != $none) #properties: properties
      }));
  @override
  WidgetSchema $make(CopyWithData data) => WidgetSchema(
      requiredProperties:
          data.get(#requiredProperties, or: $value.requiredProperties),
      description: data.get(#description, or: $value.description),
      nullable: data.get(#nullable, or: $value.nullable),
      properties: data.get(#properties, or: $value.properties));

  @override
  WidgetSchemaCopyWith<$R2, WidgetSchema, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _WidgetSchemaCopyWithImpl($value, $cast, t);
}

class HandlerSchemaMapper extends SubClassMapperBase<HandlerSchema> {
  HandlerSchemaMapper._();

  static HandlerSchemaMapper? _instance;
  static HandlerSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = HandlerSchemaMapper._());
      SchemaMapper.ensureInitialized().addSubMapper(_instance!);
      VoidHandlerSchemaMapper.ensureInitialized();
      SchemaMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'HandlerSchema';

  static List<String>? _$requiredProperties(HandlerSchema v) =>
      v.requiredProperties;
  static const Field<HandlerSchema, List<String>> _f$requiredProperties =
      Field('requiredProperties', _$requiredProperties, opt: true);
  static String? _$description(HandlerSchema v) => v.description;
  static const Field<HandlerSchema, String> _f$description =
      Field('description', _$description, opt: true);
  static bool _$nullable(HandlerSchema v) => v.nullable;
  static const Field<HandlerSchema, bool> _f$nullable =
      Field('nullable', _$nullable, opt: true, def: true);
  static Map<String, Schema>? _$properties(HandlerSchema v) => v.properties;
  static const Field<HandlerSchema, Map<String, Schema>> _f$properties =
      Field('properties', _$properties, opt: true);
  static String? _$ref(HandlerSchema v) => v.ref;
  static const Field<HandlerSchema, String> _f$ref =
      Field('ref', _$ref, mode: FieldMode.member);
  static Map<String, Schema>? _$schemas(HandlerSchema v) => v.schemas;
  static const Field<HandlerSchema, Map<String, Schema>> _f$schemas =
      Field('schemas', _$schemas, mode: FieldMode.member);
  static DataType? _$type(HandlerSchema v) => v.type;
  static const Field<HandlerSchema, DataType> _f$type =
      Field('type', _$type, mode: FieldMode.member);
  static String? _$format(HandlerSchema v) => v.format;
  static const Field<HandlerSchema, String> _f$format =
      Field('format', _$format, mode: FieldMode.member);
  static DiscriminatorSchema? _$discriminator(HandlerSchema v) =>
      v.discriminator;
  static const Field<HandlerSchema, DiscriminatorSchema> _f$discriminator =
      Field('discriminator', _$discriminator, mode: FieldMode.member);
  static List<String>? _$enumValues(HandlerSchema v) => v.enumValues;
  static const Field<HandlerSchema, List<String>> _f$enumValues =
      Field('enumValues', _$enumValues, mode: FieldMode.member);
  static Schema? _$items(HandlerSchema v) => v.items;
  static const Field<HandlerSchema, Schema> _f$items =
      Field('items', _$items, mode: FieldMode.member);
  static List<Schema>? _$oneOf(HandlerSchema v) => v.oneOf;
  static const Field<HandlerSchema, List<Schema>> _f$oneOf =
      Field('oneOf', _$oneOf, mode: FieldMode.member);
  static List<Schema>? _$allOf(HandlerSchema v) => v.allOf;
  static const Field<HandlerSchema, List<Schema>> _f$allOf =
      Field('allOf', _$allOf, mode: FieldMode.member);
  static List<Schema>? _$anyOf(HandlerSchema v) => v.anyOf;
  static const Field<HandlerSchema, List<Schema>> _f$anyOf =
      Field('anyOf', _$anyOf, mode: FieldMode.member);

  @override
  final MappableFields<HandlerSchema> fields = const {
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
  final dynamic discriminatorValue = 'handler';
  @override
  late final ClassMapperBase superMapper = SchemaMapper.ensureInitialized();

  static HandlerSchema _instantiate(DecodingData data) {
    return HandlerSchema(
        requiredProperties: data.dec(_f$requiredProperties),
        description: data.dec(_f$description),
        nullable: data.dec(_f$nullable),
        properties: data.dec(_f$properties));
  }

  @override
  final Function instantiate = _instantiate;

  static HandlerSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<HandlerSchema>(map);
  }

  static HandlerSchema fromJson(String json) {
    return ensureInitialized().decodeJson<HandlerSchema>(json);
  }
}

mixin HandlerSchemaMappable {
  String toJson() {
    return HandlerSchemaMapper.ensureInitialized()
        .encodeJson<HandlerSchema>(this as HandlerSchema);
  }

  Map<String, dynamic> toMap() {
    return HandlerSchemaMapper.ensureInitialized()
        .encodeMap<HandlerSchema>(this as HandlerSchema);
  }

  HandlerSchemaCopyWith<HandlerSchema, HandlerSchema, HandlerSchema>
      get copyWith => _HandlerSchemaCopyWithImpl(
          this as HandlerSchema, $identity, $identity);
  @override
  String toString() {
    return HandlerSchemaMapper.ensureInitialized()
        .stringifyValue(this as HandlerSchema);
  }

  @override
  bool operator ==(Object other) {
    return HandlerSchemaMapper.ensureInitialized()
        .equalsValue(this as HandlerSchema, other);
  }

  @override
  int get hashCode {
    return HandlerSchemaMapper.ensureInitialized()
        .hashValue(this as HandlerSchema);
  }
}

extension HandlerSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, HandlerSchema, $Out> {
  HandlerSchemaCopyWith<$R, HandlerSchema, $Out> get $asHandlerSchema =>
      $base.as((v, t, t2) => _HandlerSchemaCopyWithImpl(v, t, t2));
}

abstract class HandlerSchemaCopyWith<$R, $In extends HandlerSchema, $Out>
    implements SchemaCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>?>?
      get requiredProperties;
  @override
  MapCopyWith<$R, String, Schema, SchemaCopyWith<$R, Schema, Schema>>?
      get properties;
  @override
  $R call(
      {List<String>? requiredProperties,
      String? description,
      bool? nullable,
      Map<String, Schema>? properties});
  HandlerSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _HandlerSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, HandlerSchema, $Out>
    implements HandlerSchemaCopyWith<$R, HandlerSchema, $Out> {
  _HandlerSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<HandlerSchema> $mapper =
      HandlerSchemaMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>?>?
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
          Object? properties = $none}) =>
      $apply(FieldCopyWithData({
        if (requiredProperties != $none)
          #requiredProperties: requiredProperties,
        if (description != $none) #description: description,
        if (nullable != null) #nullable: nullable,
        if (properties != $none) #properties: properties
      }));
  @override
  HandlerSchema $make(CopyWithData data) => HandlerSchema(
      requiredProperties:
          data.get(#requiredProperties, or: $value.requiredProperties),
      description: data.get(#description, or: $value.description),
      nullable: data.get(#nullable, or: $value.nullable),
      properties: data.get(#properties, or: $value.properties));

  @override
  HandlerSchemaCopyWith<$R2, HandlerSchema, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _HandlerSchemaCopyWithImpl($value, $cast, t);
}

class VoidHandlerSchemaMapper extends SubClassMapperBase<VoidHandlerSchema> {
  VoidHandlerSchemaMapper._();

  static VoidHandlerSchemaMapper? _instance;
  static VoidHandlerSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = VoidHandlerSchemaMapper._());
      HandlerSchemaMapper.ensureInitialized().addSubMapper(_instance!);
      SchemaMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'VoidHandlerSchema';

  static List<String>? _$requiredProperties(VoidHandlerSchema v) =>
      v.requiredProperties;
  static const Field<VoidHandlerSchema, List<String>> _f$requiredProperties =
      Field('requiredProperties', _$requiredProperties, opt: true);
  static String? _$description(VoidHandlerSchema v) => v.description;
  static const Field<VoidHandlerSchema, String> _f$description =
      Field('description', _$description, opt: true);
  static bool _$nullable(VoidHandlerSchema v) => v.nullable;
  static const Field<VoidHandlerSchema, bool> _f$nullable =
      Field('nullable', _$nullable, opt: true, def: true);
  static Map<String, Schema>? _$properties(VoidHandlerSchema v) => v.properties;
  static const Field<VoidHandlerSchema, Map<String, Schema>> _f$properties =
      Field('properties', _$properties, opt: true);
  static String? _$ref(VoidHandlerSchema v) => v.ref;
  static const Field<VoidHandlerSchema, String> _f$ref =
      Field('ref', _$ref, mode: FieldMode.member);
  static Map<String, Schema>? _$schemas(VoidHandlerSchema v) => v.schemas;
  static const Field<VoidHandlerSchema, Map<String, Schema>> _f$schemas =
      Field('schemas', _$schemas, mode: FieldMode.member);
  static DataType? _$type(VoidHandlerSchema v) => v.type;
  static const Field<VoidHandlerSchema, DataType> _f$type =
      Field('type', _$type, mode: FieldMode.member);
  static String? _$format(VoidHandlerSchema v) => v.format;
  static const Field<VoidHandlerSchema, String> _f$format =
      Field('format', _$format, mode: FieldMode.member);
  static DiscriminatorSchema? _$discriminator(VoidHandlerSchema v) =>
      v.discriminator;
  static const Field<VoidHandlerSchema, DiscriminatorSchema> _f$discriminator =
      Field('discriminator', _$discriminator, mode: FieldMode.member);
  static List<String>? _$enumValues(VoidHandlerSchema v) => v.enumValues;
  static const Field<VoidHandlerSchema, List<String>> _f$enumValues =
      Field('enumValues', _$enumValues, mode: FieldMode.member);
  static Schema? _$items(VoidHandlerSchema v) => v.items;
  static const Field<VoidHandlerSchema, Schema> _f$items =
      Field('items', _$items, mode: FieldMode.member);
  static List<Schema>? _$oneOf(VoidHandlerSchema v) => v.oneOf;
  static const Field<VoidHandlerSchema, List<Schema>> _f$oneOf =
      Field('oneOf', _$oneOf, mode: FieldMode.member);
  static List<Schema>? _$allOf(VoidHandlerSchema v) => v.allOf;
  static const Field<VoidHandlerSchema, List<Schema>> _f$allOf =
      Field('allOf', _$allOf, mode: FieldMode.member);
  static List<Schema>? _$anyOf(VoidHandlerSchema v) => v.anyOf;
  static const Field<VoidHandlerSchema, List<Schema>> _f$anyOf =
      Field('anyOf', _$anyOf, mode: FieldMode.member);

  @override
  final MappableFields<VoidHandlerSchema> fields = const {
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
  final dynamic discriminatorValue = 'handler_void';
  @override
  late final ClassMapperBase superMapper =
      HandlerSchemaMapper.ensureInitialized();

  static VoidHandlerSchema _instantiate(DecodingData data) {
    return VoidHandlerSchema(
        requiredProperties: data.dec(_f$requiredProperties),
        description: data.dec(_f$description),
        nullable: data.dec(_f$nullable),
        properties: data.dec(_f$properties));
  }

  @override
  final Function instantiate = _instantiate;

  static VoidHandlerSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<VoidHandlerSchema>(map);
  }

  static VoidHandlerSchema fromJson(String json) {
    return ensureInitialized().decodeJson<VoidHandlerSchema>(json);
  }
}

mixin VoidHandlerSchemaMappable {
  String toJson() {
    return VoidHandlerSchemaMapper.ensureInitialized()
        .encodeJson<VoidHandlerSchema>(this as VoidHandlerSchema);
  }

  Map<String, dynamic> toMap() {
    return VoidHandlerSchemaMapper.ensureInitialized()
        .encodeMap<VoidHandlerSchema>(this as VoidHandlerSchema);
  }

  VoidHandlerSchemaCopyWith<VoidHandlerSchema, VoidHandlerSchema,
          VoidHandlerSchema>
      get copyWith => _VoidHandlerSchemaCopyWithImpl(
          this as VoidHandlerSchema, $identity, $identity);
  @override
  String toString() {
    return VoidHandlerSchemaMapper.ensureInitialized()
        .stringifyValue(this as VoidHandlerSchema);
  }

  @override
  bool operator ==(Object other) {
    return VoidHandlerSchemaMapper.ensureInitialized()
        .equalsValue(this as VoidHandlerSchema, other);
  }

  @override
  int get hashCode {
    return VoidHandlerSchemaMapper.ensureInitialized()
        .hashValue(this as VoidHandlerSchema);
  }
}

extension VoidHandlerSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, VoidHandlerSchema, $Out> {
  VoidHandlerSchemaCopyWith<$R, VoidHandlerSchema, $Out>
      get $asVoidHandlerSchema =>
          $base.as((v, t, t2) => _VoidHandlerSchemaCopyWithImpl(v, t, t2));
}

abstract class VoidHandlerSchemaCopyWith<$R, $In extends VoidHandlerSchema,
    $Out> implements HandlerSchemaCopyWith<$R, $In, $Out> {
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
      Map<String, Schema>? properties});
  VoidHandlerSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _VoidHandlerSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, VoidHandlerSchema, $Out>
    implements VoidHandlerSchemaCopyWith<$R, VoidHandlerSchema, $Out> {
  _VoidHandlerSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<VoidHandlerSchema> $mapper =
      VoidHandlerSchemaMapper.ensureInitialized();
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
          Object? properties = $none}) =>
      $apply(FieldCopyWithData({
        if (requiredProperties != $none)
          #requiredProperties: requiredProperties,
        if (description != $none) #description: description,
        if (nullable != null) #nullable: nullable,
        if (properties != $none) #properties: properties
      }));
  @override
  VoidHandlerSchema $make(CopyWithData data) => VoidHandlerSchema(
      requiredProperties:
          data.get(#requiredProperties, or: $value.requiredProperties),
      description: data.get(#description, or: $value.description),
      nullable: data.get(#nullable, or: $value.nullable),
      properties: data.get(#properties, or: $value.properties));

  @override
  VoidHandlerSchemaCopyWith<$R2, VoidHandlerSchema, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _VoidHandlerSchemaCopyWithImpl($value, $cast, t);
}
