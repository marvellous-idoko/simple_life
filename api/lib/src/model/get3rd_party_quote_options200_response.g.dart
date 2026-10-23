// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get3rd_party_quote_options200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Get3rdPartyQuoteOptions200Response
    extends Get3rdPartyQuoteOptions200Response {
  @override
  final Get3rdPartyQuoteOptions200ResponsePremium? premium;

  factory _$Get3rdPartyQuoteOptions200Response(
          [void Function(Get3rdPartyQuoteOptions200ResponseBuilder)?
              updates]) =>
      (Get3rdPartyQuoteOptions200ResponseBuilder()..update(updates))._build();

  _$Get3rdPartyQuoteOptions200Response._({this.premium}) : super._();
  @override
  Get3rdPartyQuoteOptions200Response rebuild(
          void Function(Get3rdPartyQuoteOptions200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Get3rdPartyQuoteOptions200ResponseBuilder toBuilder() =>
      Get3rdPartyQuoteOptions200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Get3rdPartyQuoteOptions200Response &&
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
    return (newBuiltValueToStringHelper(r'Get3rdPartyQuoteOptions200Response')
          ..add('premium', premium))
        .toString();
  }
}

class Get3rdPartyQuoteOptions200ResponseBuilder
    implements
        Builder<Get3rdPartyQuoteOptions200Response,
            Get3rdPartyQuoteOptions200ResponseBuilder> {
  _$Get3rdPartyQuoteOptions200Response? _$v;

  Get3rdPartyQuoteOptions200ResponsePremiumBuilder? _premium;
  Get3rdPartyQuoteOptions200ResponsePremiumBuilder get premium =>
      _$this._premium ??= Get3rdPartyQuoteOptions200ResponsePremiumBuilder();
  set premium(Get3rdPartyQuoteOptions200ResponsePremiumBuilder? premium) =>
      _$this._premium = premium;

  Get3rdPartyQuoteOptions200ResponseBuilder() {
    Get3rdPartyQuoteOptions200Response._defaults(this);
  }

  Get3rdPartyQuoteOptions200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _premium = $v.premium?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Get3rdPartyQuoteOptions200Response other) {
    _$v = other as _$Get3rdPartyQuoteOptions200Response;
  }

  @override
  void update(
      void Function(Get3rdPartyQuoteOptions200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Get3rdPartyQuoteOptions200Response build() => _build();

  _$Get3rdPartyQuoteOptions200Response _build() {
    _$Get3rdPartyQuoteOptions200Response _$result;
    try {
      _$result = _$v ??
          _$Get3rdPartyQuoteOptions200Response._(
            premium: _premium?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'premium';
        _premium?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Get3rdPartyQuoteOptions200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
