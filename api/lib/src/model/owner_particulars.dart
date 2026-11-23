//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/address.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'owner_particulars.g.dart';

/// OwnerParticulars
///
/// Properties:
/// * [ownerId] 
/// * [owner] - Name of Owner
/// * [description] 
/// * [value] 
/// * [buildingType] 
/// * [material] 
/// * [address] 
@BuiltValue(instantiable: false)
abstract class OwnerParticulars  {
  @BuiltValueField(wireName: r'ownerId')
  String? get ownerId;

  /// Name of Owner
  @BuiltValueField(wireName: r'owner')
  String? get owner;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'value')
  num? get value;

  @BuiltValueField(wireName: r'buildingType')
  OwnerParticularsBuildingTypeEnum? get buildingType;
  // enum buildingTypeEnum {  bungalow,  flat,  condo,  duplex,  multi-storey,  warehouse,  };

  @BuiltValueField(wireName: r'material')
  OwnerParticularsMaterialEnum? get material;
  // enum materialEnum {  concrete,  clay,  wood,  };

  @BuiltValueField(wireName: r'address')
  Address? get address;

  @BuiltValueSerializer(custom: true)
  static Serializer<OwnerParticulars> get serializer => _$OwnerParticularsSerializer();
}

class _$OwnerParticularsSerializer implements PrimitiveSerializer<OwnerParticulars> {
  @override
  final Iterable<Type> types = const [OwnerParticulars];

  @override
  final String wireName = r'OwnerParticulars';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OwnerParticulars object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.ownerId != null) {
      yield r'ownerId';
      yield serializers.serialize(
        object.ownerId,
        specifiedType: const FullType(String),
      );
    }
    if (object.owner != null) {
      yield r'owner';
      yield serializers.serialize(
        object.owner,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType(num),
      );
    }
    if (object.buildingType != null) {
      yield r'buildingType';
      yield serializers.serialize(
        object.buildingType,
        specifiedType: const FullType(OwnerParticularsBuildingTypeEnum),
      );
    }
    if (object.material != null) {
      yield r'material';
      yield serializers.serialize(
        object.material,
        specifiedType: const FullType(OwnerParticularsMaterialEnum),
      );
    }
    if (object.address != null) {
      yield r'address';
      yield serializers.serialize(
        object.address,
        specifiedType: const FullType(Address),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OwnerParticulars object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  OwnerParticulars deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($OwnerParticulars)) as $OwnerParticulars;
  }
}


/// a concrete implementation of [OwnerParticulars], since [OwnerParticulars] is not instantiable
@BuiltValue(instantiable: true)
abstract class $OwnerParticulars implements OwnerParticulars, Built<$OwnerParticulars, $OwnerParticularsBuilder> {
  $OwnerParticulars._();

  factory $OwnerParticulars([void Function($OwnerParticularsBuilder)? updates]) = _$$OwnerParticulars;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($OwnerParticularsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$OwnerParticulars> get serializer => _$$OwnerParticularsSerializer();
}

class _$$OwnerParticularsSerializer implements PrimitiveSerializer<$OwnerParticulars> {
  @override
  final Iterable<Type> types = const [$OwnerParticulars, _$$OwnerParticulars];

  @override
  final String wireName = r'$OwnerParticulars';

  @override
  Object serialize(
    Serializers serializers,
    $OwnerParticulars object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(OwnerParticulars))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OwnerParticularsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ownerId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.ownerId = valueDes;
          break;
        case r'owner':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.owner = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.value = valueDes;
          break;
        case r'buildingType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(OwnerParticularsBuildingTypeEnum),
          ) as OwnerParticularsBuildingTypeEnum?;
          if (valueDes == null) continue;
          result.buildingType = valueDes;
          break;
        case r'material':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(OwnerParticularsMaterialEnum),
          ) as OwnerParticularsMaterialEnum?;
          if (valueDes == null) continue;
          result.material = valueDes;
          break;
        case r'address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Address),
          ) as Address?;
          if (valueDes == null) continue;
          result.address.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $OwnerParticulars deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $OwnerParticularsBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

class OwnerParticularsBuildingTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'bungalow')
  static const OwnerParticularsBuildingTypeEnum bungalow = _$ownerParticularsBuildingTypeEnum_bungalow;
  @BuiltValueEnumConst(wireName: r'flat')
  static const OwnerParticularsBuildingTypeEnum flat = _$ownerParticularsBuildingTypeEnum_flat;
  @BuiltValueEnumConst(wireName: r'condo')
  static const OwnerParticularsBuildingTypeEnum condo = _$ownerParticularsBuildingTypeEnum_condo;
  @BuiltValueEnumConst(wireName: r'duplex')
  static const OwnerParticularsBuildingTypeEnum duplex = _$ownerParticularsBuildingTypeEnum_duplex;
  @BuiltValueEnumConst(wireName: r'multi-storey')
  static const OwnerParticularsBuildingTypeEnum multiStorey = _$ownerParticularsBuildingTypeEnum_multiStorey;
  @BuiltValueEnumConst(wireName: r'warehouse')
  static const OwnerParticularsBuildingTypeEnum warehouse = _$ownerParticularsBuildingTypeEnum_warehouse;

  static Serializer<OwnerParticularsBuildingTypeEnum> get serializer => _$ownerParticularsBuildingTypeEnumSerializer;

  const OwnerParticularsBuildingTypeEnum._(String name): super(name);

  static BuiltSet<OwnerParticularsBuildingTypeEnum> get values => _$ownerParticularsBuildingTypeEnumValues;
  static OwnerParticularsBuildingTypeEnum valueOf(String name) => _$ownerParticularsBuildingTypeEnumValueOf(name);
}

class OwnerParticularsMaterialEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'concrete')
  static const OwnerParticularsMaterialEnum concrete = _$ownerParticularsMaterialEnum_concrete;
  @BuiltValueEnumConst(wireName: r'clay')
  static const OwnerParticularsMaterialEnum clay = _$ownerParticularsMaterialEnum_clay;
  @BuiltValueEnumConst(wireName: r'wood')
  static const OwnerParticularsMaterialEnum wood = _$ownerParticularsMaterialEnum_wood;

  static Serializer<OwnerParticularsMaterialEnum> get serializer => _$ownerParticularsMaterialEnumSerializer;

  const OwnerParticularsMaterialEnum._(String name): super(name);

  static BuiltSet<OwnerParticularsMaterialEnum> get values => _$ownerParticularsMaterialEnumValues;
  static OwnerParticularsMaterialEnum valueOf(String name) => _$ownerParticularsMaterialEnumValueOf(name);
}

