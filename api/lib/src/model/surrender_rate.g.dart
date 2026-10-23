// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surrender_rate.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SurrenderRate extends SurrenderRate {
  @override
  final String? rateId;
  @override
  final num? ratePercentage;
  @override
  final num? monthOfSurrender;
  @override
  final num? policyTerm;
  @override
  final String? dateOfRate;
  @override
  final num? productId;

  factory _$SurrenderRate([void Function(SurrenderRateBuilder)? updates]) =>
      (SurrenderRateBuilder()..update(updates))._build();

  _$SurrenderRate._(
      {this.rateId,
      this.ratePercentage,
      this.monthOfSurrender,
      this.policyTerm,
      this.dateOfRate,
      this.productId})
      : super._();
  @override
  SurrenderRate rebuild(void Function(SurrenderRateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SurrenderRateBuilder toBuilder() => SurrenderRateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SurrenderRate &&
        rateId == other.rateId &&
        ratePercentage == other.ratePercentage &&
        monthOfSurrender == other.monthOfSurrender &&
        policyTerm == other.policyTerm &&
        dateOfRate == other.dateOfRate &&
        productId == other.productId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, rateId.hashCode);
    _$hash = $jc(_$hash, ratePercentage.hashCode);
    _$hash = $jc(_$hash, monthOfSurrender.hashCode);
    _$hash = $jc(_$hash, policyTerm.hashCode);
    _$hash = $jc(_$hash, dateOfRate.hashCode);
    _$hash = $jc(_$hash, productId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SurrenderRate')
          ..add('rateId', rateId)
          ..add('ratePercentage', ratePercentage)
          ..add('monthOfSurrender', monthOfSurrender)
          ..add('policyTerm', policyTerm)
          ..add('dateOfRate', dateOfRate)
          ..add('productId', productId))
        .toString();
  }
}

class SurrenderRateBuilder
    implements Builder<SurrenderRate, SurrenderRateBuilder> {
  _$SurrenderRate? _$v;

  String? _rateId;
  String? get rateId => _$this._rateId;
  set rateId(String? rateId) => _$this._rateId = rateId;

  num? _ratePercentage;
  num? get ratePercentage => _$this._ratePercentage;
  set ratePercentage(num? ratePercentage) =>
      _$this._ratePercentage = ratePercentage;

  num? _monthOfSurrender;
  num? get monthOfSurrender => _$this._monthOfSurrender;
  set monthOfSurrender(num? monthOfSurrender) =>
      _$this._monthOfSurrender = monthOfSurrender;

  num? _policyTerm;
  num? get policyTerm => _$this._policyTerm;
  set policyTerm(num? policyTerm) => _$this._policyTerm = policyTerm;

  String? _dateOfRate;
  String? get dateOfRate => _$this._dateOfRate;
  set dateOfRate(String? dateOfRate) => _$this._dateOfRate = dateOfRate;

  num? _productId;
  num? get productId => _$this._productId;
  set productId(num? productId) => _$this._productId = productId;

  SurrenderRateBuilder() {
    SurrenderRate._defaults(this);
  }

  SurrenderRateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rateId = $v.rateId;
      _ratePercentage = $v.ratePercentage;
      _monthOfSurrender = $v.monthOfSurrender;
      _policyTerm = $v.policyTerm;
      _dateOfRate = $v.dateOfRate;
      _productId = $v.productId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SurrenderRate other) {
    _$v = other as _$SurrenderRate;
  }

  @override
  void update(void Function(SurrenderRateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SurrenderRate build() => _build();

  _$SurrenderRate _build() {
    final _$result = _$v ??
        _$SurrenderRate._(
          rateId: rateId,
          ratePercentage: ratePercentage,
          monthOfSurrender: monthOfSurrender,
          policyTerm: policyTerm,
          dateOfRate: dateOfRate,
          productId: productId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
