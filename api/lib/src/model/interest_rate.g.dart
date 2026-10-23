// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interest_rate.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InterestRateFrequencyEnum _$interestRateFrequencyEnum_monthly =
    const InterestRateFrequencyEnum._('monthly');
const InterestRateFrequencyEnum _$interestRateFrequencyEnum_quarterly =
    const InterestRateFrequencyEnum._('quarterly');
const InterestRateFrequencyEnum _$interestRateFrequencyEnum_annual =
    const InterestRateFrequencyEnum._('annual');
const InterestRateFrequencyEnum _$interestRateFrequencyEnum_biannual =
    const InterestRateFrequencyEnum._('biannual');
const InterestRateFrequencyEnum _$interestRateFrequencyEnum_single =
    const InterestRateFrequencyEnum._('single');
const InterestRateFrequencyEnum _$interestRateFrequencyEnum_all =
    const InterestRateFrequencyEnum._('all');

InterestRateFrequencyEnum _$interestRateFrequencyEnumValueOf(String name) {
  switch (name) {
    case 'monthly':
      return _$interestRateFrequencyEnum_monthly;
    case 'quarterly':
      return _$interestRateFrequencyEnum_quarterly;
    case 'annual':
      return _$interestRateFrequencyEnum_annual;
    case 'biannual':
      return _$interestRateFrequencyEnum_biannual;
    case 'single':
      return _$interestRateFrequencyEnum_single;
    case 'all':
      return _$interestRateFrequencyEnum_all;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<InterestRateFrequencyEnum> _$interestRateFrequencyEnumValues =
    BuiltSet<InterestRateFrequencyEnum>(const <InterestRateFrequencyEnum>[
  _$interestRateFrequencyEnum_monthly,
  _$interestRateFrequencyEnum_quarterly,
  _$interestRateFrequencyEnum_annual,
  _$interestRateFrequencyEnum_biannual,
  _$interestRateFrequencyEnum_single,
  _$interestRateFrequencyEnum_all,
]);

Serializer<InterestRateFrequencyEnum> _$interestRateFrequencyEnumSerializer =
    _$InterestRateFrequencyEnumSerializer();

class _$InterestRateFrequencyEnumSerializer
    implements PrimitiveSerializer<InterestRateFrequencyEnum> {
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
  final Iterable<Type> types = const <Type>[InterestRateFrequencyEnum];
  @override
  final String wireName = 'InterestRateFrequencyEnum';

  @override
  Object serialize(Serializers serializers, InterestRateFrequencyEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InterestRateFrequencyEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InterestRateFrequencyEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$InterestRate extends InterestRate {
  @override
  final String? rateId;
  @override
  final num? annualRatePercentage;
  @override
  final num? premiumThreshold;
  @override
  final String? startDate;
  @override
  final num? productId;
  @override
  final InterestRateFrequencyEnum? frequency;

  factory _$InterestRate([void Function(InterestRateBuilder)? updates]) =>
      (InterestRateBuilder()..update(updates))._build();

  _$InterestRate._(
      {this.rateId,
      this.annualRatePercentage,
      this.premiumThreshold,
      this.startDate,
      this.productId,
      this.frequency})
      : super._();
  @override
  InterestRate rebuild(void Function(InterestRateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InterestRateBuilder toBuilder() => InterestRateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InterestRate &&
        rateId == other.rateId &&
        annualRatePercentage == other.annualRatePercentage &&
        premiumThreshold == other.premiumThreshold &&
        startDate == other.startDate &&
        productId == other.productId &&
        frequency == other.frequency;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, rateId.hashCode);
    _$hash = $jc(_$hash, annualRatePercentage.hashCode);
    _$hash = $jc(_$hash, premiumThreshold.hashCode);
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, productId.hashCode);
    _$hash = $jc(_$hash, frequency.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InterestRate')
          ..add('rateId', rateId)
          ..add('annualRatePercentage', annualRatePercentage)
          ..add('premiumThreshold', premiumThreshold)
          ..add('startDate', startDate)
          ..add('productId', productId)
          ..add('frequency', frequency))
        .toString();
  }
}

class InterestRateBuilder
    implements Builder<InterestRate, InterestRateBuilder> {
  _$InterestRate? _$v;

  String? _rateId;
  String? get rateId => _$this._rateId;
  set rateId(String? rateId) => _$this._rateId = rateId;

  num? _annualRatePercentage;
  num? get annualRatePercentage => _$this._annualRatePercentage;
  set annualRatePercentage(num? annualRatePercentage) =>
      _$this._annualRatePercentage = annualRatePercentage;

  num? _premiumThreshold;
  num? get premiumThreshold => _$this._premiumThreshold;
  set premiumThreshold(num? premiumThreshold) =>
      _$this._premiumThreshold = premiumThreshold;

  String? _startDate;
  String? get startDate => _$this._startDate;
  set startDate(String? startDate) => _$this._startDate = startDate;

  num? _productId;
  num? get productId => _$this._productId;
  set productId(num? productId) => _$this._productId = productId;

  InterestRateFrequencyEnum? _frequency;
  InterestRateFrequencyEnum? get frequency => _$this._frequency;
  set frequency(InterestRateFrequencyEnum? frequency) =>
      _$this._frequency = frequency;

  InterestRateBuilder() {
    InterestRate._defaults(this);
  }

  InterestRateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rateId = $v.rateId;
      _annualRatePercentage = $v.annualRatePercentage;
      _premiumThreshold = $v.premiumThreshold;
      _startDate = $v.startDate;
      _productId = $v.productId;
      _frequency = $v.frequency;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InterestRate other) {
    _$v = other as _$InterestRate;
  }

  @override
  void update(void Function(InterestRateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InterestRate build() => _build();

  _$InterestRate _build() {
    final _$result = _$v ??
        _$InterestRate._(
          rateId: rateId,
          annualRatePercentage: annualRatePercentage,
          premiumThreshold: premiumThreshold,
          startDate: startDate,
          productId: productId,
          frequency: frequency,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
