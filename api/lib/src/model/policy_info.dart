//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'policy_info.g.dart';

/// PolicyInfo
///
/// Properties:
/// * [id] 
/// * [policyName] 
/// * [policyStatus] 
/// * [policyHolder] 
/// * [policyStartDate] 
/// * [policyExpiryDate] 
/// * [policyNumber] 
/// * [paymentCycle] 
/// * [premium] 
/// * [issueDate] 
/// * [duration] 
/// * [company] 
/// * [underwritingUrl] 
/// * [exchangeRate] 
@BuiltValue()
abstract class PolicyInfo implements Built<PolicyInfo, PolicyInfoBuilder> {
  @BuiltValueField(wireName: r'id')
  num? get id;

  @BuiltValueField(wireName: r'policyName')
  String? get policyName;

  @BuiltValueField(wireName: r'policyStatus')
  String? get policyStatus;

  @BuiltValueField(wireName: r'policyHolder')
  String? get policyHolder;

  @BuiltValueField(wireName: r'policyStartDate')
  String? get policyStartDate;

  @BuiltValueField(wireName: r'policyExpiryDate')
  String? get policyExpiryDate;

  @BuiltValueField(wireName: r'policyNumber')
  String? get policyNumber;

  @BuiltValueField(wireName: r'paymentCycle')
  String? get paymentCycle;

  @BuiltValueField(wireName: r'premium')
  String? get premium;

  @BuiltValueField(wireName: r'issueDate')
  String? get issueDate;

  @BuiltValueField(wireName: r'duration')
  String? get duration;

  @BuiltValueField(wireName: r'company')
  String? get company;

  @BuiltValueField(wireName: r'underwritingUrl')
  String? get underwritingUrl;

  @BuiltValueField(wireName: r'exchangeRate')
  num? get exchangeRate;

  PolicyInfo._();

  factory PolicyInfo([void updates(PolicyInfoBuilder b)]) = _$PolicyInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PolicyInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PolicyInfo> get serializer => _$PolicyInfoSerializer();
}

class _$PolicyInfoSerializer implements PrimitiveSerializer<PolicyInfo> {
  @override
  final Iterable<Type> types = const [PolicyInfo, _$PolicyInfo];

  @override
  final String wireName = r'PolicyInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PolicyInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(num),
      );
    }
    if (object.policyName != null) {
      yield r'policyName';
      yield serializers.serialize(
        object.policyName,
        specifiedType: const FullType(String),
      );
    }
    if (object.policyStatus != null) {
      yield r'policyStatus';
      yield serializers.serialize(
        object.policyStatus,
        specifiedType: const FullType(String),
      );
    }
    if (object.policyHolder != null) {
      yield r'policyHolder';
      yield serializers.serialize(
        object.policyHolder,
        specifiedType: const FullType(String),
      );
    }
    if (object.policyStartDate != null) {
      yield r'policyStartDate';
      yield serializers.serialize(
        object.policyStartDate,
        specifiedType: const FullType(String),
      );
    }
    if (object.policyExpiryDate != null) {
      yield r'policyExpiryDate';
      yield serializers.serialize(
        object.policyExpiryDate,
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
    if (object.paymentCycle != null) {
      yield r'paymentCycle';
      yield serializers.serialize(
        object.paymentCycle,
        specifiedType: const FullType(String),
      );
    }
    if (object.premium != null) {
      yield r'premium';
      yield serializers.serialize(
        object.premium,
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
    if (object.duration != null) {
      yield r'duration';
      yield serializers.serialize(
        object.duration,
        specifiedType: const FullType(String),
      );
    }
    if (object.company != null) {
      yield r'company';
      yield serializers.serialize(
        object.company,
        specifiedType: const FullType(String),
      );
    }
    if (object.underwritingUrl != null) {
      yield r'underwritingUrl';
      yield serializers.serialize(
        object.underwritingUrl,
        specifiedType: const FullType(String),
      );
    }
    if (object.exchangeRate != null) {
      yield r'exchangeRate';
      yield serializers.serialize(
        object.exchangeRate,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PolicyInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PolicyInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'policyName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.policyName = valueDes;
          break;
        case r'policyStatus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.policyStatus = valueDes;
          break;
        case r'policyHolder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.policyHolder = valueDes;
          break;
        case r'policyStartDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.policyStartDate = valueDes;
          break;
        case r'policyExpiryDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.policyExpiryDate = valueDes;
          break;
        case r'policyNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.policyNumber = valueDes;
          break;
        case r'paymentCycle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.paymentCycle = valueDes;
          break;
        case r'premium':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.premium = valueDes;
          break;
        case r'issueDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.issueDate = valueDes;
          break;
        case r'duration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.duration = valueDes;
          break;
        case r'company':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.company = valueDes;
          break;
        case r'underwritingUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.underwritingUrl = valueDes;
          break;
        case r'exchangeRate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.exchangeRate = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PolicyInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PolicyInfoBuilder();
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


