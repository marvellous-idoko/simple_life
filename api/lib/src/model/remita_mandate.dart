//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'remita_mandate.g.dart';

/// RemitaMandate
///
/// Properties:
/// * [mandateId] 
/// * [eskaPolicyId] 
/// * [policyNumber] 
/// * [payId] 
/// * [amount] 
/// * [accountNumber] 
/// * [accountName] 
/// * [bankId] 
/// * [frequency] 
/// * [startDate] 
/// * [endDate] 
@BuiltValue()
abstract class RemitaMandate implements Built<RemitaMandate, RemitaMandateBuilder> {
  @BuiltValueField(wireName: r'mandateId')
  String? get mandateId;

  @BuiltValueField(wireName: r'eskaPolicyId')
  num? get eskaPolicyId;

  @BuiltValueField(wireName: r'policyNumber')
  String? get policyNumber;

  @BuiltValueField(wireName: r'payId')
  String? get payId;

  @BuiltValueField(wireName: r'amount')
  num? get amount;

  @BuiltValueField(wireName: r'accountNumber')
  String? get accountNumber;

  @BuiltValueField(wireName: r'accountName')
  String? get accountName;

  @BuiltValueField(wireName: r'bankId')
  String? get bankId;

  @BuiltValueField(wireName: r'frequency')
  RemitaMandateFrequencyEnum? get frequency;
  // enum frequencyEnum {  monthly,  quarterly,  annual,  biannual,  daily,  weekly,  };

  @BuiltValueField(wireName: r'startDate')
  String? get startDate;

  @BuiltValueField(wireName: r'endDate')
  String? get endDate;

  RemitaMandate._();

  factory RemitaMandate([void updates(RemitaMandateBuilder b)]) = _$RemitaMandate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RemitaMandateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RemitaMandate> get serializer => _$RemitaMandateSerializer();
}

class _$RemitaMandateSerializer implements PrimitiveSerializer<RemitaMandate> {
  @override
  final Iterable<Type> types = const [RemitaMandate, _$RemitaMandate];

  @override
  final String wireName = r'RemitaMandate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RemitaMandate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.mandateId != null) {
      yield r'mandateId';
      yield serializers.serialize(
        object.mandateId,
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
    if (object.payId != null) {
      yield r'payId';
      yield serializers.serialize(
        object.payId,
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
    if (object.accountNumber != null) {
      yield r'accountNumber';
      yield serializers.serialize(
        object.accountNumber,
        specifiedType: const FullType(String),
      );
    }
    if (object.accountName != null) {
      yield r'accountName';
      yield serializers.serialize(
        object.accountName,
        specifiedType: const FullType(String),
      );
    }
    if (object.bankId != null) {
      yield r'bankId';
      yield serializers.serialize(
        object.bankId,
        specifiedType: const FullType(String),
      );
    }
    if (object.frequency != null) {
      yield r'frequency';
      yield serializers.serialize(
        object.frequency,
        specifiedType: const FullType(RemitaMandateFrequencyEnum),
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
    RemitaMandate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RemitaMandateBuilder result,
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
        case r'payId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.payId = valueDes;
          break;
        case r'amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.amount = valueDes;
          break;
        case r'accountNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.accountNumber = valueDes;
          break;
        case r'accountName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.accountName = valueDes;
          break;
        case r'bankId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.bankId = valueDes;
          break;
        case r'frequency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RemitaMandateFrequencyEnum),
          ) as RemitaMandateFrequencyEnum?;
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
  RemitaMandate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RemitaMandateBuilder();
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


class RemitaMandateFrequencyEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'monthly')
  static const RemitaMandateFrequencyEnum monthly = _$remitaMandateFrequencyEnum_monthly;
  @BuiltValueEnumConst(wireName: r'quarterly')
  static const RemitaMandateFrequencyEnum quarterly = _$remitaMandateFrequencyEnum_quarterly;
  @BuiltValueEnumConst(wireName: r'annual')
  static const RemitaMandateFrequencyEnum annual = _$remitaMandateFrequencyEnum_annual;
  @BuiltValueEnumConst(wireName: r'biannual')
  static const RemitaMandateFrequencyEnum biannual = _$remitaMandateFrequencyEnum_biannual;
  @BuiltValueEnumConst(wireName: r'daily')
  static const RemitaMandateFrequencyEnum daily = _$remitaMandateFrequencyEnum_daily;
  @BuiltValueEnumConst(wireName: r'weekly')
  static const RemitaMandateFrequencyEnum weekly = _$remitaMandateFrequencyEnum_weekly;

  static Serializer<RemitaMandateFrequencyEnum> get serializer => _$remitaMandateFrequencyEnumSerializer;

  const RemitaMandateFrequencyEnum._(String name): super(name);

  static BuiltSet<RemitaMandateFrequencyEnum> get values => _$remitaMandateFrequencyEnumValues;
  static RemitaMandateFrequencyEnum valueOf(String name) => _$remitaMandateFrequencyEnumValueOf(name);
}

