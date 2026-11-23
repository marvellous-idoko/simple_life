// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pay_for_tenant_protect_plus_document200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PayForTenantProtectPlusDocument200Response
    extends PayForTenantProtectPlusDocument200Response {
  @override
  final String? payUrl;

  factory _$PayForTenantProtectPlusDocument200Response(
          [void Function(PayForTenantProtectPlusDocument200ResponseBuilder)?
              updates]) =>
      (PayForTenantProtectPlusDocument200ResponseBuilder()..update(updates))
          ._build();

  _$PayForTenantProtectPlusDocument200Response._({this.payUrl}) : super._();
  @override
  PayForTenantProtectPlusDocument200Response rebuild(
          void Function(PayForTenantProtectPlusDocument200ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PayForTenantProtectPlusDocument200ResponseBuilder toBuilder() =>
      PayForTenantProtectPlusDocument200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PayForTenantProtectPlusDocument200Response &&
        payUrl == other.payUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, payUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'PayForTenantProtectPlusDocument200Response')
          ..add('payUrl', payUrl))
        .toString();
  }
}

class PayForTenantProtectPlusDocument200ResponseBuilder
    implements
        Builder<PayForTenantProtectPlusDocument200Response,
            PayForTenantProtectPlusDocument200ResponseBuilder> {
  _$PayForTenantProtectPlusDocument200Response? _$v;

  String? _payUrl;
  String? get payUrl => _$this._payUrl;
  set payUrl(String? payUrl) => _$this._payUrl = payUrl;

  PayForTenantProtectPlusDocument200ResponseBuilder() {
    PayForTenantProtectPlusDocument200Response._defaults(this);
  }

  PayForTenantProtectPlusDocument200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _payUrl = $v.payUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PayForTenantProtectPlusDocument200Response other) {
    _$v = other as _$PayForTenantProtectPlusDocument200Response;
  }

  @override
  void update(
      void Function(PayForTenantProtectPlusDocument200ResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  PayForTenantProtectPlusDocument200Response build() => _build();

  _$PayForTenantProtectPlusDocument200Response _build() {
    final _$result = _$v ??
        _$PayForTenantProtectPlusDocument200Response._(
          payUrl: payUrl,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
