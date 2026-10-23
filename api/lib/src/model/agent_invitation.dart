//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'agent_invitation.g.dart';

/// AgentInvitation
///
/// Properties:
/// * [agentSubmissionId] 
/// * [firstName] 
/// * [lastName] 
/// * [email] 
/// * [phone] 
/// * [primaryCompany] 
/// * [hilBranch] 
/// * [hlaBranch] 
/// * [position] 
/// * [lineManagerId] 
@BuiltValue()
abstract class AgentInvitation implements Built<AgentInvitation, AgentInvitationBuilder> {
  @BuiltValueField(wireName: r'agentSubmissionId')
  String? get agentSubmissionId;

  @BuiltValueField(wireName: r'firstName')
  String? get firstName;

  @BuiltValueField(wireName: r'lastName')
  String? get lastName;

  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'phone')
  String? get phone;

  @BuiltValueField(wireName: r'primaryCompany')
  AgentInvitationPrimaryCompanyEnum? get primaryCompany;
  // enum primaryCompanyEnum {  Heirs Life Assurance,  Heirs Insurance,  };

  @BuiltValueField(wireName: r'hilBranch')
  String? get hilBranch;

  @BuiltValueField(wireName: r'hlaBranch')
  String? get hlaBranch;

  @BuiltValueField(wireName: r'position')
  AgentInvitationPositionEnum? get position;
  // enum positionEnum {  FA,  UM,  BRO,  SBRO,  };

  @BuiltValueField(wireName: r'lineManagerId')
  num? get lineManagerId;

  AgentInvitation._();

  factory AgentInvitation([void updates(AgentInvitationBuilder b)]) = _$AgentInvitation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AgentInvitationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AgentInvitation> get serializer => _$AgentInvitationSerializer();
}

class _$AgentInvitationSerializer implements PrimitiveSerializer<AgentInvitation> {
  @override
  final Iterable<Type> types = const [AgentInvitation, _$AgentInvitation];

  @override
  final String wireName = r'AgentInvitation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AgentInvitation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.agentSubmissionId != null) {
      yield r'agentSubmissionId';
      yield serializers.serialize(
        object.agentSubmissionId,
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
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
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
    if (object.primaryCompany != null) {
      yield r'primaryCompany';
      yield serializers.serialize(
        object.primaryCompany,
        specifiedType: const FullType(AgentInvitationPrimaryCompanyEnum),
      );
    }
    if (object.hilBranch != null) {
      yield r'hilBranch';
      yield serializers.serialize(
        object.hilBranch,
        specifiedType: const FullType(String),
      );
    }
    if (object.hlaBranch != null) {
      yield r'hlaBranch';
      yield serializers.serialize(
        object.hlaBranch,
        specifiedType: const FullType(String),
      );
    }
    if (object.position != null) {
      yield r'position';
      yield serializers.serialize(
        object.position,
        specifiedType: const FullType(AgentInvitationPositionEnum),
      );
    }
    if (object.lineManagerId != null) {
      yield r'lineManagerId';
      yield serializers.serialize(
        object.lineManagerId,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AgentInvitation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AgentInvitationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'agentSubmissionId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.agentSubmissionId = valueDes;
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
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.email = valueDes;
          break;
        case r'phone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.phone = valueDes;
          break;
        case r'primaryCompany':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AgentInvitationPrimaryCompanyEnum),
          ) as AgentInvitationPrimaryCompanyEnum?;
          if (valueDes == null) continue;
          result.primaryCompany = valueDes;
          break;
        case r'hilBranch':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.hilBranch = valueDes;
          break;
        case r'hlaBranch':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.hlaBranch = valueDes;
          break;
        case r'position':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AgentInvitationPositionEnum),
          ) as AgentInvitationPositionEnum?;
          if (valueDes == null) continue;
          result.position = valueDes;
          break;
        case r'lineManagerId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.lineManagerId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AgentInvitation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AgentInvitationBuilder();
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


class AgentInvitationPrimaryCompanyEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Heirs Life Assurance')
  static const AgentInvitationPrimaryCompanyEnum heirsLifeAssurance = _$agentInvitationPrimaryCompanyEnum_heirsLifeAssurance;
  @BuiltValueEnumConst(wireName: r'Heirs Insurance')
  static const AgentInvitationPrimaryCompanyEnum heirsInsurance = _$agentInvitationPrimaryCompanyEnum_heirsInsurance;

  static Serializer<AgentInvitationPrimaryCompanyEnum> get serializer => _$agentInvitationPrimaryCompanyEnumSerializer;

  const AgentInvitationPrimaryCompanyEnum._(String name): super(name);

  static BuiltSet<AgentInvitationPrimaryCompanyEnum> get values => _$agentInvitationPrimaryCompanyEnumValues;
  static AgentInvitationPrimaryCompanyEnum valueOf(String name) => _$agentInvitationPrimaryCompanyEnumValueOf(name);
}

class AgentInvitationPositionEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'FA')
  static const AgentInvitationPositionEnum FA = _$agentInvitationPositionEnum_FA;
  @BuiltValueEnumConst(wireName: r'UM')
  static const AgentInvitationPositionEnum UM = _$agentInvitationPositionEnum_UM;
  @BuiltValueEnumConst(wireName: r'BRO')
  static const AgentInvitationPositionEnum BRO = _$agentInvitationPositionEnum_BRO;
  @BuiltValueEnumConst(wireName: r'SBRO')
  static const AgentInvitationPositionEnum SBRO = _$agentInvitationPositionEnum_SBRO;

  static Serializer<AgentInvitationPositionEnum> get serializer => _$agentInvitationPositionEnumSerializer;

  const AgentInvitationPositionEnum._(String name): super(name);

  static BuiltSet<AgentInvitationPositionEnum> get values => _$agentInvitationPositionEnumValues;
  static AgentInvitationPositionEnum valueOf(String name) => _$agentInvitationPositionEnumValueOf(name);
}

