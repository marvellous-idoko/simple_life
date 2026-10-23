// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'claimant_cost.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ClaimantCostCurrencyEnum _$claimantCostCurrencyEnum_EUR =
    const ClaimantCostCurrencyEnum._('EUR');
const ClaimantCostCurrencyEnum _$claimantCostCurrencyEnum_USD =
    const ClaimantCostCurrencyEnum._('USD');
const ClaimantCostCurrencyEnum _$claimantCostCurrencyEnum_GBP =
    const ClaimantCostCurrencyEnum._('GBP');
const ClaimantCostCurrencyEnum _$claimantCostCurrencyEnum_JPY =
    const ClaimantCostCurrencyEnum._('JPY');
const ClaimantCostCurrencyEnum _$claimantCostCurrencyEnum_ZAR =
    const ClaimantCostCurrencyEnum._('ZAR');
const ClaimantCostCurrencyEnum _$claimantCostCurrencyEnum_CNY =
    const ClaimantCostCurrencyEnum._('CNY');
const ClaimantCostCurrencyEnum _$claimantCostCurrencyEnum_NGN =
    const ClaimantCostCurrencyEnum._('NGN');

ClaimantCostCurrencyEnum _$claimantCostCurrencyEnumValueOf(String name) {
  switch (name) {
    case 'EUR':
      return _$claimantCostCurrencyEnum_EUR;
    case 'USD':
      return _$claimantCostCurrencyEnum_USD;
    case 'GBP':
      return _$claimantCostCurrencyEnum_GBP;
    case 'JPY':
      return _$claimantCostCurrencyEnum_JPY;
    case 'ZAR':
      return _$claimantCostCurrencyEnum_ZAR;
    case 'CNY':
      return _$claimantCostCurrencyEnum_CNY;
    case 'NGN':
      return _$claimantCostCurrencyEnum_NGN;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ClaimantCostCurrencyEnum> _$claimantCostCurrencyEnumValues =
    BuiltSet<ClaimantCostCurrencyEnum>(const <ClaimantCostCurrencyEnum>[
  _$claimantCostCurrencyEnum_EUR,
  _$claimantCostCurrencyEnum_USD,
  _$claimantCostCurrencyEnum_GBP,
  _$claimantCostCurrencyEnum_JPY,
  _$claimantCostCurrencyEnum_ZAR,
  _$claimantCostCurrencyEnum_CNY,
  _$claimantCostCurrencyEnum_NGN,
]);

const ClaimantCostProviderTypeEnum _$claimantCostProviderTypeEnum_customer =
    const ClaimantCostProviderTypeEnum._('customer');
const ClaimantCostProviderTypeEnum _$claimantCostProviderTypeEnum_backOffice =
    const ClaimantCostProviderTypeEnum._('backOffice');
const ClaimantCostProviderTypeEnum
    _$claimantCostProviderTypeEnum_internalLossAdjuster =
    const ClaimantCostProviderTypeEnum._('internalLossAdjuster');
const ClaimantCostProviderTypeEnum
    _$claimantCostProviderTypeEnum_externalLossAdjuster =
    const ClaimantCostProviderTypeEnum._('externalLossAdjuster');
const ClaimantCostProviderTypeEnum _$claimantCostProviderTypeEnum_claimsUnit =
    const ClaimantCostProviderTypeEnum._('claimsUnit');
const ClaimantCostProviderTypeEnum _$claimantCostProviderTypeEnum_vendor =
    const ClaimantCostProviderTypeEnum._('vendor');
const ClaimantCostProviderTypeEnum _$claimantCostProviderTypeEnum_agent =
    const ClaimantCostProviderTypeEnum._('agent');
const ClaimantCostProviderTypeEnum _$claimantCostProviderTypeEnum_system =
    const ClaimantCostProviderTypeEnum._('system');

ClaimantCostProviderTypeEnum _$claimantCostProviderTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'customer':
      return _$claimantCostProviderTypeEnum_customer;
    case 'backOffice':
      return _$claimantCostProviderTypeEnum_backOffice;
    case 'internalLossAdjuster':
      return _$claimantCostProviderTypeEnum_internalLossAdjuster;
    case 'externalLossAdjuster':
      return _$claimantCostProviderTypeEnum_externalLossAdjuster;
    case 'claimsUnit':
      return _$claimantCostProviderTypeEnum_claimsUnit;
    case 'vendor':
      return _$claimantCostProviderTypeEnum_vendor;
    case 'agent':
      return _$claimantCostProviderTypeEnum_agent;
    case 'system':
      return _$claimantCostProviderTypeEnum_system;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ClaimantCostProviderTypeEnum>
    _$claimantCostProviderTypeEnumValues =
    BuiltSet<ClaimantCostProviderTypeEnum>(const <ClaimantCostProviderTypeEnum>[
  _$claimantCostProviderTypeEnum_customer,
  _$claimantCostProviderTypeEnum_backOffice,
  _$claimantCostProviderTypeEnum_internalLossAdjuster,
  _$claimantCostProviderTypeEnum_externalLossAdjuster,
  _$claimantCostProviderTypeEnum_claimsUnit,
  _$claimantCostProviderTypeEnum_vendor,
  _$claimantCostProviderTypeEnum_agent,
  _$claimantCostProviderTypeEnum_system,
]);

Serializer<ClaimantCostCurrencyEnum> _$claimantCostCurrencyEnumSerializer =
    _$ClaimantCostCurrencyEnumSerializer();
Serializer<ClaimantCostProviderTypeEnum>
    _$claimantCostProviderTypeEnumSerializer =
    _$ClaimantCostProviderTypeEnumSerializer();

class _$ClaimantCostCurrencyEnumSerializer
    implements PrimitiveSerializer<ClaimantCostCurrencyEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'EUR': 'EUR',
    'USD': 'USD',
    'GBP': 'GBP',
    'JPY': 'JPY',
    'ZAR': 'ZAR',
    'CNY': 'CNY',
    'NGN': 'NGN',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'EUR': 'EUR',
    'USD': 'USD',
    'GBP': 'GBP',
    'JPY': 'JPY',
    'ZAR': 'ZAR',
    'CNY': 'CNY',
    'NGN': 'NGN',
  };

  @override
  final Iterable<Type> types = const <Type>[ClaimantCostCurrencyEnum];
  @override
  final String wireName = 'ClaimantCostCurrencyEnum';

  @override
  Object serialize(Serializers serializers, ClaimantCostCurrencyEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ClaimantCostCurrencyEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ClaimantCostCurrencyEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ClaimantCostProviderTypeEnumSerializer
    implements PrimitiveSerializer<ClaimantCostProviderTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'customer': 'Customer',
    'backOffice': 'Back Office',
    'internalLossAdjuster': 'Internal Loss Adjuster',
    'externalLossAdjuster': 'External Loss Adjuster',
    'claimsUnit': 'Claims Unit',
    'vendor': 'Vendor',
    'agent': 'Agent',
    'system': 'System',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Customer': 'customer',
    'Back Office': 'backOffice',
    'Internal Loss Adjuster': 'internalLossAdjuster',
    'External Loss Adjuster': 'externalLossAdjuster',
    'Claims Unit': 'claimsUnit',
    'Vendor': 'vendor',
    'Agent': 'agent',
    'System': 'system',
  };

  @override
  final Iterable<Type> types = const <Type>[ClaimantCostProviderTypeEnum];
  @override
  final String wireName = 'ClaimantCostProviderTypeEnum';

  @override
  Object serialize(Serializers serializers, ClaimantCostProviderTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ClaimantCostProviderTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ClaimantCostProviderTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ClaimantCost extends ClaimantCost {
  @override
  final num? amount;
  @override
  final String? provider;
  @override
  final String? description;
  @override
  final String? date;
  @override
  final ClaimantCostCurrencyEnum? currency;
  @override
  final num? exchangeRate;
  @override
  final ClaimantCostProviderTypeEnum? providerType;

  factory _$ClaimantCost([void Function(ClaimantCostBuilder)? updates]) =>
      (ClaimantCostBuilder()..update(updates))._build();

  _$ClaimantCost._(
      {this.amount,
      this.provider,
      this.description,
      this.date,
      this.currency,
      this.exchangeRate,
      this.providerType})
      : super._();
  @override
  ClaimantCost rebuild(void Function(ClaimantCostBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClaimantCostBuilder toBuilder() => ClaimantCostBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClaimantCost &&
        amount == other.amount &&
        provider == other.provider &&
        description == other.description &&
        date == other.date &&
        currency == other.currency &&
        exchangeRate == other.exchangeRate &&
        providerType == other.providerType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, provider.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, exchangeRate.hashCode);
    _$hash = $jc(_$hash, providerType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ClaimantCost')
          ..add('amount', amount)
          ..add('provider', provider)
          ..add('description', description)
          ..add('date', date)
          ..add('currency', currency)
          ..add('exchangeRate', exchangeRate)
          ..add('providerType', providerType))
        .toString();
  }
}

class ClaimantCostBuilder
    implements Builder<ClaimantCost, ClaimantCostBuilder> {
  _$ClaimantCost? _$v;

  num? _amount;
  num? get amount => _$this._amount;
  set amount(num? amount) => _$this._amount = amount;

  String? _provider;
  String? get provider => _$this._provider;
  set provider(String? provider) => _$this._provider = provider;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  ClaimantCostCurrencyEnum? _currency;
  ClaimantCostCurrencyEnum? get currency => _$this._currency;
  set currency(ClaimantCostCurrencyEnum? currency) =>
      _$this._currency = currency;

  num? _exchangeRate;
  num? get exchangeRate => _$this._exchangeRate;
  set exchangeRate(num? exchangeRate) => _$this._exchangeRate = exchangeRate;

  ClaimantCostProviderTypeEnum? _providerType;
  ClaimantCostProviderTypeEnum? get providerType => _$this._providerType;
  set providerType(ClaimantCostProviderTypeEnum? providerType) =>
      _$this._providerType = providerType;

  ClaimantCostBuilder() {
    ClaimantCost._defaults(this);
  }

  ClaimantCostBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _amount = $v.amount;
      _provider = $v.provider;
      _description = $v.description;
      _date = $v.date;
      _currency = $v.currency;
      _exchangeRate = $v.exchangeRate;
      _providerType = $v.providerType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClaimantCost other) {
    _$v = other as _$ClaimantCost;
  }

  @override
  void update(void Function(ClaimantCostBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClaimantCost build() => _build();

  _$ClaimantCost _build() {
    final _$result = _$v ??
        _$ClaimantCost._(
          amount: amount,
          provider: provider,
          description: description,
          date: date,
          currency: currency,
          exchangeRate: exchangeRate,
          providerType: providerType,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
