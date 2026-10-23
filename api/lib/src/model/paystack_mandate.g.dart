// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paystack_mandate.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PaystackMandateFrequencyEnum _$paystackMandateFrequencyEnum_monthly =
    const PaystackMandateFrequencyEnum._('monthly');
const PaystackMandateFrequencyEnum _$paystackMandateFrequencyEnum_quarterly =
    const PaystackMandateFrequencyEnum._('quarterly');
const PaystackMandateFrequencyEnum _$paystackMandateFrequencyEnum_annual =
    const PaystackMandateFrequencyEnum._('annual');
const PaystackMandateFrequencyEnum _$paystackMandateFrequencyEnum_biannual =
    const PaystackMandateFrequencyEnum._('biannual');
const PaystackMandateFrequencyEnum _$paystackMandateFrequencyEnum_daily =
    const PaystackMandateFrequencyEnum._('daily');
const PaystackMandateFrequencyEnum _$paystackMandateFrequencyEnum_weekly =
    const PaystackMandateFrequencyEnum._('weekly');

PaystackMandateFrequencyEnum _$paystackMandateFrequencyEnumValueOf(
    String name) {
  switch (name) {
    case 'monthly':
      return _$paystackMandateFrequencyEnum_monthly;
    case 'quarterly':
      return _$paystackMandateFrequencyEnum_quarterly;
    case 'annual':
      return _$paystackMandateFrequencyEnum_annual;
    case 'biannual':
      return _$paystackMandateFrequencyEnum_biannual;
    case 'daily':
      return _$paystackMandateFrequencyEnum_daily;
    case 'weekly':
      return _$paystackMandateFrequencyEnum_weekly;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PaystackMandateFrequencyEnum>
    _$paystackMandateFrequencyEnumValues =
    BuiltSet<PaystackMandateFrequencyEnum>(const <PaystackMandateFrequencyEnum>[
  _$paystackMandateFrequencyEnum_monthly,
  _$paystackMandateFrequencyEnum_quarterly,
  _$paystackMandateFrequencyEnum_annual,
  _$paystackMandateFrequencyEnum_biannual,
  _$paystackMandateFrequencyEnum_daily,
  _$paystackMandateFrequencyEnum_weekly,
]);

Serializer<PaystackMandateFrequencyEnum>
    _$paystackMandateFrequencyEnumSerializer =
    _$PaystackMandateFrequencyEnumSerializer();

class _$PaystackMandateFrequencyEnumSerializer
    implements PrimitiveSerializer<PaystackMandateFrequencyEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'monthly': 'monthly',
    'quarterly': 'quarterly',
    'annual': 'annual',
    'biannual': 'biannual',
    'daily': 'daily',
    'weekly': 'weekly',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'monthly': 'monthly',
    'quarterly': 'quarterly',
    'annual': 'annual',
    'biannual': 'biannual',
    'daily': 'daily',
    'weekly': 'weekly',
  };

  @override
  final Iterable<Type> types = const <Type>[PaystackMandateFrequencyEnum];
  @override
  final String wireName = 'PaystackMandateFrequencyEnum';

  @override
  Object serialize(Serializers serializers, PaystackMandateFrequencyEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PaystackMandateFrequencyEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PaystackMandateFrequencyEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PaystackMandate extends PaystackMandate {
  @override
  final String? mandateId;
  @override
  final String? authorizationId;
  @override
  final num? eskaPolicyId;
  @override
  final String? policyNumber;
  @override
  final String? fullName;
  @override
  final String? authorizer;
  @override
  final num? amount;
  @override
  final PaystackMandateFrequencyEnum? frequency;
  @override
  final String? startDate;
  @override
  final String? endDate;

  factory _$PaystackMandate([void Function(PaystackMandateBuilder)? updates]) =>
      (PaystackMandateBuilder()..update(updates))._build();

  _$PaystackMandate._(
      {this.mandateId,
      this.authorizationId,
      this.eskaPolicyId,
      this.policyNumber,
      this.fullName,
      this.authorizer,
      this.amount,
      this.frequency,
      this.startDate,
      this.endDate})
      : super._();
  @override
  PaystackMandate rebuild(void Function(PaystackMandateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaystackMandateBuilder toBuilder() => PaystackMandateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaystackMandate &&
        mandateId == other.mandateId &&
        authorizationId == other.authorizationId &&
        eskaPolicyId == other.eskaPolicyId &&
        policyNumber == other.policyNumber &&
        fullName == other.fullName &&
        authorizer == other.authorizer &&
        amount == other.amount &&
        frequency == other.frequency &&
        startDate == other.startDate &&
        endDate == other.endDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, mandateId.hashCode);
    _$hash = $jc(_$hash, authorizationId.hashCode);
    _$hash = $jc(_$hash, eskaPolicyId.hashCode);
    _$hash = $jc(_$hash, policyNumber.hashCode);
    _$hash = $jc(_$hash, fullName.hashCode);
    _$hash = $jc(_$hash, authorizer.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, frequency.hashCode);
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PaystackMandate')
          ..add('mandateId', mandateId)
          ..add('authorizationId', authorizationId)
          ..add('eskaPolicyId', eskaPolicyId)
          ..add('policyNumber', policyNumber)
          ..add('fullName', fullName)
          ..add('authorizer', authorizer)
          ..add('amount', amount)
          ..add('frequency', frequency)
          ..add('startDate', startDate)
          ..add('endDate', endDate))
        .toString();
  }
}

class PaystackMandateBuilder
    implements Builder<PaystackMandate, PaystackMandateBuilder> {
  _$PaystackMandate? _$v;

  String? _mandateId;
  String? get mandateId => _$this._mandateId;
  set mandateId(String? mandateId) => _$this._mandateId = mandateId;

  String? _authorizationId;
  String? get authorizationId => _$this._authorizationId;
  set authorizationId(String? authorizationId) =>
      _$this._authorizationId = authorizationId;

  num? _eskaPolicyId;
  num? get eskaPolicyId => _$this._eskaPolicyId;
  set eskaPolicyId(num? eskaPolicyId) => _$this._eskaPolicyId = eskaPolicyId;

  String? _policyNumber;
  String? get policyNumber => _$this._policyNumber;
  set policyNumber(String? policyNumber) => _$this._policyNumber = policyNumber;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  String? _authorizer;
  String? get authorizer => _$this._authorizer;
  set authorizer(String? authorizer) => _$this._authorizer = authorizer;

  num? _amount;
  num? get amount => _$this._amount;
  set amount(num? amount) => _$this._amount = amount;

  PaystackMandateFrequencyEnum? _frequency;
  PaystackMandateFrequencyEnum? get frequency => _$this._frequency;
  set frequency(PaystackMandateFrequencyEnum? frequency) =>
      _$this._frequency = frequency;

  String? _startDate;
  String? get startDate => _$this._startDate;
  set startDate(String? startDate) => _$this._startDate = startDate;

  String? _endDate;
  String? get endDate => _$this._endDate;
  set endDate(String? endDate) => _$this._endDate = endDate;

  PaystackMandateBuilder() {
    PaystackMandate._defaults(this);
  }

  PaystackMandateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mandateId = $v.mandateId;
      _authorizationId = $v.authorizationId;
      _eskaPolicyId = $v.eskaPolicyId;
      _policyNumber = $v.policyNumber;
      _fullName = $v.fullName;
      _authorizer = $v.authorizer;
      _amount = $v.amount;
      _frequency = $v.frequency;
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PaystackMandate other) {
    _$v = other as _$PaystackMandate;
  }

  @override
  void update(void Function(PaystackMandateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PaystackMandate build() => _build();

  _$PaystackMandate _build() {
    final _$result = _$v ??
        _$PaystackMandate._(
          mandateId: mandateId,
          authorizationId: authorizationId,
          eskaPolicyId: eskaPolicyId,
          policyNumber: policyNumber,
          fullName: fullName,
          authorizer: authorizer,
          amount: amount,
          frequency: frequency,
          startDate: startDate,
          endDate: endDate,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
