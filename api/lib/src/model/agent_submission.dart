//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/address.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/customer_personal.dart';
import 'package:openapi/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'agent_submission.g.dart';

/// AgentSubmission
///
/// Properties:
/// * [firstName] 
/// * [lastName] 
/// * [dateOfBirth] 
/// * [gender] 
/// * [phone] 
/// * [occupation] 
/// * [maidenName] 
/// * [stateOfOrigin] 
/// * [maritalStatus] 
/// * [agency] 
/// * [qualification] 
/// * [residentAddress] 
/// * [officeAddress] 
@BuiltValue()
abstract class AgentSubmission implements CustomerPersonal, Built<AgentSubmission, AgentSubmissionBuilder> {
  @BuiltValueField(wireName: r'qualification')
  AgentSubmissionQualificationEnum? get qualification;
  // enum qualificationEnum {  SSCE,  BSC,  OND,  HND,  MSC,  PDG,  };

  @BuiltValueField(wireName: r'agency')
  AgentSubmissionAgencyEnum? get agency;
  // enum agencyEnum {  partTime,  fullTime,  };

  @BuiltValueField(wireName: r'stateOfOrigin')
  String? get stateOfOrigin;

  @BuiltValueField(wireName: r'maidenName')
  String? get maidenName;

  @BuiltValueField(wireName: r'residentAddress')
  Address? get residentAddress;

  @BuiltValueField(wireName: r'officeAddress')
  Address? get officeAddress;

  @BuiltValueField(wireName: r'maritalStatus')
  AgentSubmissionMaritalStatusEnum? get maritalStatus;
  // enum maritalStatusEnum {  single,  married,  divorce,  widowed,  };

  AgentSubmission._();

  factory AgentSubmission([void updates(AgentSubmissionBuilder b)]) = _$AgentSubmission;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AgentSubmissionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AgentSubmission> get serializer => _$AgentSubmissionSerializer();
}

class _$AgentSubmissionSerializer implements PrimitiveSerializer<AgentSubmission> {
  @override
  final Iterable<Type> types = const [AgentSubmission, _$AgentSubmission];

  @override
  final String wireName = r'AgentSubmission';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AgentSubmission object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    if (object.agency != null) {
      yield r'agency';
      yield serializers.serialize(
        object.agency,
        specifiedType: const FullType(AgentSubmissionAgencyEnum),
      );
    }
    if (object.gender != null) {
      yield r'gender';
      yield serializers.serialize(
        object.gender,
        specifiedType: const FullType(CustomerPersonalGenderEnum),
      );
    }
    if (object.stateOfOrigin != null) {
      yield r'stateOfOrigin';
      yield serializers.serialize(
        object.stateOfOrigin,
        specifiedType: const FullType(String),
      );
    }
    if (object.maidenName != null) {
      yield r'maidenName';
      yield serializers.serialize(
        object.maidenName,
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
    if (object.officeAddress != null) {
      yield r'officeAddress';
      yield serializers.serialize(
        object.officeAddress,
        specifiedType: const FullType(Address),
      );
    }
    if (object.qualification != null) {
      yield r'qualification';
      yield serializers.serialize(
        object.qualification,
        specifiedType: const FullType(AgentSubmissionQualificationEnum),
      );
    }
    if (object.firstName != null) {
      yield r'firstName';
      yield serializers.serialize(
        object.firstName,
        specifiedType: const FullType(String),
      );
    }
    if (object.phone != null) {
      yield r'phone';
      yield serializers.serialize(
        object.phone,
        specifiedType: const FullType(String),
      );
    }
    if (object.residentAddress != null) {
      yield r'residentAddress';
      yield serializers.serialize(
        object.residentAddress,
        specifiedType: const FullType(Address),
      );
    }
    if (object.maritalStatus != null) {
      yield r'maritalStatus';
      yield serializers.serialize(
        object.maritalStatus,
        specifiedType: const FullType(AgentSubmissionMaritalStatusEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AgentSubmission object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AgentSubmissionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'agency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AgentSubmissionAgencyEnum),
          ) as AgentSubmissionAgencyEnum?;
          if (valueDes == null) continue;
          result.agency = valueDes;
          break;
        case r'gender':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(CustomerPersonalGenderEnum),
          ) as CustomerPersonalGenderEnum?;
          if (valueDes == null) continue;
          result.gender = valueDes;
          break;
        case r'stateOfOrigin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.stateOfOrigin = valueDes;
          break;
        case r'maidenName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.maidenName = valueDes;
          break;
        case r'dateOfBirth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Date),
          ) as Date?;
          if (valueDes == null) continue;
          result.dateOfBirth = valueDes;
          break;
        case r'officeAddress':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Address),
          ) as Address?;
          if (valueDes == null) continue;
          result.officeAddress = valueDes;
          break;
        case r'qualification':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AgentSubmissionQualificationEnum),
          ) as AgentSubmissionQualificationEnum?;
          if (valueDes == null) continue;
          result.qualification = valueDes;
          break;
        case r'firstName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.firstName = valueDes;
          break;
        case r'phone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.phone = valueDes;
          break;
        case r'residentAddress':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Address),
          ) as Address?;
          if (valueDes == null) continue;
          result.residentAddress = valueDes;
          break;
        case r'maritalStatus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AgentSubmissionMaritalStatusEnum),
          ) as AgentSubmissionMaritalStatusEnum?;
          if (valueDes == null) continue;
          result.maritalStatus = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AgentSubmission deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AgentSubmissionBuilder();
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


class AgentSubmissionGenderEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'male')
  static const AgentSubmissionGenderEnum male = _$agentSubmissionGenderEnum_male;
  @BuiltValueEnumConst(wireName: r'female')
  static const AgentSubmissionGenderEnum female = _$agentSubmissionGenderEnum_female;

  static Serializer<AgentSubmissionGenderEnum> get serializer => _$agentSubmissionGenderEnumSerializer;

  const AgentSubmissionGenderEnum._(String name): super(name);

  static BuiltSet<AgentSubmissionGenderEnum> get values => _$agentSubmissionGenderEnumValues;
  static AgentSubmissionGenderEnum valueOf(String name) => _$agentSubmissionGenderEnumValueOf(name);
}

class AgentSubmissionMaritalStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'single')
  static const AgentSubmissionMaritalStatusEnum single = _$agentSubmissionMaritalStatusEnum_single;
  @BuiltValueEnumConst(wireName: r'married')
  static const AgentSubmissionMaritalStatusEnum married = _$agentSubmissionMaritalStatusEnum_married;
  @BuiltValueEnumConst(wireName: r'divorce')
  static const AgentSubmissionMaritalStatusEnum divorce = _$agentSubmissionMaritalStatusEnum_divorce;
  @BuiltValueEnumConst(wireName: r'widowed')
  static const AgentSubmissionMaritalStatusEnum widowed = _$agentSubmissionMaritalStatusEnum_widowed;

  static Serializer<AgentSubmissionMaritalStatusEnum> get serializer => _$agentSubmissionMaritalStatusEnumSerializer;

  const AgentSubmissionMaritalStatusEnum._(String name): super(name);

  static BuiltSet<AgentSubmissionMaritalStatusEnum> get values => _$agentSubmissionMaritalStatusEnumValues;
  static AgentSubmissionMaritalStatusEnum valueOf(String name) => _$agentSubmissionMaritalStatusEnumValueOf(name);
}

class AgentSubmissionAgencyEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'partTime')
  static const AgentSubmissionAgencyEnum partTime = _$agentSubmissionAgencyEnum_partTime;
  @BuiltValueEnumConst(wireName: r'fullTime')
  static const AgentSubmissionAgencyEnum fullTime = _$agentSubmissionAgencyEnum_fullTime;

  static Serializer<AgentSubmissionAgencyEnum> get serializer => _$agentSubmissionAgencyEnumSerializer;

  const AgentSubmissionAgencyEnum._(String name): super(name);

  static BuiltSet<AgentSubmissionAgencyEnum> get values => _$agentSubmissionAgencyEnumValues;
  static AgentSubmissionAgencyEnum valueOf(String name) => _$agentSubmissionAgencyEnumValueOf(name);
}

class AgentSubmissionQualificationEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'SSCE')
  static const AgentSubmissionQualificationEnum SSCE = _$agentSubmissionQualificationEnum_SSCE;
  @BuiltValueEnumConst(wireName: r'BSC')
  static const AgentSubmissionQualificationEnum BSC = _$agentSubmissionQualificationEnum_BSC;
  @BuiltValueEnumConst(wireName: r'OND')
  static const AgentSubmissionQualificationEnum OND = _$agentSubmissionQualificationEnum_OND;
  @BuiltValueEnumConst(wireName: r'HND')
  static const AgentSubmissionQualificationEnum HND = _$agentSubmissionQualificationEnum_HND;
  @BuiltValueEnumConst(wireName: r'MSC')
  static const AgentSubmissionQualificationEnum MSC = _$agentSubmissionQualificationEnum_MSC;
  @BuiltValueEnumConst(wireName: r'PDG')
  static const AgentSubmissionQualificationEnum PDG = _$agentSubmissionQualificationEnum_PDG;

  static Serializer<AgentSubmissionQualificationEnum> get serializer => _$agentSubmissionQualificationEnumSerializer;

  const AgentSubmissionQualificationEnum._(String name): super(name);

  static BuiltSet<AgentSubmissionQualificationEnum> get values => _$agentSubmissionQualificationEnumValues;
  static AgentSubmissionQualificationEnum valueOf(String name) => _$agentSubmissionQualificationEnumValueOf(name);
}

