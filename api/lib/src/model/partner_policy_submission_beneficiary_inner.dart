//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'partner_policy_submission_beneficiary_inner.g.dart';

/// PartnerPolicySubmissionBeneficiaryInner
///
/// Properties:
/// * [name] 
/// * [email] 
/// * [phone] 
@BuiltValue()
abstract class PartnerPolicySubmissionBeneficiaryInner implements Built<PartnerPolicySubmissionBeneficiaryInner, PartnerPolicySubmissionBeneficiaryInnerBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'email')
  String get email;

  @BuiltValueField(wireName: r'phone')
  String get phone;

  PartnerPolicySubmissionBeneficiaryInner._();

  factory PartnerPolicySubmissionBeneficiaryInner([void updates(PartnerPolicySubmissionBeneficiaryInnerBuilder b)]) = _$PartnerPolicySubmissionBeneficiaryInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PartnerPolicySubmissionBeneficiaryInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PartnerPolicySubmissionBeneficiaryInner> get serializer => _$PartnerPolicySubmissionBeneficiaryInnerSerializer();
}

class _$PartnerPolicySubmissionBeneficiaryInnerSerializer implements PrimitiveSerializer<PartnerPolicySubmissionBeneficiaryInner> {
  @override
  final Iterable<Type> types = const [PartnerPolicySubmissionBeneficiaryInner, _$PartnerPolicySubmissionBeneficiaryInner];

  @override
  final String wireName = r'PartnerPolicySubmissionBeneficiaryInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PartnerPolicySubmissionBeneficiaryInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    yield r'phone';
    yield serializers.serialize(
      object.phone,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PartnerPolicySubmissionBeneficiaryInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PartnerPolicySubmissionBeneficiaryInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'phone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.phone = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PartnerPolicySubmissionBeneficiaryInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PartnerPolicySubmissionBeneficiaryInnerBuilder();
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


