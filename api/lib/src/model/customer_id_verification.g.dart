// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_id_verification.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomerIDVerification extends CustomerIDVerification {
  @override
  final String? customerId;
  @override
  final Date? date;
  @override
  final String? documentNumber;
  @override
  final CustomerIDVerificationData? data;
  @override
  final CustomerIDVerificationError? error;

  factory _$CustomerIDVerification(
          [void Function(CustomerIDVerificationBuilder)? updates]) =>
      (CustomerIDVerificationBuilder()..update(updates))._build();

  _$CustomerIDVerification._(
      {this.customerId, this.date, this.documentNumber, this.data, this.error})
      : super._();
  @override
  CustomerIDVerification rebuild(
          void Function(CustomerIDVerificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomerIDVerificationBuilder toBuilder() =>
      CustomerIDVerificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomerIDVerification &&
        customerId == other.customerId &&
        date == other.date &&
        documentNumber == other.documentNumber &&
        data == other.data &&
        error == other.error;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, documentNumber.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomerIDVerification')
          ..add('customerId', customerId)
          ..add('date', date)
          ..add('documentNumber', documentNumber)
          ..add('data', data)
          ..add('error', error))
        .toString();
  }
}

class CustomerIDVerificationBuilder
    implements Builder<CustomerIDVerification, CustomerIDVerificationBuilder> {
  _$CustomerIDVerification? _$v;

  String? _customerId;
  String? get customerId => _$this._customerId;
  set customerId(String? customerId) => _$this._customerId = customerId;

  Date? _date;
  Date? get date => _$this._date;
  set date(Date? date) => _$this._date = date;

  String? _documentNumber;
  String? get documentNumber => _$this._documentNumber;
  set documentNumber(String? documentNumber) =>
      _$this._documentNumber = documentNumber;

  CustomerIDVerificationDataBuilder? _data;
  CustomerIDVerificationDataBuilder get data =>
      _$this._data ??= CustomerIDVerificationDataBuilder();
  set data(CustomerIDVerificationDataBuilder? data) => _$this._data = data;

  CustomerIDVerificationErrorBuilder? _error;
  CustomerIDVerificationErrorBuilder get error =>
      _$this._error ??= CustomerIDVerificationErrorBuilder();
  set error(CustomerIDVerificationErrorBuilder? error) => _$this._error = error;

  CustomerIDVerificationBuilder() {
    CustomerIDVerification._defaults(this);
  }

  CustomerIDVerificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _customerId = $v.customerId;
      _date = $v.date;
      _documentNumber = $v.documentNumber;
      _data = $v.data?.toBuilder();
      _error = $v.error?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomerIDVerification other) {
    _$v = other as _$CustomerIDVerification;
  }

  @override
  void update(void Function(CustomerIDVerificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomerIDVerification build() => _build();

  _$CustomerIDVerification _build() {
    _$CustomerIDVerification _$result;
    try {
      _$result = _$v ??
          _$CustomerIDVerification._(
            customerId: customerId,
            date: date,
            documentNumber: documentNumber,
            data: _data?.build(),
            error: _error?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
        _$failedField = 'error';
        _error?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CustomerIDVerification', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
