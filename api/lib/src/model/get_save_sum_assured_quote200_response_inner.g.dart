// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_save_sum_assured_quote200_response_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetSaveSumAssuredQuote200ResponseInner
    extends GetSaveSumAssuredQuote200ResponseInner {
  @override
  final num? premium;
  @override
  final num? contribution;
  @override
  final String? frequency;

  factory _$GetSaveSumAssuredQuote200ResponseInner(
          [void Function(GetSaveSumAssuredQuote200ResponseInnerBuilder)?
              updates]) =>
      (GetSaveSumAssuredQuote200ResponseInnerBuilder()..update(updates))
          ._build();

  _$GetSaveSumAssuredQuote200ResponseInner._(
      {this.premium, this.contribution, this.frequency})
      : super._();
  @override
  GetSaveSumAssuredQuote200ResponseInner rebuild(
          void Function(GetSaveSumAssuredQuote200ResponseInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetSaveSumAssuredQuote200ResponseInnerBuilder toBuilder() =>
      GetSaveSumAssuredQuote200ResponseInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetSaveSumAssuredQuote200ResponseInner &&
        premium == other.premium &&
        contribution == other.contribution &&
        frequency == other.frequency;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, premium.hashCode);
    _$hash = $jc(_$hash, contribution.hashCode);
    _$hash = $jc(_$hash, frequency.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GetSaveSumAssuredQuote200ResponseInner')
          ..add('premium', premium)
          ..add('contribution', contribution)
          ..add('frequency', frequency))
        .toString();
  }
}

class GetSaveSumAssuredQuote200ResponseInnerBuilder
    implements
        Builder<GetSaveSumAssuredQuote200ResponseInner,
            GetSaveSumAssuredQuote200ResponseInnerBuilder> {
  _$GetSaveSumAssuredQuote200ResponseInner? _$v;

  num? _premium;
  num? get premium => _$this._premium;
  set premium(num? premium) => _$this._premium = premium;

  num? _contribution;
  num? get contribution => _$this._contribution;
  set contribution(num? contribution) => _$this._contribution = contribution;

  String? _frequency;
  String? get frequency => _$this._frequency;
  set frequency(String? frequency) => _$this._frequency = frequency;

  GetSaveSumAssuredQuote200ResponseInnerBuilder() {
    GetSaveSumAssuredQuote200ResponseInner._defaults(this);
  }

  GetSaveSumAssuredQuote200ResponseInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _premium = $v.premium;
      _contribution = $v.contribution;
      _frequency = $v.frequency;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetSaveSumAssuredQuote200ResponseInner other) {
    _$v = other as _$GetSaveSumAssuredQuote200ResponseInner;
  }

  @override
  void update(
      void Function(GetSaveSumAssuredQuote200ResponseInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetSaveSumAssuredQuote200ResponseInner build() => _build();

  _$GetSaveSumAssuredQuote200ResponseInner _build() {
    final _$result = _$v ??
        _$GetSaveSumAssuredQuote200ResponseInner._(
          premium: premium,
          contribution: contribution,
          frequency: frequency,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
