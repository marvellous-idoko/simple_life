// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pay_for_endowment_document200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PayForEndowmentDocument200Response
    extends PayForEndowmentDocument200Response {
  @override
  final String? payUrl;

  factory _$PayForEndowmentDocument200Response(
          [void Function(PayForEndowmentDocument200ResponseBuilder)?
              updates]) =>
      (PayForEndowmentDocument200ResponseBuilder()..update(updates))._build();

  _$PayForEndowmentDocument200Response._({this.payUrl}) : super._();
  @override
  PayForEndowmentDocument200Response rebuild(
          void Function(PayForEndowmentDocument200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PayForEndowmentDocument200ResponseBuilder toBuilder() =>
      PayForEndowmentDocument200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PayForEndowmentDocument200Response &&
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
    return (newBuiltValueToStringHelper(r'PayForEndowmentDocument200Response')
          ..add('payUrl', payUrl))
        .toString();
  }
}

class PayForEndowmentDocument200ResponseBuilder
    implements
        Builder<PayForEndowmentDocument200Response,
            PayForEndowmentDocument200ResponseBuilder> {
  _$PayForEndowmentDocument200Response? _$v;

  String? _payUrl;
  String? get payUrl => _$this._payUrl;
  set payUrl(String? payUrl) => _$this._payUrl = payUrl;

  PayForEndowmentDocument200ResponseBuilder() {
    PayForEndowmentDocument200Response._defaults(this);
  }

  PayForEndowmentDocument200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _payUrl = $v.payUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PayForEndowmentDocument200Response other) {
    _$v = other as _$PayForEndowmentDocument200Response;
  }

  @override
  void update(
      void Function(PayForEndowmentDocument200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PayForEndowmentDocument200Response build() => _build();

  _$PayForEndowmentDocument200Response _build() {
    final _$result = _$v ??
        _$PayForEndowmentDocument200Response._(
          payUrl: payUrl,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
