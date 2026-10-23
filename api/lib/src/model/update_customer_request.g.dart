// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_customer_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateCustomerRequest extends UpdateCustomerRequest {
  @override
  final String? phone;
  @override
  final String? occupation;

  factory _$UpdateCustomerRequest(
          [void Function(UpdateCustomerRequestBuilder)? updates]) =>
      (UpdateCustomerRequestBuilder()..update(updates))._build();

  _$UpdateCustomerRequest._({this.phone, this.occupation}) : super._();
  @override
  UpdateCustomerRequest rebuild(
          void Function(UpdateCustomerRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateCustomerRequestBuilder toBuilder() =>
      UpdateCustomerRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateCustomerRequest &&
        phone == other.phone &&
        occupation == other.occupation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, occupation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateCustomerRequest')
          ..add('phone', phone)
          ..add('occupation', occupation))
        .toString();
  }
}

class UpdateCustomerRequestBuilder
    implements Builder<UpdateCustomerRequest, UpdateCustomerRequestBuilder> {
  _$UpdateCustomerRequest? _$v;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _occupation;
  String? get occupation => _$this._occupation;
  set occupation(String? occupation) => _$this._occupation = occupation;

  UpdateCustomerRequestBuilder() {
    UpdateCustomerRequest._defaults(this);
  }

  UpdateCustomerRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _phone = $v.phone;
      _occupation = $v.occupation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateCustomerRequest other) {
    _$v = other as _$UpdateCustomerRequest;
  }

  @override
  void update(void Function(UpdateCustomerRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateCustomerRequest build() => _build();

  _$UpdateCustomerRequest _build() {
    final _$result = _$v ??
        _$UpdateCustomerRequest._(
          phone: phone,
          occupation: occupation,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
