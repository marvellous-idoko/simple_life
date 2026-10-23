//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'beneficiary.g.dart';

/// Beneficiary
///
/// Properties:
/// * [name] 
/// * [dateOfBirth] 
/// * [relationship] 
/// * [gender] 
/// * [phone] 
/// * [email] 
/// * [guardianName] 
/// * [guardianPhoneNumber] 
/// * [guardianAddress] 
@BuiltValue()
abstract class Beneficiary implements Built<Beneficiary, BeneficiaryBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'dateOfBirth')
  Date? get dateOfBirth;

  @BuiltValueField(wireName: r'relationship')
  String? get relationship;

  @BuiltValueField(wireName: r'gender')
  BeneficiaryGenderEnum? get gender;
  // enum genderEnum {  male,  female,  };

  @BuiltValueField(wireName: r'phone')
  String? get phone;

  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'guardianName')
  String? get guardianName;

  @BuiltValueField(wireName: r'guardianPhoneNumber')
  String? get guardianPhoneNumber;

  @BuiltValueField(wireName: r'guardianAddress')
  String? get guardianAddress;

  Beneficiary._();

  factory Beneficiary([void updates(BeneficiaryBuilder b)]) = _$Beneficiary;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BeneficiaryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Beneficiary> get serializer => _$BeneficiarySerializer();
}

class _$BeneficiarySerializer implements PrimitiveSerializer<Beneficiary> {
  @override
  final Iterable<Type> types = const [Beneficiary, _$Beneficiary];

  @override
  final String wireName = r'Beneficiary';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Beneficiary object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
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
    if (object.relationship != null) {
      yield r'relationship';
      yield serializers.serialize(
        object.relationship,
        specifiedType: const FullType(String),
      );
    }
    if (object.gender != null) {
      yield r'gender';
      yield serializers.serialize(
        object.gender,
        specifiedType: const FullType(BeneficiaryGenderEnum),
      );
    }
    if (object.phone != null) {
      yield r'phone';
      yield serializers.serialize(
        object.phone,
        specifiedType: const FullType(String),
      );
    }
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType(String),
      );
    }
    if (object.guardianName != null) {
      yield r'guardianName';
      yield serializers.serialize(
        object.guardianName,
        specifiedType: const FullType(String),
      );
    }
    if (object.guardianPhoneNumber != null) {
      yield r'guardianPhoneNumber';
      yield serializers.serialize(
        object.guardianPhoneNumber,
        specifiedType: const FullType(String),
      );
    }
    if (object.guardianAddress != null) {
      yield r'guardianAddress';
      yield serializers.serialize(
        object.guardianAddress,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Beneficiary object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BeneficiaryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'dateOfBirth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Date),
          ) as Date?;
          if (valueDes == null) continue;
          result.dateOfBirth = valueDes;
          break;
        case r'relationship':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.relationship = valueDes;
          break;
        case r'gender':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BeneficiaryGenderEnum),
          ) as BeneficiaryGenderEnum?;
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
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.email = valueDes;
          break;
        case r'guardianName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.guardianName = valueDes;
          break;
        case r'guardianPhoneNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.guardianPhoneNumber = valueDes;
          break;
        case r'guardianAddress':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.guardianAddress = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Beneficiary deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BeneficiaryBuilder();
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


class BeneficiaryGenderEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'male')
  static const BeneficiaryGenderEnum male = _$beneficiaryGenderEnum_male;
  @BuiltValueEnumConst(wireName: r'female')
  static const BeneficiaryGenderEnum female = _$beneficiaryGenderEnum_female;

  static Serializer<BeneficiaryGenderEnum> get serializer => _$beneficiaryGenderEnumSerializer;

  const BeneficiaryGenderEnum._(String name): super(name);

  static BuiltSet<BeneficiaryGenderEnum> get values => _$beneficiaryGenderEnumValues;
  static BeneficiaryGenderEnum valueOf(String name) => _$beneficiaryGenderEnumValueOf(name);
}

