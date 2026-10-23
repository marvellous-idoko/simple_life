// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'annuity_rate.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnnuityRate extends AnnuityRate {
  @override
  final num? age;
  @override
  final num? guarantyPeriod;
  @override
  final num? ratePerMillion;
  @override
  final num? commission;
  @override
  final String? dateOfRate;
  @override
  final String? policyType;
  @override
  final String? annuityRateType;

  factory _$AnnuityRate([void Function(AnnuityRateBuilder)? updates]) =>
      (AnnuityRateBuilder()..update(updates))._build();

  _$AnnuityRate._(
      {this.age,
      this.guarantyPeriod,
      this.ratePerMillion,
      this.commission,
      this.dateOfRate,
      this.policyType,
      this.annuityRateType})
      : super._();
  @override
  AnnuityRate rebuild(void Function(AnnuityRateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnnuityRateBuilder toBuilder() => AnnuityRateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnnuityRate &&
        age == other.age &&
        guarantyPeriod == other.guarantyPeriod &&
        ratePerMillion == other.ratePerMillion &&
        commission == other.commission &&
        dateOfRate == other.dateOfRate &&
        policyType == other.policyType &&
        annuityRateType == other.annuityRateType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, age.hashCode);
    _$hash = $jc(_$hash, guarantyPeriod.hashCode);
    _$hash = $jc(_$hash, ratePerMillion.hashCode);
    _$hash = $jc(_$hash, commission.hashCode);
    _$hash = $jc(_$hash, dateOfRate.hashCode);
    _$hash = $jc(_$hash, policyType.hashCode);
    _$hash = $jc(_$hash, annuityRateType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnnuityRate')
          ..add('age', age)
          ..add('guarantyPeriod', guarantyPeriod)
          ..add('ratePerMillion', ratePerMillion)
          ..add('commission', commission)
          ..add('dateOfRate', dateOfRate)
          ..add('policyType', policyType)
          ..add('annuityRateType', annuityRateType))
        .toString();
  }
}

class AnnuityRateBuilder implements Builder<AnnuityRate, AnnuityRateBuilder> {
  _$AnnuityRate? _$v;

  num? _age;
  num? get age => _$this._age;
  set age(num? age) => _$this._age = age;

  num? _guarantyPeriod;
  num? get guarantyPeriod => _$this._guarantyPeriod;
  set guarantyPeriod(num? guarantyPeriod) =>
      _$this._guarantyPeriod = guarantyPeriod;

  num? _ratePerMillion;
  num? get ratePerMillion => _$this._ratePerMillion;
  set ratePerMillion(num? ratePerMillion) =>
      _$this._ratePerMillion = ratePerMillion;

  num? _commission;
  num? get commission => _$this._commission;
  set commission(num? commission) => _$this._commission = commission;

  String? _dateOfRate;
  String? get dateOfRate => _$this._dateOfRate;
  set dateOfRate(String? dateOfRate) => _$this._dateOfRate = dateOfRate;

  String? _policyType;
  String? get policyType => _$this._policyType;
  set policyType(String? policyType) => _$this._policyType = policyType;

  String? _annuityRateType;
  String? get annuityRateType => _$this._annuityRateType;
  set annuityRateType(String? annuityRateType) =>
      _$this._annuityRateType = annuityRateType;

  AnnuityRateBuilder() {
    AnnuityRate._defaults(this);
  }

  AnnuityRateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _age = $v.age;
      _guarantyPeriod = $v.guarantyPeriod;
      _ratePerMillion = $v.ratePerMillion;
      _commission = $v.commission;
      _dateOfRate = $v.dateOfRate;
      _policyType = $v.policyType;
      _annuityRateType = $v.annuityRateType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnnuityRate other) {
    _$v = other as _$AnnuityRate;
  }

  @override
  void update(void Function(AnnuityRateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnnuityRate build() => _build();

  _$AnnuityRate _build() {
    final _$result = _$v ??
        _$AnnuityRate._(
          age: age,
          guarantyPeriod: guarantyPeriod,
          ratePerMillion: ratePerMillion,
          commission: commission,
          dateOfRate: dateOfRate,
          policyType: policyType,
          annuityRateType: annuityRateType,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
