// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_business_protect_quote200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetBusinessProtectQuote200Response
    extends GetBusinessProtectQuote200Response {
  @override
  final num? premium;

  factory _$GetBusinessProtectQuote200Response(
          [void Function(GetBusinessProtectQuote200ResponseBuilder)?
              updates]) =>
      (GetBusinessProtectQuote200ResponseBuilder()..update(updates))._build();

  _$GetBusinessProtectQuote200Response._({this.premium}) : super._();
  @override
  GetBusinessProtectQuote200Response rebuild(
          void Function(GetBusinessProtectQuote200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBusinessProtectQuote200ResponseBuilder toBuilder() =>
      GetBusinessProtectQuote200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBusinessProtectQuote200Response &&
        premium == other.premium;
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
    return (newBuiltValueToStringHelper(r'GetBusinessProtectQuote200Response')
          ..add('premium', premium))
        .toString();
  }
}

class GetBusinessProtectQuote200ResponseBuilder
    implements
        Builder<GetBusinessProtectQuote200Response,
            GetBusinessProtectQuote200ResponseBuilder> {
  _$GetBusinessProtectQuote200Response? _$v;

  num? _premium;
  num? get premium => _$this._premium;
  set premium(num? premium) => _$this._premium = premium;

  GetBusinessProtectQuote200ResponseBuilder() {
    GetBusinessProtectQuote200Response._defaults(this);
  }

  GetBusinessProtectQuote200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _premium = $v.premium;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetBusinessProtectQuote200Response other) {
    _$v = other as _$GetBusinessProtectQuote200Response;
  }

  @override
  void update(
      void Function(GetBusinessProtectQuote200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBusinessProtectQuote200Response build() => _build();

  _$GetBusinessProtectQuote200Response _build() {
    final _$result = _$v ??
        _$GetBusinessProtectQuote200Response._(
          premium: premium,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
