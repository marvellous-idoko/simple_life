// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_premium.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TravelPremium extends TravelPremium {
  @override
  final num? premium;

  factory _$TravelPremium([void Function(TravelPremiumBuilder)? updates]) =>
      (TravelPremiumBuilder()..update(updates))._build();

  _$TravelPremium._({this.premium}) : super._();
  @override
  TravelPremium rebuild(void Function(TravelPremiumBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TravelPremiumBuilder toBuilder() => TravelPremiumBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TravelPremium && premium == other.premium;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, premium.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TravelPremium')
          ..add('premium', premium))
        .toString();
  }
}

class TravelPremiumBuilder
    implements Builder<TravelPremium, TravelPremiumBuilder> {
  _$TravelPremium? _$v;

  num? _premium;
  num? get premium => _$this._premium;
  set premium(num? premium) => _$this._premium = premium;

  TravelPremiumBuilder() {
    TravelPremium._defaults(this);
  }

  TravelPremiumBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _premium = $v.premium;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TravelPremium other) {
    _$v = other as _$TravelPremium;
  }

  @override
  void update(void Function(TravelPremiumBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TravelPremium build() => _build();

  _$TravelPremium _build() {
    final _$result = _$v ??
        _$TravelPremium._(
          premium: premium,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
