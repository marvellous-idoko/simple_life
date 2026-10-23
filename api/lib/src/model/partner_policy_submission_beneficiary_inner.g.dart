// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partner_policy_submission_beneficiary_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PartnerPolicySubmissionBeneficiaryInner
    extends PartnerPolicySubmissionBeneficiaryInner {
  @override
  final String name;
  @override
  final String email;
  @override
  final String phone;

  factory _$PartnerPolicySubmissionBeneficiaryInner(
          [void Function(PartnerPolicySubmissionBeneficiaryInnerBuilder)?
              updates]) =>
      (PartnerPolicySubmissionBeneficiaryInnerBuilder()..update(updates))
          ._build();

  _$PartnerPolicySubmissionBeneficiaryInner._(
      {required this.name, required this.email, required this.phone})
      : super._();
  @override
  PartnerPolicySubmissionBeneficiaryInner rebuild(
          void Function(PartnerPolicySubmissionBeneficiaryInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PartnerPolicySubmissionBeneficiaryInnerBuilder toBuilder() =>
      PartnerPolicySubmissionBeneficiaryInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PartnerPolicySubmissionBeneficiaryInner &&
        name == other.name &&
        email == other.email &&
        phone == other.phone;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'PartnerPolicySubmissionBeneficiaryInner')
          ..add('name', name)
          ..add('email', email)
          ..add('phone', phone))
        .toString();
  }
}

class PartnerPolicySubmissionBeneficiaryInnerBuilder
    implements
        Builder<PartnerPolicySubmissionBeneficiaryInner,
            PartnerPolicySubmissionBeneficiaryInnerBuilder> {
  _$PartnerPolicySubmissionBeneficiaryInner? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  PartnerPolicySubmissionBeneficiaryInnerBuilder() {
    PartnerPolicySubmissionBeneficiaryInner._defaults(this);
  }

  PartnerPolicySubmissionBeneficiaryInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _email = $v.email;
      _phone = $v.phone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PartnerPolicySubmissionBeneficiaryInner other) {
    _$v = other as _$PartnerPolicySubmissionBeneficiaryInner;
  }

  @override
  void update(
      void Function(PartnerPolicySubmissionBeneficiaryInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PartnerPolicySubmissionBeneficiaryInner build() => _build();

  _$PartnerPolicySubmissionBeneficiaryInner _build() {
    final _$result = _$v ??
        _$PartnerPolicySubmissionBeneficiaryInner._(
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'PartnerPolicySubmissionBeneficiaryInner', 'name'),
          email: BuiltValueNullFieldError.checkNotNull(
              email, r'PartnerPolicySubmissionBeneficiaryInner', 'email'),
          phone: BuiltValueNullFieldError.checkNotNull(
              phone, r'PartnerPolicySubmissionBeneficiaryInner', 'phone'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
