//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/house_item.dart';
import 'package:openapi/src/model/address.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/owner_particulars.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_owner_by_id200_response.g.dart';

/// GetOwnerById200Response
///
/// Properties:
/// * [ownerId] 
/// * [owner] - Name of Owner
/// * [description] 
/// * [value] 
/// * [buildingType] 
/// * [material] 
/// * [address] 
/// * [stationary] 
/// * [mobile] 
@BuiltValue()
abstract class GetOwnerById200Response implements OwnerParticulars, Built<GetOwnerById200Response, GetOwnerById200ResponseBuilder> {
  @BuiltValueField(wireName: r'stationary')
  BuiltList<HouseItem>? get stationary;

  @BuiltValueField(wireName: r'mobile')
  BuiltList<HouseItem>? get mobile;

  GetOwnerById200Response._();

  factory GetOwnerById200Response([void updates(GetOwnerById200ResponseBuilder b)]) = _$GetOwnerById200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetOwnerById200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetOwnerById200Response> get serializer => _$GetOwnerById200ResponseSerializer();
}

class _$GetOwnerById200ResponseSerializer implements PrimitiveSerializer<GetOwnerById200Response> {
  @override
  final Iterable<Type> types = const [GetOwnerById200Response, _$GetOwnerById200Response];

  @override
  final String wireName = r'GetOwnerById200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetOwnerById200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.owner != null) {
      yield r'owner';
      yield serializers.serialize(
        object.owner,
        specifiedType: const FullType(String),
      );
    }
    if (object.address != null) {
      yield r'address';
      yield serializers.serialize(
        object.address,
        specifiedType: const FullType(Address),
      );
    }
    if (object.material != null) {
      yield r'material';
      yield serializers.serialize(
        object.material,
        specifiedType: const FullType(OwnerParticularsMaterialEnum),
      );
    }
    if (object.stationary != null) {
      yield r'stationary';
      yield serializers.serialize(
        object.stationary,
        specifiedType: const FullType(BuiltList, [FullType(HouseItem)]),
      );
    }
    if (object.mobile != null) {
      yield r'mobile';
      yield serializers.serialize(
        object.mobile,
        specifiedType: const FullType(BuiltList, [FullType(HouseItem)]),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.ownerId != null) {
      yield r'ownerId';
      yield serializers.serialize(
        object.ownerId,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    GetOwnerById200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetOwnerById200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'owner':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.owner = valueDes;
          break;
        case r'address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Address),
          ) as Address?;
          if (valueDes == null) continue;
          result.address.replace(valueDes);
          break;
        case r'material':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(OwnerParticularsMaterialEnum),
          ) as OwnerParticularsMaterialEnum?;
          if (valueDes == null) continue;
          result.material = valueDes;
          break;
        case r'stationary':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(HouseItem)]),
          ) as BuiltList<HouseItem>?;
          if (valueDes == null) continue;
          result.stationary.replace(valueDes);
          break;
        case r'mobile':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(HouseItem)]),
          ) as BuiltList<HouseItem>?;
          if (valueDes == null) continue;
          result.mobile.replace(valueDes);
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'ownerId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.ownerId = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetOwnerById200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetOwnerById200ResponseBuilder();
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


class GetOwnerById200ResponseBuildingTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'bungalow')
  static const GetOwnerById200ResponseBuildingTypeEnum bungalow = _$getOwnerById200ResponseBuildingTypeEnum_bungalow;
  @BuiltValueEnumConst(wireName: r'flat')
  static const GetOwnerById200ResponseBuildingTypeEnum flat = _$getOwnerById200ResponseBuildingTypeEnum_flat;
  @BuiltValueEnumConst(wireName: r'condo')
  static const GetOwnerById200ResponseBuildingTypeEnum condo = _$getOwnerById200ResponseBuildingTypeEnum_condo;
  @BuiltValueEnumConst(wireName: r'duplex')
  static const GetOwnerById200ResponseBuildingTypeEnum duplex = _$getOwnerById200ResponseBuildingTypeEnum_duplex;
  @BuiltValueEnumConst(wireName: r'multi-storey')
  static const GetOwnerById200ResponseBuildingTypeEnum multiStorey = _$getOwnerById200ResponseBuildingTypeEnum_multiStorey;
  @BuiltValueEnumConst(wireName: r'warehouse')
  static const GetOwnerById200ResponseBuildingTypeEnum warehouse = _$getOwnerById200ResponseBuildingTypeEnum_warehouse;

  static Serializer<GetOwnerById200ResponseBuildingTypeEnum> get serializer => _$getOwnerById200ResponseBuildingTypeEnumSerializer;

  const GetOwnerById200ResponseBuildingTypeEnum._(String name): super(name);

  static BuiltSet<GetOwnerById200ResponseBuildingTypeEnum> get values => _$getOwnerById200ResponseBuildingTypeEnumValues;
  static GetOwnerById200ResponseBuildingTypeEnum valueOf(String name) => _$getOwnerById200ResponseBuildingTypeEnumValueOf(name);
}

class GetOwnerById200ResponseMaterialEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'concrete')
  static const GetOwnerById200ResponseMaterialEnum concrete = _$getOwnerById200ResponseMaterialEnum_concrete;
  @BuiltValueEnumConst(wireName: r'clay')
  static const GetOwnerById200ResponseMaterialEnum clay = _$getOwnerById200ResponseMaterialEnum_clay;
  @BuiltValueEnumConst(wireName: r'wood')
  static const GetOwnerById200ResponseMaterialEnum wood = _$getOwnerById200ResponseMaterialEnum_wood;

  static Serializer<GetOwnerById200ResponseMaterialEnum> get serializer => _$getOwnerById200ResponseMaterialEnumSerializer;

  const GetOwnerById200ResponseMaterialEnum._(String name): super(name);

  static BuiltSet<GetOwnerById200ResponseMaterialEnum> get values => _$getOwnerById200ResponseMaterialEnumValues;
  static GetOwnerById200ResponseMaterialEnum valueOf(String name) => _$getOwnerById200ResponseMaterialEnumValueOf(name);
}

