//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/motor_particulars.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_motor_from3rd_party_document200_response.g.dart';

/// GetMotorFrom3rdPartyDocument200Response
///
/// Properties:
/// * [motorId] - The name of the  car owner
/// * [owner] - The name of the  car owner
/// * [make] - The make of the  car
/// * [model] - The model of the car
/// * [year] - The year of the car
/// * [chassis] - The Chassis number
/// * [registrationNumber] - The Registration number
/// * [engineNumber] - The Engine number
/// * [paymentOption] - The motor payment selected
/// * [motorValue] 
/// * [use] 
/// * [type] 
/// * [premium] - Premium to pay
@BuiltValue()
abstract class GetMotorFrom3rdPartyDocument200Response implements MotorParticulars, Built<GetMotorFrom3rdPartyDocument200Response, GetMotorFrom3rdPartyDocument200ResponseBuilder> {
  /// Premium to pay
  @BuiltValueField(wireName: r'premium')
  num? get premium;

  GetMotorFrom3rdPartyDocument200Response._();

  factory GetMotorFrom3rdPartyDocument200Response([void updates(GetMotorFrom3rdPartyDocument200ResponseBuilder b)]) = _$GetMotorFrom3rdPartyDocument200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetMotorFrom3rdPartyDocument200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetMotorFrom3rdPartyDocument200Response> get serializer => _$GetMotorFrom3rdPartyDocument200ResponseSerializer();
}

class _$GetMotorFrom3rdPartyDocument200ResponseSerializer implements PrimitiveSerializer<GetMotorFrom3rdPartyDocument200Response> {
  @override
  final Iterable<Type> types = const [GetMotorFrom3rdPartyDocument200Response, _$GetMotorFrom3rdPartyDocument200Response];

  @override
  final String wireName = r'GetMotorFrom3rdPartyDocument200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetMotorFrom3rdPartyDocument200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.owner != null) {
      yield r'owner';
      yield serializers.serialize(
        object.owner,
        specifiedType: const FullType(String),
      );
    }
    if (object.motorValue != null) {
      yield r'motorValue';
      yield serializers.serialize(
        object.motorValue,
        specifiedType: const FullType(num),
      );
    }
    if (object.year != null) {
      yield r'year';
      yield serializers.serialize(
        object.year,
        specifiedType: const FullType(int),
      );
    }
    if (object.engineNumber != null) {
      yield r'engineNumber';
      yield serializers.serialize(
        object.engineNumber,
        specifiedType: const FullType(String),
      );
    }
    if (object.use != null) {
      yield r'use';
      yield serializers.serialize(
        object.use,
        specifiedType: const FullType(MotorParticularsUseEnum),
      );
    }
    if (object.chassis != null) {
      yield r'chassis';
      yield serializers.serialize(
        object.chassis,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(MotorParticularsTypeEnum),
      );
    }
    if (object.premium != null) {
      yield r'premium';
      yield serializers.serialize(
        object.premium,
        specifiedType: const FullType(num),
      );
    }
    if (object.registrationNumber != null) {
      yield r'registrationNumber';
      yield serializers.serialize(
        object.registrationNumber,
        specifiedType: const FullType(String),
      );
    }
    if (object.motorId != null) {
      yield r'motorId';
      yield serializers.serialize(
        object.motorId,
        specifiedType: const FullType(String),
      );
    }
    if (object.paymentOption != null) {
      yield r'paymentOption';
      yield serializers.serialize(
        object.paymentOption,
        specifiedType: const FullType(String),
      );
    }
    if (object.model != null) {
      yield r'model';
      yield serializers.serialize(
        object.model,
        specifiedType: const FullType(String),
      );
    }
    if (object.make != null) {
      yield r'make';
      yield serializers.serialize(
        object.make,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetMotorFrom3rdPartyDocument200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetMotorFrom3rdPartyDocument200ResponseBuilder result,
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
        case r'motorValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.motorValue = valueDes;
          break;
        case r'year':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.year = valueDes;
          break;
        case r'engineNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.engineNumber = valueDes;
          break;
        case r'use':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(MotorParticularsUseEnum),
          ) as MotorParticularsUseEnum?;
          if (valueDes == null) continue;
          result.use = valueDes;
          break;
        case r'chassis':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.chassis = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(MotorParticularsTypeEnum),
          ) as MotorParticularsTypeEnum?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'premium':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.premium = valueDes;
          break;
        case r'registrationNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.registrationNumber = valueDes;
          break;
        case r'motorId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.motorId = valueDes;
          break;
        case r'paymentOption':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.paymentOption = valueDes;
          break;
        case r'model':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.model = valueDes;
          break;
        case r'make':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.make = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetMotorFrom3rdPartyDocument200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetMotorFrom3rdPartyDocument200ResponseBuilder();
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


class GetMotorFrom3rdPartyDocument200ResponseUseEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Private')
  static const GetMotorFrom3rdPartyDocument200ResponseUseEnum private = _$getMotorFrom3rdPartyDocument200ResponseUseEnum_private;
  @BuiltValueEnumConst(wireName: r'Commercial')
  static const GetMotorFrom3rdPartyDocument200ResponseUseEnum commercial = _$getMotorFrom3rdPartyDocument200ResponseUseEnum_commercial;

  static Serializer<GetMotorFrom3rdPartyDocument200ResponseUseEnum> get serializer => _$getMotorFrom3rdPartyDocument200ResponseUseEnumSerializer;

  const GetMotorFrom3rdPartyDocument200ResponseUseEnum._(String name): super(name);

  static BuiltSet<GetMotorFrom3rdPartyDocument200ResponseUseEnum> get values => _$getMotorFrom3rdPartyDocument200ResponseUseEnumValues;
  static GetMotorFrom3rdPartyDocument200ResponseUseEnum valueOf(String name) => _$getMotorFrom3rdPartyDocument200ResponseUseEnumValueOf(name);
}

class GetMotorFrom3rdPartyDocument200ResponseTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Saloon')
  static const GetMotorFrom3rdPartyDocument200ResponseTypeEnum saloon = _$getMotorFrom3rdPartyDocument200ResponseTypeEnum_saloon;
  @BuiltValueEnumConst(wireName: r'SUV')
  static const GetMotorFrom3rdPartyDocument200ResponseTypeEnum SUV = _$getMotorFrom3rdPartyDocument200ResponseTypeEnum_SUV;
  @BuiltValueEnumConst(wireName: r'Light Truck')
  static const GetMotorFrom3rdPartyDocument200ResponseTypeEnum lightTruck = _$getMotorFrom3rdPartyDocument200ResponseTypeEnum_lightTruck;
  @BuiltValueEnumConst(wireName: r'Heavy Duty Truck')
  static const GetMotorFrom3rdPartyDocument200ResponseTypeEnum heavyDutyTruck = _$getMotorFrom3rdPartyDocument200ResponseTypeEnum_heavyDutyTruck;

  static Serializer<GetMotorFrom3rdPartyDocument200ResponseTypeEnum> get serializer => _$getMotorFrom3rdPartyDocument200ResponseTypeEnumSerializer;

  const GetMotorFrom3rdPartyDocument200ResponseTypeEnum._(String name): super(name);

  static BuiltSet<GetMotorFrom3rdPartyDocument200ResponseTypeEnum> get values => _$getMotorFrom3rdPartyDocument200ResponseTypeEnumValues;
  static GetMotorFrom3rdPartyDocument200ResponseTypeEnum valueOf(String name) => _$getMotorFrom3rdPartyDocument200ResponseTypeEnumValueOf(name);
}

