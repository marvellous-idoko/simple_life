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

part 'insured_person_response.g.dart';

/// InsuredPersonResponse
///
/// Properties:
/// * [firstName] 
/// * [lastName] 
/// * [dateOfBirth] 
/// * [gender] 
/// * [phone] 
/// * [occupation] 
/// * [personId] 
/// * [bvn] 
/// * [photoUrl] 
/// * [signatureUrl] 
/// * [health] 
@BuiltValue()
abstract class InsuredPersonResponse implements CustomerPersonal, Built<InsuredPersonResponse, InsuredPersonResponseBuilder> {
  @BuiltValueField(wireName: r'photoUrl')
  String? get photoUrl;

  @BuiltValueField(wireName: r'signatureUrl')
  String? get signatureUrl;

  @BuiltValueField(wireName: r'health')
  HealthForm? get health;

  @BuiltValueField(wireName: r'personId')
  String? get personId;

  @BuiltValueField(wireName: r'bvn')
  String? get bvn;

  InsuredPersonResponse._();

  factory InsuredPersonResponse([void updates(InsuredPersonResponseBuilder b)]) = _$InsuredPersonResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InsuredPersonResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InsuredPersonResponse> get serializer => _$InsuredPersonResponseSerializer();
}

class _$InsuredPersonResponseSerializer implements PrimitiveSerializer<InsuredPersonResponse> {
  @override
  final Iterable<Type> types = const [InsuredPersonResponse, _$InsuredPersonResponse];

  @override
  final String wireName = r'InsuredPersonResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InsuredPersonResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.photoUrl != null) {
      yield r'photoUrl';
      yield serializers.serialize(
        object.photoUrl,
        specifiedType: const FullType(String),
      );
    }
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
    if (object.signatureUrl != null) {
      yield r'signatureUrl';
      yield serializers.serialize(
        object.signatureUrl,
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
    if (object.personId != null) {
      yield r'personId';
      yield serializers.serialize(
        object.personId,
        specifiedType: const FullType(String),
      );
    }
    if (object.dateOfBirth != null) {
      yield r'dateOfBirth';
      yield serializers.serialize(
        object.dateOfBirth,
        specifiedType: const FullType(Date),
      );
    }
    if (object.bvn != null) {
      yield r'bvn';
      yield serializers.serialize(
        object.bvn,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    InsuredPersonResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required InsuredPersonResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'photoUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.photoUrl = valueDes;
          break;
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
        case r'signatureUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.signatureUrl = valueDes;
          break;
        case r'health':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(HealthForm),
          ) as HealthForm?;
          if (valueDes == null) continue;
          result.health.replace(valueDes);
          break;
        case r'personId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.personId = valueDes;
          break;
        case r'dateOfBirth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Date),
          ) as Date?;
          if (valueDes == null) continue;
          result.dateOfBirth = valueDes;
          break;
        case r'bvn':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.bvn = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InsuredPersonResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InsuredPersonResponseBuilder();
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


class InsuredPersonResponseGenderEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'male')
  static const InsuredPersonResponseGenderEnum male = _$insuredPersonResponseGenderEnum_male;
  @BuiltValueEnumConst(wireName: r'female')
  static const InsuredPersonResponseGenderEnum female = _$insuredPersonResponseGenderEnum_female;

  static Serializer<InsuredPersonResponseGenderEnum> get serializer => _$insuredPersonResponseGenderEnumSerializer;

  const InsuredPersonResponseGenderEnum._(String name): super(name);

  static BuiltSet<InsuredPersonResponseGenderEnum> get values => _$insuredPersonResponseGenderEnumValues;
  static InsuredPersonResponseGenderEnum valueOf(String name) => _$insuredPersonResponseGenderEnumValueOf(name);
}

