// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remita_mandate.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RemitaMandateFrequencyEnum _$remitaMandateFrequencyEnum_monthly =
    const RemitaMandateFrequencyEnum._('monthly');
const RemitaMandateFrequencyEnum _$remitaMandateFrequencyEnum_quarterly =
    const RemitaMandateFrequencyEnum._('quarterly');
const RemitaMandateFrequencyEnum _$remitaMandateFrequencyEnum_annual =
    const RemitaMandateFrequencyEnum._('annual');
const RemitaMandateFrequencyEnum _$remitaMandateFrequencyEnum_biannual =
    const RemitaMandateFrequencyEnum._('biannual');
const RemitaMandateFrequencyEnum _$remitaMandateFrequencyEnum_daily =
    const RemitaMandateFrequencyEnum._('daily');
const RemitaMandateFrequencyEnum _$remitaMandateFrequencyEnum_weekly =
    const RemitaMandateFrequencyEnum._('weekly');

RemitaMandateFrequencyEnum _$remitaMandateFrequencyEnumValueOf(String name) {
  switch (name) {
    case 'monthly':
      return _$remitaMandateFrequencyEnum_monthly;
    case 'quarterly':
      return _$remitaMandateFrequencyEnum_quarterly;
    case 'annual':
      return _$remitaMandateFrequencyEnum_annual;
    case 'biannual':
      return _$remitaMandateFrequencyEnum_biannual;
    case 'daily':
      return _$remitaMandateFrequencyEnum_daily;
    case 'weekly':
      return _$remitaMandateFrequencyEnum_weekly;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RemitaMandateFrequencyEnum> _$remitaMandateFrequencyEnumValues =
    BuiltSet<RemitaMandateFrequencyEnum>(const <RemitaMandateFrequencyEnum>[
  _$remitaMandateFrequencyEnum_monthly,
  _$remitaMandateFrequencyEnum_quarterly,
  _$remitaMandateFrequencyEnum_annual,
  _$remitaMandateFrequencyEnum_biannual,
  _$remitaMandateFrequencyEnum_daily,
  _$remitaMandateFrequencyEnum_weekly,
]);

Serializer<RemitaMandateFrequencyEnum> _$remitaMandateFrequencyEnumSerializer =
    _$RemitaMandateFrequencyEnumSerializer();

class _$RemitaMandateFrequencyEnumSerializer
    implements PrimitiveSerializer<RemitaMandateFrequencyEnum> {
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
  final Iterable<Type> types = const <Type>[RemitaMandateFrequencyEnum];
  @override
  final String wireName = 'RemitaMandateFrequencyEnum';

  @override
  Object serialize(Serializers serializers, RemitaMandateFrequencyEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  RemitaMandateFrequencyEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RemitaMandateFrequencyEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$RemitaMandate extends RemitaMandate {
  @override
  final String? mandateId;
  @override
  final num? eskaPolicyId;
  @override
  final String? policyNumber;
  @override
  final String? payId;
  @override
  final num? amount;
  @override
  final String? accountNumber;
  @override
  final String? accountName;
  @override
  final String? bankId;
  @override
  final RemitaMandateFrequencyEnum? frequency;
  @override
  final String? startDate;
  @override
  final String? endDate;

  factory _$RemitaMandate([void Function(RemitaMandateBuilder)? updates]) =>
      (RemitaMandateBuilder()..update(updates))._build();

  _$RemitaMandate._(
      {this.mandateId,
      this.eskaPolicyId,
      this.policyNumber,
      this.payId,
      this.amount,
      this.accountNumber,
      this.accountName,
      this.bankId,
      this.frequency,
      this.startDate,
      this.endDate})
      : super._();
  @override
  RemitaMandate rebuild(void Function(RemitaMandateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RemitaMandateBuilder toBuilder() => RemitaMandateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RemitaMandate &&
        mandateId == other.mandateId &&
        eskaPolicyId == other.eskaPolicyId &&
        policyNumber == other.policyNumber &&
        payId == other.payId &&
        amount == other.amount &&
        accountNumber == other.accountNumber &&
        accountName == other.accountName &&
        bankId == other.bankId &&
        frequency == other.frequency &&
        startDate == other.startDate &&
        endDate == other.endDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, mandateId.hashCode);
    _$hash = $jc(_$hash, eskaPolicyId.hashCode);
    _$hash = $jc(_$hash, policyNumber.hashCode);
    _$hash = $jc(_$hash, payId.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, accountNumber.hashCode);
    _$hash = $jc(_$hash, accountName.hashCode);
    _$hash = $jc(_$hash, bankId.hashCode);
    _$hash = $jc(_$hash, frequency.hashCode);
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RemitaMandate')
          ..add('mandateId', mandateId)
          ..add('eskaPolicyId', eskaPolicyId)
          ..add('policyNumber', policyNumber)
          ..add('payId', payId)
          ..add('amount', amount)
          ..add('accountNumber', accountNumber)
          ..add('accountName', accountName)
          ..add('bankId', bankId)
          ..add('frequency', frequency)
          ..add('startDate', startDate)
          ..add('endDate', endDate))
        .toString();
  }
}

class RemitaMandateBuilder
    implements Builder<RemitaMandate, RemitaMandateBuilder> {
  _$RemitaMandate? _$v;

  String? _mandateId;
  String? get mandateId => _$this._mandateId;
  set mandateId(String? mandateId) => _$this._mandateId = mandateId;

  num? _eskaPolicyId;
  num? get eskaPolicyId => _$this._eskaPolicyId;
  set eskaPolicyId(num? eskaPolicyId) => _$this._eskaPolicyId = eskaPolicyId;

  String? _policyNumber;
  String? get policyNumber => _$this._policyNumber;
  set policyNumber(String? policyNumber) => _$this._policyNumber = policyNumber;

  String? _payId;
  String? get payId => _$this._payId;
  set payId(String? payId) => _$this._payId = payId;

  num? _amount;
  num? get amount => _$this._amount;
  set amount(num? amount) => _$this._amount = amount;

  String? _accountNumber;
  String? get accountNumber => _$this._accountNumber;
  set accountNumber(String? accountNumber) =>
      _$this._accountNumber = accountNumber;

  String? _accountName;
  String? get accountName => _$this._accountName;
  set accountName(String? accountName) => _$this._accountName = accountName;

  String? _bankId;
  String? get bankId => _$this._bankId;
  set bankId(String? bankId) => _$this._bankId = bankId;

  RemitaMandateFrequencyEnum? _frequency;
  RemitaMandateFrequencyEnum? get frequency => _$this._frequency;
  set frequency(RemitaMandateFrequencyEnum? frequency) =>
      _$this._frequency = frequency;

  String? _startDate;
  String? get startDate => _$this._startDate;
  set startDate(String? startDate) => _$this._startDate = startDate;

  String? _endDate;
  String? get endDate => _$this._endDate;
  set endDate(String? endDate) => _$this._endDate = endDate;

  RemitaMandateBuilder() {
    RemitaMandate._defaults(this);
  }

  RemitaMandateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mandateId = $v.mandateId;
      _eskaPolicyId = $v.eskaPolicyId;
      _policyNumber = $v.policyNumber;
      _payId = $v.payId;
      _amount = $v.amount;
      _accountNumber = $v.accountNumber;
      _accountName = $v.accountName;
      _bankId = $v.bankId;
      _frequency = $v.frequency;
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RemitaMandate other) {
    _$v = other as _$RemitaMandate;
  }

  @override
  void update(void Function(RemitaMandateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RemitaMandate build() => _build();

  _$RemitaMandate _build() {
    final _$result = _$v ??
        _$RemitaMandate._(
          mandateId: mandateId,
          eskaPolicyId: eskaPolicyId,
          policyNumber: policyNumber,
          payId: payId,
          amount: amount,
          accountNumber: accountNumber,
          accountName: accountName,
          bankId: bankId,
          frequency: frequency,
          startDate: startDate,
          endDate: endDate,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
