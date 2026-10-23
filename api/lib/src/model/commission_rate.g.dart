// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commission_rate.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CommissionRateFrequencyEnum _$commissionRateFrequencyEnum_monthly =
    const CommissionRateFrequencyEnum._('monthly');
const CommissionRateFrequencyEnum _$commissionRateFrequencyEnum_quarterly =
    const CommissionRateFrequencyEnum._('quarterly');
const CommissionRateFrequencyEnum _$commissionRateFrequencyEnum_annual =
    const CommissionRateFrequencyEnum._('annual');
const CommissionRateFrequencyEnum _$commissionRateFrequencyEnum_biannual =
    const CommissionRateFrequencyEnum._('biannual');
const CommissionRateFrequencyEnum _$commissionRateFrequencyEnum_single =
    const CommissionRateFrequencyEnum._('single');
const CommissionRateFrequencyEnum _$commissionRateFrequencyEnum_all =
    const CommissionRateFrequencyEnum._('all');

CommissionRateFrequencyEnum _$commissionRateFrequencyEnumValueOf(String name) {
  switch (name) {
    case 'monthly':
      return _$commissionRateFrequencyEnum_monthly;
    case 'quarterly':
      return _$commissionRateFrequencyEnum_quarterly;
    case 'annual':
      return _$commissionRateFrequencyEnum_annual;
    case 'biannual':
      return _$commissionRateFrequencyEnum_biannual;
    case 'single':
      return _$commissionRateFrequencyEnum_single;
    case 'all':
      return _$commissionRateFrequencyEnum_all;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CommissionRateFrequencyEnum>
    _$commissionRateFrequencyEnumValues =
    BuiltSet<CommissionRateFrequencyEnum>(const <CommissionRateFrequencyEnum>[
  _$commissionRateFrequencyEnum_monthly,
  _$commissionRateFrequencyEnum_quarterly,
  _$commissionRateFrequencyEnum_annual,
  _$commissionRateFrequencyEnum_biannual,
  _$commissionRateFrequencyEnum_single,
  _$commissionRateFrequencyEnum_all,
]);

Serializer<CommissionRateFrequencyEnum>
    _$commissionRateFrequencyEnumSerializer =
    _$CommissionRateFrequencyEnumSerializer();

class _$CommissionRateFrequencyEnumSerializer
    implements PrimitiveSerializer<CommissionRateFrequencyEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'monthly': 'monthly',
    'quarterly': 'quarterly',
    'annual': 'annual',
    'biannual': 'biannual',
    'single': 'single',
    'all': 'all',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'monthly': 'monthly',
    'quarterly': 'quarterly',
    'annual': 'annual',
    'biannual': 'biannual',
    'single': 'single',
    'all': 'all',
  };

  @override
  final Iterable<Type> types = const <Type>[CommissionRateFrequencyEnum];
  @override
  final String wireName = 'CommissionRateFrequencyEnum';

  @override
  Object serialize(Serializers serializers, CommissionRateFrequencyEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CommissionRateFrequencyEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CommissionRateFrequencyEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CommissionRate extends CommissionRate {
  @override
  final String? rateId;
  @override
  final num? premiumYearFrom;
  @override
  final num? premiumYearTo;
  @override
  final num? policyDurationFrom;
  @override
  final num? policyDurationTo;
  @override
  final CommissionRateFrequencyEnum? frequency;
  @override
  final num? ratePercentage;
  @override
  final num? productId;

  factory _$CommissionRate([void Function(CommissionRateBuilder)? updates]) =>
      (CommissionRateBuilder()..update(updates))._build();

  _$CommissionRate._(
      {this.rateId,
      this.premiumYearFrom,
      this.premiumYearTo,
      this.policyDurationFrom,
      this.policyDurationTo,
      this.frequency,
      this.ratePercentage,
      this.productId})
      : super._();
  @override
  CommissionRate rebuild(void Function(CommissionRateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommissionRateBuilder toBuilder() => CommissionRateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommissionRate &&
        rateId == other.rateId &&
        premiumYearFrom == other.premiumYearFrom &&
        premiumYearTo == other.premiumYearTo &&
        policyDurationFrom == other.policyDurationFrom &&
        policyDurationTo == other.policyDurationTo &&
        frequency == other.frequency &&
        ratePercentage == other.ratePercentage &&
        productId == other.productId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, rateId.hashCode);
    _$hash = $jc(_$hash, premiumYearFrom.hashCode);
    _$hash = $jc(_$hash, premiumYearTo.hashCode);
    _$hash = $jc(_$hash, policyDurationFrom.hashCode);
    _$hash = $jc(_$hash, policyDurationTo.hashCode);
    _$hash = $jc(_$hash, frequency.hashCode);
    _$hash = $jc(_$hash, ratePercentage.hashCode);
    _$hash = $jc(_$hash, productId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CommissionRate')
          ..add('rateId', rateId)
          ..add('premiumYearFrom', premiumYearFrom)
          ..add('premiumYearTo', premiumYearTo)
          ..add('policyDurationFrom', policyDurationFrom)
          ..add('policyDurationTo', policyDurationTo)
          ..add('frequency', frequency)
          ..add('ratePercentage', ratePercentage)
          ..add('productId', productId))
        .toString();
  }
}

class CommissionRateBuilder
    implements Builder<CommissionRate, CommissionRateBuilder> {
  _$CommissionRate? _$v;

  String? _rateId;
  String? get rateId => _$this._rateId;
  set rateId(String? rateId) => _$this._rateId = rateId;

  num? _premiumYearFrom;
  num? get premiumYearFrom => _$this._premiumYearFrom;
  set premiumYearFrom(num? premiumYearFrom) =>
      _$this._premiumYearFrom = premiumYearFrom;

  num? _premiumYearTo;
  num? get premiumYearTo => _$this._premiumYearTo;
  set premiumYearTo(num? premiumYearTo) =>
      _$this._premiumYearTo = premiumYearTo;

  num? _policyDurationFrom;
  num? get policyDurationFrom => _$this._policyDurationFrom;
  set policyDurationFrom(num? policyDurationFrom) =>
      _$this._policyDurationFrom = policyDurationFrom;

  num? _policyDurationTo;
  num? get policyDurationTo => _$this._policyDurationTo;
  set policyDurationTo(num? policyDurationTo) =>
      _$this._policyDurationTo = policyDurationTo;

  CommissionRateFrequencyEnum? _frequency;
  CommissionRateFrequencyEnum? get frequency => _$this._frequency;
  set frequency(CommissionRateFrequencyEnum? frequency) =>
      _$this._frequency = frequency;

  num? _ratePercentage;
  num? get ratePercentage => _$this._ratePercentage;
  set ratePercentage(num? ratePercentage) =>
      _$this._ratePercentage = ratePercentage;

  num? _productId;
  num? get productId => _$this._productId;
  set productId(num? productId) => _$this._productId = productId;

  CommissionRateBuilder() {
    CommissionRate._defaults(this);
  }

  CommissionRateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rateId = $v.rateId;
      _premiumYearFrom = $v.premiumYearFrom;
      _premiumYearTo = $v.premiumYearTo;
      _policyDurationFrom = $v.policyDurationFrom;
      _policyDurationTo = $v.policyDurationTo;
      _frequency = $v.frequency;
      _ratePercentage = $v.ratePercentage;
      _productId = $v.productId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommissionRate other) {
    _$v = other as _$CommissionRate;
  }

  @override
  void update(void Function(CommissionRateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CommissionRate build() => _build();

  _$CommissionRate _build() {
    final _$result = _$v ??
        _$CommissionRate._(
          rateId: rateId,
          premiumYearFrom: premiumYearFrom,
          premiumYearTo: premiumYearTo,
          policyDurationFrom: policyDurationFrom,
          policyDurationTo: policyDurationTo,
          frequency: frequency,
          ratePercentage: ratePercentage,
          productId: productId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
