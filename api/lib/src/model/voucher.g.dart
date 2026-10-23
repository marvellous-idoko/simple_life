// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voucher.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const VoucherRecipientTypeEnum _$voucherRecipientTypeEnum_insured =
    const VoucherRecipientTypeEnum._('insured');
const VoucherRecipientTypeEnum _$voucherRecipientTypeEnum_thirdParty =
    const VoucherRecipientTypeEnum._('thirdParty');
const VoucherRecipientTypeEnum _$voucherRecipientTypeEnum_none =
    const VoucherRecipientTypeEnum._('none');

VoucherRecipientTypeEnum _$voucherRecipientTypeEnumValueOf(String name) {
  switch (name) {
    case 'insured':
      return _$voucherRecipientTypeEnum_insured;
    case 'thirdParty':
      return _$voucherRecipientTypeEnum_thirdParty;
    case 'none':
      return _$voucherRecipientTypeEnum_none;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<VoucherRecipientTypeEnum> _$voucherRecipientTypeEnumValues =
    BuiltSet<VoucherRecipientTypeEnum>(const <VoucherRecipientTypeEnum>[
  _$voucherRecipientTypeEnum_insured,
  _$voucherRecipientTypeEnum_thirdParty,
  _$voucherRecipientTypeEnum_none,
]);

const VoucherCompanyEnum _$voucherCompanyEnum_heirsInsurance =
    const VoucherCompanyEnum._('heirsInsurance');
const VoucherCompanyEnum _$voucherCompanyEnum_heirsLifeAssurance =
    const VoucherCompanyEnum._('heirsLifeAssurance');

VoucherCompanyEnum _$voucherCompanyEnumValueOf(String name) {
  switch (name) {
    case 'heirsInsurance':
      return _$voucherCompanyEnum_heirsInsurance;
    case 'heirsLifeAssurance':
      return _$voucherCompanyEnum_heirsLifeAssurance;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<VoucherCompanyEnum> _$voucherCompanyEnumValues =
    BuiltSet<VoucherCompanyEnum>(const <VoucherCompanyEnum>[
  _$voucherCompanyEnum_heirsInsurance,
  _$voucherCompanyEnum_heirsLifeAssurance,
]);

Serializer<VoucherRecipientTypeEnum> _$voucherRecipientTypeEnumSerializer =
    _$VoucherRecipientTypeEnumSerializer();
Serializer<VoucherCompanyEnum> _$voucherCompanyEnumSerializer =
    _$VoucherCompanyEnumSerializer();

class _$VoucherRecipientTypeEnumSerializer
    implements PrimitiveSerializer<VoucherRecipientTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'insured': 'Insured',
    'thirdParty': 'Third Party',
    'none': 'None',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Insured': 'insured',
    'Third Party': 'thirdParty',
    'None': 'none',
  };

  @override
  final Iterable<Type> types = const <Type>[VoucherRecipientTypeEnum];
  @override
  final String wireName = 'VoucherRecipientTypeEnum';

  @override
  Object serialize(Serializers serializers, VoucherRecipientTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  VoucherRecipientTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      VoucherRecipientTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$VoucherCompanyEnumSerializer
    implements PrimitiveSerializer<VoucherCompanyEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'heirsInsurance': 'Heirs Insurance',
    'heirsLifeAssurance': 'Heirs Life Assurance',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Heirs Insurance': 'heirsInsurance',
    'Heirs Life Assurance': 'heirsLifeAssurance',
  };

  @override
  final Iterable<Type> types = const <Type>[VoucherCompanyEnum];
  @override
  final String wireName = 'VoucherCompanyEnum';

  @override
  Object serialize(Serializers serializers, VoucherCompanyEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  VoucherCompanyEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      VoucherCompanyEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Voucher extends Voucher {
  @override
  final String? claimId;
  @override
  final String? email;
  @override
  final String? name;
  @override
  final String? phoneNumber;
  @override
  final VoucherRecipientTypeEnum? recipientType;
  @override
  final VoucherCompanyEnum? company;
  @override
  final BuiltList<String>? claimantIds;

  factory _$Voucher([void Function(VoucherBuilder)? updates]) =>
      (VoucherBuilder()..update(updates))._build();

  _$Voucher._(
      {this.claimId,
      this.email,
      this.name,
      this.phoneNumber,
      this.recipientType,
      this.company,
      this.claimantIds})
      : super._();
  @override
  Voucher rebuild(void Function(VoucherBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VoucherBuilder toBuilder() => VoucherBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Voucher &&
        claimId == other.claimId &&
        email == other.email &&
        name == other.name &&
        phoneNumber == other.phoneNumber &&
        recipientType == other.recipientType &&
        company == other.company &&
        claimantIds == other.claimantIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, claimId.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, recipientType.hashCode);
    _$hash = $jc(_$hash, company.hashCode);
    _$hash = $jc(_$hash, claimantIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Voucher')
          ..add('claimId', claimId)
          ..add('email', email)
          ..add('name', name)
          ..add('phoneNumber', phoneNumber)
          ..add('recipientType', recipientType)
          ..add('company', company)
          ..add('claimantIds', claimantIds))
        .toString();
  }
}

class VoucherBuilder implements Builder<Voucher, VoucherBuilder> {
  _$Voucher? _$v;

  String? _claimId;
  String? get claimId => _$this._claimId;
  set claimId(String? claimId) => _$this._claimId = claimId;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  VoucherRecipientTypeEnum? _recipientType;
  VoucherRecipientTypeEnum? get recipientType => _$this._recipientType;
  set recipientType(VoucherRecipientTypeEnum? recipientType) =>
      _$this._recipientType = recipientType;

  VoucherCompanyEnum? _company;
  VoucherCompanyEnum? get company => _$this._company;
  set company(VoucherCompanyEnum? company) => _$this._company = company;

  ListBuilder<String>? _claimantIds;
  ListBuilder<String> get claimantIds =>
      _$this._claimantIds ??= ListBuilder<String>();
  set claimantIds(ListBuilder<String>? claimantIds) =>
      _$this._claimantIds = claimantIds;

  VoucherBuilder() {
    Voucher._defaults(this);
  }

  VoucherBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _claimId = $v.claimId;
      _email = $v.email;
      _name = $v.name;
      _phoneNumber = $v.phoneNumber;
      _recipientType = $v.recipientType;
      _company = $v.company;
      _claimantIds = $v.claimantIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Voucher other) {
    _$v = other as _$Voucher;
  }

  @override
  void update(void Function(VoucherBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Voucher build() => _build();

  _$Voucher _build() {
    _$Voucher _$result;
    try {
      _$result = _$v ??
          _$Voucher._(
            claimId: claimId,
            email: email,
            name: name,
            phoneNumber: phoneNumber,
            recipientType: recipientType,
            company: company,
            claimantIds: _claimantIds?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'claimantIds';
        _claimantIds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Voucher', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
