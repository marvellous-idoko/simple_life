//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'policy_premium_summary.g.dart';

/// PolicyPremiumSummary
///
/// Properties:
/// * [interest] 
/// * [paidUpDays] 
/// * [expectedPaidInstallments] 
/// * [protectionPremiumDue] 
/// * [totalPremium] 
/// * [netPremium] 
/// * [policyDuration] 
@BuiltValue()
abstract class PolicyPremiumSummary implements Built<PolicyPremiumSummary, PolicyPremiumSummaryBuilder> {
  @BuiltValueField(wireName: r'interest')
  num? get interest;

  @BuiltValueField(wireName: r'paidUpDays')
  num? get paidUpDays;

  @BuiltValueField(wireName: r'expectedPaidInstallments')
  num? get expectedPaidInstallments;

  @BuiltValueField(wireName: r'protectionPremiumDue')
  num? get protectionPremiumDue;

  @BuiltValueField(wireName: r'totalPremium')
  num? get totalPremium;

  @BuiltValueField(wireName: r'netPremium')
  num? get netPremium;

  @BuiltValueField(wireName: r'policyDuration')
  num? get policyDuration;

  PolicyPremiumSummary._();

  factory PolicyPremiumSummary([void updates(PolicyPremiumSummaryBuilder b)]) = _$PolicyPremiumSummary;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PolicyPremiumSummaryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PolicyPremiumSummary> get serializer => _$PolicyPremiumSummarySerializer();
}

class _$PolicyPremiumSummarySerializer implements PrimitiveSerializer<PolicyPremiumSummary> {
  @override
  final Iterable<Type> types = const [PolicyPremiumSummary, _$PolicyPremiumSummary];

  @override
  final String wireName = r'PolicyPremiumSummary';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PolicyPremiumSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.interest != null) {
      yield r'interest';
      yield serializers.serialize(
        object.interest,
        specifiedType: const FullType(num),
      );
    }
    if (object.paidUpDays != null) {
      yield r'paidUpDays';
      yield serializers.serialize(
        object.paidUpDays,
        specifiedType: const FullType(num),
      );
    }
    if (object.expectedPaidInstallments != null) {
      yield r'expectedPaidInstallments';
      yield serializers.serialize(
        object.expectedPaidInstallments,
        specifiedType: const FullType(num),
      );
    }
    if (object.protectionPremiumDue != null) {
      yield r'protectionPremiumDue';
      yield serializers.serialize(
        object.protectionPremiumDue,
        specifiedType: const FullType(num),
      );
    }
    if (object.totalPremium != null) {
      yield r'totalPremium';
      yield serializers.serialize(
        object.totalPremium,
        specifiedType: const FullType(num),
      );
    }
    if (object.netPremium != null) {
      yield r'netPremium';
      yield serializers.serialize(
        object.netPremium,
        specifiedType: const FullType(num),
      );
    }
    if (object.policyDuration != null) {
      yield r'policyDuration';
      yield serializers.serialize(
        object.policyDuration,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PolicyPremiumSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PolicyPremiumSummaryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'interest':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.interest = valueDes;
          break;
        case r'paidUpDays':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.paidUpDays = valueDes;
          break;
        case r'expectedPaidInstallments':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.expectedPaidInstallments = valueDes;
          break;
        case r'protectionPremiumDue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.protectionPremiumDue = valueDes;
          break;
        case r'totalPremium':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.totalPremium = valueDes;
          break;
        case r'netPremium':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.netPremium = valueDes;
          break;
        case r'policyDuration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.policyDuration = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PolicyPremiumSummary deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PolicyPremiumSummaryBuilder();
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


