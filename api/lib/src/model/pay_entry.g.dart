// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pay_entry.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PayEntryMethodEnum _$payEntryMethodEnum_seerbit =
    const PayEntryMethodEnum._('seerbit');
const PayEntryMethodEnum _$payEntryMethodEnum_paystack =
    const PayEntryMethodEnum._('paystack');
const PayEntryMethodEnum _$payEntryMethodEnum_flutterwave =
    const PayEntryMethodEnum._('flutterwave');
const PayEntryMethodEnum _$payEntryMethodEnum_remita =
    const PayEntryMethodEnum._('remita');
const PayEntryMethodEnum _$payEntryMethodEnum_bank =
    const PayEntryMethodEnum._('bank');
const PayEntryMethodEnum _$payEntryMethodEnum_ubapfc =
    const PayEntryMethodEnum._('ubapfc');
const PayEntryMethodEnum _$payEntryMethodEnum_wallet =
    const PayEntryMethodEnum._('wallet');

PayEntryMethodEnum _$payEntryMethodEnumValueOf(String name) {
  switch (name) {
    case 'seerbit':
      return _$payEntryMethodEnum_seerbit;
    case 'paystack':
      return _$payEntryMethodEnum_paystack;
    case 'flutterwave':
      return _$payEntryMethodEnum_flutterwave;
    case 'remita':
      return _$payEntryMethodEnum_remita;
    case 'bank':
      return _$payEntryMethodEnum_bank;
    case 'ubapfc':
      return _$payEntryMethodEnum_ubapfc;
    case 'wallet':
      return _$payEntryMethodEnum_wallet;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PayEntryMethodEnum> _$payEntryMethodEnumValues =
    BuiltSet<PayEntryMethodEnum>(const <PayEntryMethodEnum>[
  _$payEntryMethodEnum_seerbit,
  _$payEntryMethodEnum_paystack,
  _$payEntryMethodEnum_flutterwave,
  _$payEntryMethodEnum_remita,
  _$payEntryMethodEnum_bank,
  _$payEntryMethodEnum_ubapfc,
  _$payEntryMethodEnum_wallet,
]);

Serializer<PayEntryMethodEnum> _$payEntryMethodEnumSerializer =
    _$PayEntryMethodEnumSerializer();

class _$PayEntryMethodEnumSerializer
    implements PrimitiveSerializer<PayEntryMethodEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'seerbit': 'seerbit',
    'paystack': 'paystack',
    'flutterwave': 'flutterwave',
    'remita': 'remita',
    'bank': 'bank',
    'ubapfc': 'ubapfc',
    'wallet': 'wallet',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'seerbit': 'seerbit',
    'paystack': 'paystack',
    'flutterwave': 'flutterwave',
    'remita': 'remita',
    'bank': 'bank',
    'ubapfc': 'ubapfc',
    'wallet': 'wallet',
  };

  @override
  final Iterable<Type> types = const <Type>[PayEntryMethodEnum];
  @override
  final String wireName = 'PayEntryMethodEnum';

  @override
  Object serialize(Serializers serializers, PayEntryMethodEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PayEntryMethodEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PayEntryMethodEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PayEntry extends PayEntry {
  @override
  final String referrer;
  @override
  final num? paymentCode;
  @override
  final num? multiple;
  @override
  final PayEntryMethodEnum method;

  factory _$PayEntry([void Function(PayEntryBuilder)? updates]) =>
      (PayEntryBuilder()..update(updates))._build();

  _$PayEntry._(
      {required this.referrer,
      this.paymentCode,
      this.multiple,
      required this.method})
      : super._();
  @override
  PayEntry rebuild(void Function(PayEntryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PayEntryBuilder toBuilder() => PayEntryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PayEntry &&
        referrer == other.referrer &&
        paymentCode == other.paymentCode &&
        multiple == other.multiple &&
        method == other.method;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, referrer.hashCode);
    _$hash = $jc(_$hash, paymentCode.hashCode);
    _$hash = $jc(_$hash, multiple.hashCode);
    _$hash = $jc(_$hash, method.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PayEntry')
          ..add('referrer', referrer)
          ..add('paymentCode', paymentCode)
          ..add('multiple', multiple)
          ..add('method', method))
        .toString();
  }
}

class PayEntryBuilder implements Builder<PayEntry, PayEntryBuilder> {
  _$PayEntry? _$v;

  String? _referrer;
  String? get referrer => _$this._referrer;
  set referrer(String? referrer) => _$this._referrer = referrer;

  num? _paymentCode;
  num? get paymentCode => _$this._paymentCode;
  set paymentCode(num? paymentCode) => _$this._paymentCode = paymentCode;

  num? _multiple;
  num? get multiple => _$this._multiple;
  set multiple(num? multiple) => _$this._multiple = multiple;

  PayEntryMethodEnum? _method;
  PayEntryMethodEnum? get method => _$this._method;
  set method(PayEntryMethodEnum? method) => _$this._method = method;

  PayEntryBuilder() {
    PayEntry._defaults(this);
  }

  PayEntryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _referrer = $v.referrer;
      _paymentCode = $v.paymentCode;
      _multiple = $v.multiple;
      _method = $v.method;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PayEntry other) {
    _$v = other as _$PayEntry;
  }

  @override
  void update(void Function(PayEntryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PayEntry build() => _build();

  _$PayEntry _build() {
    final _$result = _$v ??
        _$PayEntry._(
          referrer: BuiltValueNullFieldError.checkNotNull(
              referrer, r'PayEntry', 'referrer'),
          paymentCode: paymentCode,
          multiple: multiple,
          method: BuiltValueNullFieldError.checkNotNull(
              method, r'PayEntry', 'method'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
