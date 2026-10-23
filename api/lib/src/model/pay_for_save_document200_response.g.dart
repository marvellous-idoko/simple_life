// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pay_for_save_document200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PayForSaveDocument200Response extends PayForSaveDocument200Response {
  @override
  final String? payUrl;

  factory _$PayForSaveDocument200Response(
          [void Function(PayForSaveDocument200ResponseBuilder)? updates]) =>
      (PayForSaveDocument200ResponseBuilder()..update(updates))._build();

  _$PayForSaveDocument200Response._({this.payUrl}) : super._();
  @override
  PayForSaveDocument200Response rebuild(
          void Function(PayForSaveDocument200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PayForSaveDocument200ResponseBuilder toBuilder() =>
      PayForSaveDocument200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PayForSaveDocument200Response && payUrl == other.payUrl;
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
    return (newBuiltValueToStringHelper(r'PayForSaveDocument200Response')
          ..add('payUrl', payUrl))
        .toString();
  }
}

class PayForSaveDocument200ResponseBuilder
    implements
        Builder<PayForSaveDocument200Response,
            PayForSaveDocument200ResponseBuilder> {
  _$PayForSaveDocument200Response? _$v;

  String? _payUrl;
  String? get payUrl => _$this._payUrl;
  set payUrl(String? payUrl) => _$this._payUrl = payUrl;

  PayForSaveDocument200ResponseBuilder() {
    PayForSaveDocument200Response._defaults(this);
  }

  PayForSaveDocument200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _payUrl = $v.payUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PayForSaveDocument200Response other) {
    _$v = other as _$PayForSaveDocument200Response;
  }

  @override
  void update(void Function(PayForSaveDocument200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PayForSaveDocument200Response build() => _build();

  _$PayForSaveDocument200Response _build() {
    final _$result = _$v ??
        _$PayForSaveDocument200Response._(
          payUrl: payUrl,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
