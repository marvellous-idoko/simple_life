//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pay_entry.g.dart';

/// PayEntry
///
/// Properties:
/// * [referrer] 
/// * [paymentCode] 
/// * [multiple] 
/// * [method] 
@BuiltValue()
abstract class PayEntry implements Built<PayEntry, PayEntryBuilder> {
  @BuiltValueField(wireName: r'referrer')
  String get referrer;

  @BuiltValueField(wireName: r'paymentCode')
  num? get paymentCode;

  @BuiltValueField(wireName: r'multiple')
  num? get multiple;

  @BuiltValueField(wireName: r'method')
  PayEntryMethodEnum get method;
  // enum methodEnum {  seerbit,  paystack,  flutterwave,  remita,  bank,  ubapfc,  wallet,  };

  PayEntry._();

  factory PayEntry([void updates(PayEntryBuilder b)]) = _$PayEntry;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PayEntryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PayEntry> get serializer => _$PayEntrySerializer();
}

class _$PayEntrySerializer implements PrimitiveSerializer<PayEntry> {
  @override
  final Iterable<Type> types = const [PayEntry, _$PayEntry];

  @override
  final String wireName = r'PayEntry';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PayEntry object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'referrer';
    yield serializers.serialize(
      object.referrer,
      specifiedType: const FullType(String),
    );
    if (object.paymentCode != null) {
      yield r'paymentCode';
      yield serializers.serialize(
        object.paymentCode,
        specifiedType: const FullType(num),
      );
    }
    if (object.multiple != null) {
      yield r'multiple';
      yield serializers.serialize(
        object.multiple,
        specifiedType: const FullType(num),
      );
    }
    yield r'method';
    yield serializers.serialize(
      object.method,
      specifiedType: const FullType(PayEntryMethodEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PayEntry object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PayEntryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'referrer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.referrer = valueDes;
          break;
        case r'paymentCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.paymentCode = valueDes;
          break;
        case r'multiple':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.multiple = valueDes;
          break;
        case r'method':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PayEntryMethodEnum),
          ) as PayEntryMethodEnum;
          result.method = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PayEntry deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PayEntryBuilder();
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


class PayEntryMethodEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'seerbit')
  static const PayEntryMethodEnum seerbit = _$payEntryMethodEnum_seerbit;
  @BuiltValueEnumConst(wireName: r'paystack')
  static const PayEntryMethodEnum paystack = _$payEntryMethodEnum_paystack;
  @BuiltValueEnumConst(wireName: r'flutterwave')
  static const PayEntryMethodEnum flutterwave = _$payEntryMethodEnum_flutterwave;
  @BuiltValueEnumConst(wireName: r'remita')
  static const PayEntryMethodEnum remita = _$payEntryMethodEnum_remita;
  @BuiltValueEnumConst(wireName: r'bank')
  static const PayEntryMethodEnum bank = _$payEntryMethodEnum_bank;
  @BuiltValueEnumConst(wireName: r'ubapfc')
  static const PayEntryMethodEnum ubapfc = _$payEntryMethodEnum_ubapfc;
  @BuiltValueEnumConst(wireName: r'wallet')
  static const PayEntryMethodEnum wallet = _$payEntryMethodEnum_wallet;

  static Serializer<PayEntryMethodEnum> get serializer => _$payEntryMethodEnumSerializer;

  const PayEntryMethodEnum._(String name): super(name);

  static BuiltSet<PayEntryMethodEnum> get values => _$payEntryMethodEnumValues;
  static PayEntryMethodEnum valueOf(String name) => _$payEntryMethodEnumValueOf(name);
}

