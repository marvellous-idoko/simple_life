// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_house_from_home_protect_plus_document200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetHouseFromHomeProtectPlusDocument200Response
    extends GetHouseFromHomeProtectPlusDocument200Response {
  @override
  final String? ownerId;
  @override
  final num? premium;

  factory _$GetHouseFromHomeProtectPlusDocument200Response(
          [void Function(GetHouseFromHomeProtectPlusDocument200ResponseBuilder)?
              updates]) =>
      (GetHouseFromHomeProtectPlusDocument200ResponseBuilder()..update(updates))
          ._build();

  _$GetHouseFromHomeProtectPlusDocument200Response._(
      {this.ownerId, this.premium})
      : super._();
  @override
  GetHouseFromHomeProtectPlusDocument200Response rebuild(
          void Function(GetHouseFromHomeProtectPlusDocument200ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetHouseFromHomeProtectPlusDocument200ResponseBuilder toBuilder() =>
      GetHouseFromHomeProtectPlusDocument200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetHouseFromHomeProtectPlusDocument200Response &&
        ownerId == other.ownerId &&
        premium == other.premium;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jc(_$hash, premium.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GetHouseFromHomeProtectPlusDocument200Response')
          ..add('ownerId', ownerId)
          ..add('premium', premium))
        .toString();
  }
}

class GetHouseFromHomeProtectPlusDocument200ResponseBuilder
    implements
        Builder<GetHouseFromHomeProtectPlusDocument200Response,
            GetHouseFromHomeProtectPlusDocument200ResponseBuilder> {
  _$GetHouseFromHomeProtectPlusDocument200Response? _$v;

  String? _ownerId;
  String? get ownerId => _$this._ownerId;
  set ownerId(String? ownerId) => _$this._ownerId = ownerId;

  num? _premium;
  num? get premium => _$this._premium;
  set premium(num? premium) => _$this._premium = premium;

  GetHouseFromHomeProtectPlusDocument200ResponseBuilder() {
    GetHouseFromHomeProtectPlusDocument200Response._defaults(this);
  }

  GetHouseFromHomeProtectPlusDocument200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ownerId = $v.ownerId;
      _premium = $v.premium;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetHouseFromHomeProtectPlusDocument200Response other) {
    _$v = other as _$GetHouseFromHomeProtectPlusDocument200Response;
  }

  @override
  void update(
      void Function(GetHouseFromHomeProtectPlusDocument200ResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetHouseFromHomeProtectPlusDocument200Response build() => _build();

  _$GetHouseFromHomeProtectPlusDocument200Response _build() {
    final _$result = _$v ??
        _$GetHouseFromHomeProtectPlusDocument200Response._(
          ownerId: ownerId,
          premium: premium,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
