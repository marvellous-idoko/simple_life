//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/partner_policy_submission_beneficiary_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'partner_policy_submission.g.dart';

/// PartnerPolicySubmission
///
/// Properties:
/// * [name] 
/// * [gender] 
/// * [age] 
/// * [premium] 
/// * [sumAssured] 
/// * [address] 
/// * [email] 
/// * [nationality] 
/// * [beneficiary] 
/// * [partnerType] 
/// * [partnerPolicyId] 
/// * [policyNumber] 
/// * [idCardUrl] 
/// * [productId] 
/// * [policyDurationInDays] 
/// * [dateOfSubmission] 
@BuiltValue()
abstract class PartnerPolicySubmission implements Built<PartnerPolicySubmission, PartnerPolicySubmissionBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'gender')
  PartnerPolicySubmissionGenderEnum? get gender;
  // enum genderEnum {  male,  female,  };

  @BuiltValueField(wireName: r'age')
  num? get age;

  @BuiltValueField(wireName: r'premium')
  num? get premium;

  @BuiltValueField(wireName: r'sumAssured')
  num? get sumAssured;

  @BuiltValueField(wireName: r'address')
  String? get address;

  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'nationality')
  String? get nationality;

  @BuiltValueField(wireName: r'beneficiary')
  BuiltList<PartnerPolicySubmissionBeneficiaryInner>? get beneficiary;

  @BuiltValueField(wireName: r'partnerType')
  PartnerPolicySubmissionPartnerTypeEnum? get partnerType;
  // enum partnerTypeEnum {  companyPartner,  individualPartner,  broker,  };

  @BuiltValueField(wireName: r'partnerPolicyId')
  String? get partnerPolicyId;

  @BuiltValueField(wireName: r'policyNumber')
  String? get policyNumber;

  @BuiltValueField(wireName: r'idCardUrl')
  String? get idCardUrl;

  @BuiltValueField(wireName: r'productId')
  PartnerPolicySubmissionProductIdEnum? get productId;
  // enum productIdEnum {  67,  69,  };

  @BuiltValueField(wireName: r'policyDurationInDays')
  int? get policyDurationInDays;

  @BuiltValueField(wireName: r'dateOfSubmission')
  String? get dateOfSubmission;

  PartnerPolicySubmission._();

  factory PartnerPolicySubmission([void updates(PartnerPolicySubmissionBuilder b)]) = _$PartnerPolicySubmission;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PartnerPolicySubmissionBuilder b) => b
      ..age = 18
      ..premium = 1500
      ..sumAssured = 300000;

  @BuiltValueSerializer(custom: true)
  static Serializer<PartnerPolicySubmission> get serializer => _$PartnerPolicySubmissionSerializer();
}

class _$PartnerPolicySubmissionSerializer implements PrimitiveSerializer<PartnerPolicySubmission> {
  @override
  final Iterable<Type> types = const [PartnerPolicySubmission, _$PartnerPolicySubmission];

  @override
  final String wireName = r'PartnerPolicySubmission';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PartnerPolicySubmission object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.gender != null) {
      yield r'gender';
      yield serializers.serialize(
        object.gender,
        specifiedType: const FullType(PartnerPolicySubmissionGenderEnum),
      );
    }
    if (object.age != null) {
      yield r'age';
      yield serializers.serialize(
        object.age,
        specifiedType: const FullType(num),
      );
    }
    if (object.premium != null) {
      yield r'premium';
      yield serializers.serialize(
        object.premium,
        specifiedType: const FullType(num),
      );
    }
    if (object.sumAssured != null) {
      yield r'sumAssured';
      yield serializers.serialize(
        object.sumAssured,
        specifiedType: const FullType(num),
      );
    }
    if (object.address != null) {
      yield r'address';
      yield serializers.serialize(
        object.address,
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
    if (object.nationality != null) {
      yield r'nationality';
      yield serializers.serialize(
        object.nationality,
        specifiedType: const FullType(String),
      );
    }
    if (object.beneficiary != null) {
      yield r'beneficiary';
      yield serializers.serialize(
        object.beneficiary,
        specifiedType: const FullType(BuiltList, [FullType(PartnerPolicySubmissionBeneficiaryInner)]),
      );
    }
    if (object.partnerType != null) {
      yield r'partnerType';
      yield serializers.serialize(
        object.partnerType,
        specifiedType: const FullType(PartnerPolicySubmissionPartnerTypeEnum),
      );
    }
    if (object.partnerPolicyId != null) {
      yield r'partnerPolicyId';
      yield serializers.serialize(
        object.partnerPolicyId,
        specifiedType: const FullType(String),
      );
    }
    if (object.policyNumber != null) {
      yield r'policyNumber';
      yield serializers.serialize(
        object.policyNumber,
        specifiedType: const FullType(String),
      );
    }
    if (object.idCardUrl != null) {
      yield r'idCardUrl';
      yield serializers.serialize(
        object.idCardUrl,
        specifiedType: const FullType(String),
      );
    }
    if (object.productId != null) {
      yield r'productId';
      yield serializers.serialize(
        object.productId,
        specifiedType: const FullType(PartnerPolicySubmissionProductIdEnum),
      );
    }
    if (object.policyDurationInDays != null) {
      yield r'policyDurationInDays';
      yield serializers.serialize(
        object.policyDurationInDays,
        specifiedType: const FullType(int),
      );
    }
    if (object.dateOfSubmission != null) {
      yield r'dateOfSubmission';
      yield serializers.serialize(
        object.dateOfSubmission,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PartnerPolicySubmission object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PartnerPolicySubmissionBuilder result,
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
        case r'gender':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PartnerPolicySubmissionGenderEnum),
          ) as PartnerPolicySubmissionGenderEnum?;
          if (valueDes == null) continue;
          result.gender = valueDes;
          break;
        case r'age':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.age = valueDes;
          break;
        case r'premium':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.premium = valueDes;
          break;
        case r'sumAssured':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.sumAssured = valueDes;
          break;
        case r'address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.address = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.email = valueDes;
          break;
        case r'nationality':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.nationality = valueDes;
          break;
        case r'beneficiary':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(PartnerPolicySubmissionBeneficiaryInner)]),
          ) as BuiltList<PartnerPolicySubmissionBeneficiaryInner>?;
          if (valueDes == null) continue;
          result.beneficiary.replace(valueDes);
          break;
        case r'partnerType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PartnerPolicySubmissionPartnerTypeEnum),
          ) as PartnerPolicySubmissionPartnerTypeEnum?;
          if (valueDes == null) continue;
          result.partnerType = valueDes;
          break;
        case r'partnerPolicyId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.partnerPolicyId = valueDes;
          break;
        case r'policyNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.policyNumber = valueDes;
          break;
        case r'idCardUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.idCardUrl = valueDes;
          break;
        case r'productId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PartnerPolicySubmissionProductIdEnum),
          ) as PartnerPolicySubmissionProductIdEnum?;
          if (valueDes == null) continue;
          result.productId = valueDes;
          break;
        case r'policyDurationInDays':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.policyDurationInDays = valueDes;
          break;
        case r'dateOfSubmission':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.dateOfSubmission = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PartnerPolicySubmission deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PartnerPolicySubmissionBuilder();
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


class PartnerPolicySubmissionGenderEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'male')
  static const PartnerPolicySubmissionGenderEnum male = _$partnerPolicySubmissionGenderEnum_male;
  @BuiltValueEnumConst(wireName: r'female')
  static const PartnerPolicySubmissionGenderEnum female = _$partnerPolicySubmissionGenderEnum_female;

  static Serializer<PartnerPolicySubmissionGenderEnum> get serializer => _$partnerPolicySubmissionGenderEnumSerializer;

  const PartnerPolicySubmissionGenderEnum._(String name): super(name);

  static BuiltSet<PartnerPolicySubmissionGenderEnum> get values => _$partnerPolicySubmissionGenderEnumValues;
  static PartnerPolicySubmissionGenderEnum valueOf(String name) => _$partnerPolicySubmissionGenderEnumValueOf(name);
}

class PartnerPolicySubmissionPartnerTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'companyPartner')
  static const PartnerPolicySubmissionPartnerTypeEnum companyPartner = _$partnerPolicySubmissionPartnerTypeEnum_companyPartner;
  @BuiltValueEnumConst(wireName: r'individualPartner')
  static const PartnerPolicySubmissionPartnerTypeEnum individualPartner = _$partnerPolicySubmissionPartnerTypeEnum_individualPartner;
  @BuiltValueEnumConst(wireName: r'broker')
  static const PartnerPolicySubmissionPartnerTypeEnum broker = _$partnerPolicySubmissionPartnerTypeEnum_broker;

  static Serializer<PartnerPolicySubmissionPartnerTypeEnum> get serializer => _$partnerPolicySubmissionPartnerTypeEnumSerializer;

  const PartnerPolicySubmissionPartnerTypeEnum._(String name): super(name);

  static BuiltSet<PartnerPolicySubmissionPartnerTypeEnum> get values => _$partnerPolicySubmissionPartnerTypeEnumValues;
  static PartnerPolicySubmissionPartnerTypeEnum valueOf(String name) => _$partnerPolicySubmissionPartnerTypeEnumValueOf(name);
}

class PartnerPolicySubmissionProductIdEnum extends EnumClass {

  @BuiltValueEnumConst(wireNumber: 67)
  static const PartnerPolicySubmissionProductIdEnum number67 = _$partnerPolicySubmissionProductIdEnum_number67;
  @BuiltValueEnumConst(wireNumber: 69)
  static const PartnerPolicySubmissionProductIdEnum number69 = _$partnerPolicySubmissionProductIdEnum_number69;

  static Serializer<PartnerPolicySubmissionProductIdEnum> get serializer => _$partnerPolicySubmissionProductIdEnumSerializer;

  const PartnerPolicySubmissionProductIdEnum._(String name): super(name);

  static BuiltSet<PartnerPolicySubmissionProductIdEnum> get values => _$partnerPolicySubmissionProductIdEnumValues;
  static PartnerPolicySubmissionProductIdEnum valueOf(String name) => _$partnerPolicySubmissionProductIdEnumValueOf(name);
}

