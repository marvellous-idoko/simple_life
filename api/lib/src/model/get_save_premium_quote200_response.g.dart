// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_save_premium_quote200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetSavePremiumQuote200Response extends GetSavePremiumQuote200Response {
  @override
  final num? sumAssured;
  @override
  final num? savings;

  factory _$GetSavePremiumQuote200Response(
          [void Function(GetSavePremiumQuote200ResponseBuilder)? updates]) =>
      (GetSavePremiumQuote200ResponseBuilder()..update(updates))._build();

  _$GetSavePremiumQuote200Response._({this.sumAssured, this.savings})
      : super._();
  @override
  GetSavePremiumQuote200Response rebuild(
          void Function(GetSavePremiumQuote200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetSavePremiumQuote200ResponseBuilder toBuilder() =>
      GetSavePremiumQuote200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetSavePremiumQuote200Response &&
        sumAssured == other.sumAssured &&
        savings == other.savings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sumAssured.hashCode);
    _$hash = $jc(_$hash, savings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetSavePremiumQuote200Response')
          ..add('sumAssured', sumAssured)
          ..add('savings', savings))
        .toString();
  }
}

class GetSavePremiumQuote200ResponseBuilder
    implements
        Builder<GetSavePremiumQuote200Response,
            GetSavePremiumQuote200ResponseBuilder> {
  _$GetSavePremiumQuote200Response? _$v;

  num? _sumAssured;
  num? get sumAssured => _$this._sumAssured;
  set sumAssured(num? sumAssured) => _$this._sumAssured = sumAssured;

  num? _savings;
  num? get savings => _$this._savings;
  set savings(num? savings) => _$this._savings = savings;

  GetSavePremiumQuote200ResponseBuilder() {
    GetSavePremiumQuote200Response._defaults(this);
  }

  GetSavePremiumQuote200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sumAssured = $v.sumAssured;
      _savings = $v.savings;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetSavePremiumQuote200Response other) {
    _$v = other as _$GetSavePremiumQuote200Response;
  }

  @override
  void update(void Function(GetSavePremiumQuote200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetSavePremiumQuote200Response build() => _build();

  _$GetSavePremiumQuote200Response _build() {
    final _$result = _$v ??
        _$GetSavePremiumQuote200Response._(
          sumAssured: sumAssured,
          savings: savings,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
