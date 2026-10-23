// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount_rate.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DiscountRate extends DiscountRate {
  @override
  final String? rateId;
  @override
  final num? annualRatePercentage;
  @override
  final String? dateOfRate;
  @override
  final num? productId;

  factory _$DiscountRate([void Function(DiscountRateBuilder)? updates]) =>
      (DiscountRateBuilder()..update(updates))._build();

  _$DiscountRate._(
      {this.rateId, this.annualRatePercentage, this.dateOfRate, this.productId})
      : super._();
  @override
  DiscountRate rebuild(void Function(DiscountRateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DiscountRateBuilder toBuilder() => DiscountRateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DiscountRate &&
        rateId == other.rateId &&
        annualRatePercentage == other.annualRatePercentage &&
        dateOfRate == other.dateOfRate &&
        productId == other.productId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, rateId.hashCode);
    _$hash = $jc(_$hash, annualRatePercentage.hashCode);
    _$hash = $jc(_$hash, dateOfRate.hashCode);
    _$hash = $jc(_$hash, productId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DiscountRate')
          ..add('rateId', rateId)
          ..add('annualRatePercentage', annualRatePercentage)
          ..add('dateOfRate', dateOfRate)
          ..add('productId', productId))
        .toString();
  }
}

class DiscountRateBuilder
    implements Builder<DiscountRate, DiscountRateBuilder> {
  _$DiscountRate? _$v;

  String? _rateId;
  String? get rateId => _$this._rateId;
  set rateId(String? rateId) => _$this._rateId = rateId;

  num? _annualRatePercentage;
  num? get annualRatePercentage => _$this._annualRatePercentage;
  set annualRatePercentage(num? annualRatePercentage) =>
      _$this._annualRatePercentage = annualRatePercentage;

  String? _dateOfRate;
  String? get dateOfRate => _$this._dateOfRate;
  set dateOfRate(String? dateOfRate) => _$this._dateOfRate = dateOfRate;

  num? _productId;
  num? get productId => _$this._productId;
  set productId(num? productId) => _$this._productId = productId;

  DiscountRateBuilder() {
    DiscountRate._defaults(this);
  }

  DiscountRateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rateId = $v.rateId;
      _annualRatePercentage = $v.annualRatePercentage;
      _dateOfRate = $v.dateOfRate;
      _productId = $v.productId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DiscountRate other) {
    _$v = other as _$DiscountRate;
  }

  @override
  void update(void Function(DiscountRateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DiscountRate build() => _build();

  _$DiscountRate _build() {
    final _$result = _$v ??
        _$DiscountRate._(
          rateId: rateId,
          annualRatePercentage: annualRatePercentage,
          dateOfRate: dateOfRate,
          productId: productId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
