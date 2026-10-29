// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_endowment_premium200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetEndowmentPremium200Response extends GetEndowmentPremium200Response {
  @override
  final num? premium;

  factory _$GetEndowmentPremium200Response(
          [void Function(GetEndowmentPremium200ResponseBuilder)? updates]) =>
      (GetEndowmentPremium200ResponseBuilder()..update(updates))._build();

  _$GetEndowmentPremium200Response._({this.premium}) : super._();
  @override
  GetEndowmentPremium200Response rebuild(
          void Function(GetEndowmentPremium200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetEndowmentPremium200ResponseBuilder toBuilder() =>
      GetEndowmentPremium200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetEndowmentPremium200Response && premium == other.premium;
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
    return (newBuiltValueToStringHelper(r'GetEndowmentPremium200Response')
          ..add('premium', premium))
        .toString();
  }
}

class GetEndowmentPremium200ResponseBuilder
    implements
        Builder<GetEndowmentPremium200Response,
            GetEndowmentPremium200ResponseBuilder> {
  _$GetEndowmentPremium200Response? _$v;

  num? _premium;
  num? get premium => _$this._premium;
  set premium(num? premium) => _$this._premium = premium;

  GetEndowmentPremium200ResponseBuilder() {
    GetEndowmentPremium200Response._defaults(this);
  }

  GetEndowmentPremium200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _premium = $v.premium;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetEndowmentPremium200Response other) {
    _$v = other as _$GetEndowmentPremium200Response;
  }

  @override
  void update(void Function(GetEndowmentPremium200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetEndowmentPremium200Response build() => _build();

  _$GetEndowmentPremium200Response _build() {
    final _$result = _$v ??
        _$GetEndowmentPremium200Response._(
          premium: premium,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
