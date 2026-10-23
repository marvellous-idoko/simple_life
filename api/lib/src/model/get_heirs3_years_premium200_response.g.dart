// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_heirs3_years_premium200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetHeirs3YearsPremium200Response
    extends GetHeirs3YearsPremium200Response {
  @override
  final num? premium;

  factory _$GetHeirs3YearsPremium200Response(
          [void Function(GetHeirs3YearsPremium200ResponseBuilder)? updates]) =>
      (GetHeirs3YearsPremium200ResponseBuilder()..update(updates))._build();

  _$GetHeirs3YearsPremium200Response._({this.premium}) : super._();
  @override
  GetHeirs3YearsPremium200Response rebuild(
          void Function(GetHeirs3YearsPremium200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetHeirs3YearsPremium200ResponseBuilder toBuilder() =>
      GetHeirs3YearsPremium200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetHeirs3YearsPremium200Response &&
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
    return (newBuiltValueToStringHelper(r'GetHeirs3YearsPremium200Response')
          ..add('premium', premium))
        .toString();
  }
}

class GetHeirs3YearsPremium200ResponseBuilder
    implements
        Builder<GetHeirs3YearsPremium200Response,
            GetHeirs3YearsPremium200ResponseBuilder> {
  _$GetHeirs3YearsPremium200Response? _$v;

  num? _premium;
  num? get premium => _$this._premium;
  set premium(num? premium) => _$this._premium = premium;

  GetHeirs3YearsPremium200ResponseBuilder() {
    GetHeirs3YearsPremium200Response._defaults(this);
  }

  GetHeirs3YearsPremium200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _premium = $v.premium;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetHeirs3YearsPremium200Response other) {
    _$v = other as _$GetHeirs3YearsPremium200Response;
  }

  @override
  void update(void Function(GetHeirs3YearsPremium200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetHeirs3YearsPremium200Response build() => _build();

  _$GetHeirs3YearsPremium200Response _build() {
    final _$result = _$v ??
        _$GetHeirs3YearsPremium200Response._(
          premium: premium,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
