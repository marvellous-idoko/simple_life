// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'life_quote.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LifeQuote extends LifeQuote {
  @override
  final num? sumAssured;

  factory _$LifeQuote([void Function(LifeQuoteBuilder)? updates]) =>
      (LifeQuoteBuilder()..update(updates))._build();

  _$LifeQuote._({this.sumAssured}) : super._();
  @override
  LifeQuote rebuild(void Function(LifeQuoteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LifeQuoteBuilder toBuilder() => LifeQuoteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LifeQuote && sumAssured == other.sumAssured;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sumAssured.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LifeQuote')
          ..add('sumAssured', sumAssured))
        .toString();
  }
}

class LifeQuoteBuilder implements Builder<LifeQuote, LifeQuoteBuilder> {
  _$LifeQuote? _$v;

  num? _sumAssured;
  num? get sumAssured => _$this._sumAssured;
  set sumAssured(num? sumAssured) => _$this._sumAssured = sumAssured;

  LifeQuoteBuilder() {
    LifeQuote._defaults(this);
  }

  LifeQuoteBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sumAssured = $v.sumAssured;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LifeQuote other) {
    _$v = other as _$LifeQuote;
  }

  @override
  void update(void Function(LifeQuoteBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LifeQuote build() => _build();

  _$LifeQuote _build() {
    final _$result = _$v ??
        _$LifeQuote._(
          sumAssured: sumAssured,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
