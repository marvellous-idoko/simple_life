//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'agent_license.g.dart';

/// AgentLicense
///
/// Properties:
/// * [licenseNumber] 
/// * [insuranceAgency] 
/// * [ciinRegNumber] 
/// * [arianRegNumber] 
/// * [issueDate] 
/// * [expiryDate] 
/// * [bvn] 
/// * [accountHolder] 
@BuiltValue()
abstract class AgentLicense implements Built<AgentLicense, AgentLicenseBuilder> {
  @BuiltValueField(wireName: r'licenseNumber')
  String? get licenseNumber;

  @BuiltValueField(wireName: r'insuranceAgency')
  AgentLicenseInsuranceAgencyEnum? get insuranceAgency;
  // enum insuranceAgencyEnum {  part-time,  full-time,  };

  @BuiltValueField(wireName: r'ciinRegNumber')
  String? get ciinRegNumber;

  @BuiltValueField(wireName: r'arianRegNumber')
  String? get arianRegNumber;

  @BuiltValueField(wireName: r'issueDate')
  String? get issueDate;

  @BuiltValueField(wireName: r'expiryDate')
  String? get expiryDate;

  @BuiltValueField(wireName: r'bvn')
  num? get bvn;

  @BuiltValueField(wireName: r'accountHolder')
  String? get accountHolder;

  AgentLicense._();

  factory AgentLicense([void updates(AgentLicenseBuilder b)]) = _$AgentLicense;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AgentLicenseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AgentLicense> get serializer => _$AgentLicenseSerializer();
}

class _$AgentLicenseSerializer implements PrimitiveSerializer<AgentLicense> {
  @override
  final Iterable<Type> types = const [AgentLicense, _$AgentLicense];

  @override
  final String wireName = r'AgentLicense';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AgentLicense object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.licenseNumber != null) {
      yield r'licenseNumber';
      yield serializers.serialize(
        object.licenseNumber,
        specifiedType: const FullType(String),
      );
    }
    if (object.insuranceAgency != null) {
      yield r'insuranceAgency';
      yield serializers.serialize(
        object.insuranceAgency,
        specifiedType: const FullType(AgentLicenseInsuranceAgencyEnum),
      );
    }
    if (object.ciinRegNumber != null) {
      yield r'ciinRegNumber';
      yield serializers.serialize(
        object.ciinRegNumber,
        specifiedType: const FullType(String),
      );
    }
    if (object.arianRegNumber != null) {
      yield r'arianRegNumber';
      yield serializers.serialize(
        object.arianRegNumber,
        specifiedType: const FullType(String),
      );
    }
    if (object.issueDate != null) {
      yield r'issueDate';
      yield serializers.serialize(
        object.issueDate,
        specifiedType: const FullType(String),
      );
    }
    if (object.expiryDate != null) {
      yield r'expiryDate';
      yield serializers.serialize(
        object.expiryDate,
        specifiedType: const FullType(String),
      );
    }
    if (object.bvn != null) {
      yield r'bvn';
      yield serializers.serialize(
        object.bvn,
        specifiedType: const FullType(num),
      );
    }
    if (object.accountHolder != null) {
      yield r'accountHolder';
      yield serializers.serialize(
        object.accountHolder,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AgentLicense object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AgentLicenseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'licenseNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.licenseNumber = valueDes;
          break;
        case r'insuranceAgency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AgentLicenseInsuranceAgencyEnum),
          ) as AgentLicenseInsuranceAgencyEnum?;
          if (valueDes == null) continue;
          result.insuranceAgency = valueDes;
          break;
        case r'ciinRegNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.ciinRegNumber = valueDes;
          break;
        case r'arianRegNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.arianRegNumber = valueDes;
          break;
        case r'issueDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.issueDate = valueDes;
          break;
        case r'expiryDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.expiryDate = valueDes;
          break;
        case r'bvn':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.bvn = valueDes;
          break;
        case r'accountHolder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.accountHolder = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AgentLicense deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AgentLicenseBuilder();
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


class AgentLicenseInsuranceAgencyEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'part-time')
  static const AgentLicenseInsuranceAgencyEnum partTime = _$agentLicenseInsuranceAgencyEnum_partTime;
  @BuiltValueEnumConst(wireName: r'full-time')
  static const AgentLicenseInsuranceAgencyEnum fullTime = _$agentLicenseInsuranceAgencyEnum_fullTime;

  static Serializer<AgentLicenseInsuranceAgencyEnum> get serializer => _$agentLicenseInsuranceAgencyEnumSerializer;

  const AgentLicenseInsuranceAgencyEnum._(String name): super(name);

  static BuiltSet<AgentLicenseInsuranceAgencyEnum> get values => _$agentLicenseInsuranceAgencyEnumValues;
  static AgentLicenseInsuranceAgencyEnum valueOf(String name) => _$agentLicenseInsuranceAgencyEnumValueOf(name);
}

