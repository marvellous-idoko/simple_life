// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_id_verification_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomerIDVerificationError extends CustomerIDVerificationError {
  @override
  final String? message;

  factory _$CustomerIDVerificationError(
          [void Function(CustomerIDVerificationErrorBuilder)? updates]) =>
      (CustomerIDVerificationErrorBuilder()..update(updates))._build();

  _$CustomerIDVerificationError._({this.message}) : super._();
  @override
  CustomerIDVerificationError rebuild(
          void Function(CustomerIDVerificationErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomerIDVerificationErrorBuilder toBuilder() =>
      CustomerIDVerificationErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomerIDVerificationError && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomerIDVerificationError')
          ..add('message', message))
        .toString();
  }
}

class CustomerIDVerificationErrorBuilder
    implements
        Builder<CustomerIDVerificationError,
            CustomerIDVerificationErrorBuilder> {
  _$CustomerIDVerificationError? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  CustomerIDVerificationErrorBuilder() {
    CustomerIDVerificationError._defaults(this);
  }

  CustomerIDVerificationErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomerIDVerificationError other) {
    _$v = other as _$CustomerIDVerificationError;
  }

  @override
  void update(void Function(CustomerIDVerificationErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomerIDVerificationError build() => _build();

  _$CustomerIDVerificationError _build() {
    final _$result = _$v ??
        _$CustomerIDVerificationError._(
          message: message,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
