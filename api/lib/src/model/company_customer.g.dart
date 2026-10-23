// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_customer.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CompanyCustomer extends CompanyCustomer {
  @override
  final String? companyName;
  @override
  final String? rcNumber;
  @override
  final String? phone;
  @override
  final String? email;

  factory _$CompanyCustomer([void Function(CompanyCustomerBuilder)? updates]) =>
      (CompanyCustomerBuilder()..update(updates))._build();

  _$CompanyCustomer._({this.companyName, this.rcNumber, this.phone, this.email})
      : super._();
  @override
  CompanyCustomer rebuild(void Function(CompanyCustomerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CompanyCustomerBuilder toBuilder() => CompanyCustomerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CompanyCustomer &&
        companyName == other.companyName &&
        rcNumber == other.rcNumber &&
        phone == other.phone &&
        email == other.email;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, companyName.hashCode);
    _$hash = $jc(_$hash, rcNumber.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CompanyCustomer')
          ..add('companyName', companyName)
          ..add('rcNumber', rcNumber)
          ..add('phone', phone)
          ..add('email', email))
        .toString();
  }
}

class CompanyCustomerBuilder
    implements Builder<CompanyCustomer, CompanyCustomerBuilder> {
  _$CompanyCustomer? _$v;

  String? _companyName;
  String? get companyName => _$this._companyName;
  set companyName(String? companyName) => _$this._companyName = companyName;

  String? _rcNumber;
  String? get rcNumber => _$this._rcNumber;
  set rcNumber(String? rcNumber) => _$this._rcNumber = rcNumber;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  CompanyCustomerBuilder() {
    CompanyCustomer._defaults(this);
  }

  CompanyCustomerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _companyName = $v.companyName;
      _rcNumber = $v.rcNumber;
      _phone = $v.phone;
      _email = $v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CompanyCustomer other) {
    _$v = other as _$CompanyCustomer;
  }

  @override
  void update(void Function(CompanyCustomerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CompanyCustomer build() => _build();

  _$CompanyCustomer _build() {
    final _$result = _$v ??
        _$CompanyCustomer._(
          companyName: companyName,
          rcNumber: rcNumber,
          phone: phone,
          email: email,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
