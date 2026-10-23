//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'paystack_mandate.g.dart';

/// PaystackMandate
///
/// Properties:
/// * [mandateId] 
/// * [authorizationId] 
/// * [eskaPolicyId] 
/// * [policyNumber] 
/// * [fullName] 
/// * [authorizer] 
/// * [amount] 
/// * [frequency] 
/// * [startDate] 
/// * [endDate] 
@BuiltValue()
abstract class PaystackMandate implements Built<PaystackMandate, PaystackMandateBuilder> {
  @BuiltValueField(wireName: r'mandateId')
  String? get mandateId;

  @BuiltValueField(wireName: r'authorizationId')
  String? get authorizationId;

  @BuiltValueField(wireName: r'eskaPolicyId')
  num? get eskaPolicyId;

  @BuiltValueField(wireName: r'policyNumber')
  String? get policyNumber;

  @BuiltValueField(wireName: r'fullName')
  String? get fullName;

  @BuiltValueField(wireName: r'authorizer')
  String? get authorizer;

  @BuiltValueField(wireName: r'amount')
  num? get amount;

  @BuiltValueField(wireName: r'frequency')
  PaystackMandateFrequencyEnum? get frequency;
  // enum frequencyEnum {  monthly,  quarterly,  annual,  biannual,  daily,  weekly,  };

  @BuiltValueField(wireName: r'startDate')
  String? get startDate;

  @BuiltValueField(wireName: r'endDate')
  String? get endDate;

  PaystackMandate._();

  factory PaystackMandate([void updates(PaystackMandateBuilder b)]) = _$PaystackMandate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PaystackMandateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PaystackMandate> get serializer => _$PaystackMandateSerializer();
}

class _$PaystackMandateSerializer implements PrimitiveSerializer<PaystackMandate> {
  @override
  final Iterable<Type> types = const [PaystackMandate, _$PaystackMandate];

  @override
  final String wireName = r'PaystackMandate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PaystackMandate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.mandateId != null) {
      yield r'mandateId';
      yield serializers.serialize(
        object.mandateId,
        specifiedType: const FullType(String),
      );
    }
    if (object.authorizationId != null) {
      yield r'authorizationId';
      yield serializers.serialize(
        object.authorizationId,
        specifiedType: const FullType(String),
      );
    }
    if (object.eskaPolicyId != null) {
      yield r'eskaPolicyId';
      yield serializers.serialize(
        object.eskaPolicyId,
        specifiedType: const FullType(num),
      );
    }
    if (object.policyNumber != null) {
      yield r'policyNumber';
      yield serializers.serialize(
        object.policyNumber,
        specifiedType: const FullType(String),
      );
    }
    if (object.fullName != null) {
      yield r'fullName';
      yield serializers.serialize(
        object.fullName,
        specifiedType: const FullType(String),
      );
    }
    if (object.authorizer != null) {
      yield r'authorizer';
      yield serializers.serialize(
        object.authorizer,
        specifiedType: const FullType(String),
      );
    }
    if (object.amount != null) {
      yield r'amount';
      yield serializers.serialize(
        object.amount,
        specifiedType: const FullType(num),
      );
    }
    if (object.frequency != null) {
      yield r'frequency';
      yield serializers.serialize(
        object.frequency,
        specifiedType: const FullType(PaystackMandateFrequencyEnum),
      );
    }
    if (object.startDate != null) {
      yield r'startDate';
      yield serializers.serialize(
        object.startDate,
        specifiedType: const FullType(String),
      );
    }
    if (object.endDate != null) {
      yield r'endDate';
      yield serializers.serialize(
        object.endDate,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PaystackMandate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PaystackMandateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'mandateId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.mandateId = valueDes;
          break;
        case r'authorizationId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.authorizationId = valueDes;
          break;
        case r'eskaPolicyId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.eskaPolicyId = valueDes;
          break;
        case r'policyNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.policyNumber = valueDes;
          break;
        case r'fullName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.fullName = valueDes;
          break;
        case r'authorizer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.authorizer = valueDes;
          break;
        case r'amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.amount = valueDes;
          break;
        case r'frequency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PaystackMandateFrequencyEnum),
          ) as PaystackMandateFrequencyEnum?;
          if (valueDes == null) continue;
          result.frequency = valueDes;
          break;
        case r'startDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.startDate = valueDes;
          break;
        case r'endDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.endDate = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PaystackMandate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PaystackMandateBuilder();
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


class PaystackMandateFrequencyEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'monthly')
  static const PaystackMandateFrequencyEnum monthly = _$paystackMandateFrequencyEnum_monthly;
  @BuiltValueEnumConst(wireName: r'quarterly')
  static const PaystackMandateFrequencyEnum quarterly = _$paystackMandateFrequencyEnum_quarterly;
  @BuiltValueEnumConst(wireName: r'annual')
  static const PaystackMandateFrequencyEnum annual = _$paystackMandateFrequencyEnum_annual;
  @BuiltValueEnumConst(wireName: r'biannual')
  static const PaystackMandateFrequencyEnum biannual = _$paystackMandateFrequencyEnum_biannual;
  @BuiltValueEnumConst(wireName: r'daily')
  static const PaystackMandateFrequencyEnum daily = _$paystackMandateFrequencyEnum_daily;
  @BuiltValueEnumConst(wireName: r'weekly')
  static const PaystackMandateFrequencyEnum weekly = _$paystackMandateFrequencyEnum_weekly;

  static Serializer<PaystackMandateFrequencyEnum> get serializer => _$paystackMandateFrequencyEnumSerializer;

  const PaystackMandateFrequencyEnum._(String name): super(name);

  static BuiltSet<PaystackMandateFrequencyEnum> get values => _$paystackMandateFrequencyEnumValues;
  static PaystackMandateFrequencyEnum valueOf(String name) => _$paystackMandateFrequencyEnumValueOf(name);
}

