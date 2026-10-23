//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/health_form.dart';
import 'package:openapi/src/model/customer_personal.dart';
import 'package:openapi/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_insured_person_by_id200_response.g.dart';

/// GetInsuredPersonById200Response
///
/// Properties:
/// * [firstName] 
/// * [lastName] 
/// * [dateOfBirth] 
/// * [gender] 
/// * [phone] 
/// * [occupation] 
/// * [health] 
@BuiltValue()
abstract class GetInsuredPersonById200Response implements CustomerPersonal, Built<GetInsuredPersonById200Response, GetInsuredPersonById200ResponseBuilder> {
  @BuiltValueField(wireName: r'health')
  HealthForm? get health;

  GetInsuredPersonById200Response._();

  factory GetInsuredPersonById200Response([void updates(GetInsuredPersonById200ResponseBuilder b)]) = _$GetInsuredPersonById200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetInsuredPersonById200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetInsuredPersonById200Response> get serializer => _$GetInsuredPersonById200ResponseSerializer();
}

class _$GetInsuredPersonById200ResponseSerializer implements PrimitiveSerializer<GetInsuredPersonById200Response> {
  @override
  final Iterable<Type> types = const [GetInsuredPersonById200Response, _$GetInsuredPersonById200Response];

  @override
  final String wireName = r'GetInsuredPersonById200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetInsuredPersonById200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.firstName != null) {
      yield r'firstName';
      yield serializers.serialize(
        object.firstName,
        specifiedType: const FullType(String),
      );
    }
    if (object.lastName != null) {
      yield r'lastName';
      yield serializers.serialize(
        object.lastName,
        specifiedType: const FullType(String),
      );
    }
    if (object.occupation != null) {
      yield r'occupation';
      yield serializers.serialize(
        object.occupation,
        specifiedType: const FullType(String),
      );
    }
    if (object.gender != null) {
      yield r'gender';
      yield serializers.serialize(
        object.gender,
        specifiedType: const FullType(CustomerPersonalGenderEnum),
      );
    }
    if (object.phone != null) {
      yield r'phone';
      yield serializers.serialize(
        object.phone,
        specifiedType: const FullType(String),
      );
    }
    if (object.health != null) {
      yield r'health';
      yield serializers.serialize(
        object.health,
        specifiedType: const FullType(HealthForm),
      );
    }
    if (object.dateOfBirth != null) {
      yield r'dateOfBirth';
      yield serializers.serialize(
        object.dateOfBirth,
        specifiedType: const FullType(Date),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetInsuredPersonById200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetInsuredPersonById200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'firstName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.firstName = valueDes;
          break;
        case r'lastName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lastName = valueDes;
          break;
        case r'occupation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.occupation = valueDes;
          break;
        case r'gender':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(CustomerPersonalGenderEnum),
          ) as CustomerPersonalGenderEnum?;
          if (valueDes == null) continue;
          result.gender = valueDes;
          break;
        case r'phone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.phone = valueDes;
          break;
        case r'health':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(HealthForm),
          ) as HealthForm?;
          if (valueDes == null) continue;
          result.health = valueDes;
          break;
        case r'dateOfBirth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Date),
          ) as Date?;
          if (valueDes == null) continue;
          result.dateOfBirth = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetInsuredPersonById200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetInsuredPersonById200ResponseBuilder();
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


class GetInsuredPersonById200ResponseGenderEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'male')
  static const GetInsuredPersonById200ResponseGenderEnum male = _$getInsuredPersonById200ResponseGenderEnum_male;
  @BuiltValueEnumConst(wireName: r'female')
  static const GetInsuredPersonById200ResponseGenderEnum female = _$getInsuredPersonById200ResponseGenderEnum_female;

  static Serializer<GetInsuredPersonById200ResponseGenderEnum> get serializer => _$getInsuredPersonById200ResponseGenderEnumSerializer;

  const GetInsuredPersonById200ResponseGenderEnum._(String name): super(name);

  static BuiltSet<GetInsuredPersonById200ResponseGenderEnum> get values => _$getInsuredPersonById200ResponseGenderEnumValues;
  static GetInsuredPersonById200ResponseGenderEnum valueOf(String name) => _$getInsuredPersonById200ResponseGenderEnumValueOf(name);
}

