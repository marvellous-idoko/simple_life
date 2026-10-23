// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_partner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CompanyPartnerBusinessRegistrationTypeEnum
    _$companyPartnerBusinessRegistrationTypeEnum_limitedLiabilityCompany =
    const CompanyPartnerBusinessRegistrationTypeEnum._(
        'limitedLiabilityCompany');
const CompanyPartnerBusinessRegistrationTypeEnum
    _$companyPartnerBusinessRegistrationTypeEnum_publicLiabilityCompany =
    const CompanyPartnerBusinessRegistrationTypeEnum._(
        'publicLiabilityCompany');
const CompanyPartnerBusinessRegistrationTypeEnum
    _$companyPartnerBusinessRegistrationTypeEnum_incorporatedTrustees =
    const CompanyPartnerBusinessRegistrationTypeEnum._('incorporatedTrustees');
const CompanyPartnerBusinessRegistrationTypeEnum
    _$companyPartnerBusinessRegistrationTypeEnum_businessName =
    const CompanyPartnerBusinessRegistrationTypeEnum._('businessName');

CompanyPartnerBusinessRegistrationTypeEnum
    _$companyPartnerBusinessRegistrationTypeEnumValueOf(String name) {
  switch (name) {
    case 'limitedLiabilityCompany':
      return _$companyPartnerBusinessRegistrationTypeEnum_limitedLiabilityCompany;
    case 'publicLiabilityCompany':
      return _$companyPartnerBusinessRegistrationTypeEnum_publicLiabilityCompany;
    case 'incorporatedTrustees':
      return _$companyPartnerBusinessRegistrationTypeEnum_incorporatedTrustees;
    case 'businessName':
      return _$companyPartnerBusinessRegistrationTypeEnum_businessName;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CompanyPartnerBusinessRegistrationTypeEnum>
    _$companyPartnerBusinessRegistrationTypeEnumValues = BuiltSet<
        CompanyPartnerBusinessRegistrationTypeEnum>(const <CompanyPartnerBusinessRegistrationTypeEnum>[
  _$companyPartnerBusinessRegistrationTypeEnum_limitedLiabilityCompany,
  _$companyPartnerBusinessRegistrationTypeEnum_publicLiabilityCompany,
  _$companyPartnerBusinessRegistrationTypeEnum_incorporatedTrustees,
  _$companyPartnerBusinessRegistrationTypeEnum_businessName,
]);

const CompanyPartnerLinkedPartnerTypeEnum
    _$companyPartnerLinkedPartnerTypeEnum_broker =
    const CompanyPartnerLinkedPartnerTypeEnum._('broker');

CompanyPartnerLinkedPartnerTypeEnum
    _$companyPartnerLinkedPartnerTypeEnumValueOf(String name) {
  switch (name) {
    case 'broker':
      return _$companyPartnerLinkedPartnerTypeEnum_broker;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CompanyPartnerLinkedPartnerTypeEnum>
    _$companyPartnerLinkedPartnerTypeEnumValues = BuiltSet<
        CompanyPartnerLinkedPartnerTypeEnum>(const <CompanyPartnerLinkedPartnerTypeEnum>[
  _$companyPartnerLinkedPartnerTypeEnum_broker,
]);

Serializer<CompanyPartnerBusinessRegistrationTypeEnum>
    _$companyPartnerBusinessRegistrationTypeEnumSerializer =
    _$CompanyPartnerBusinessRegistrationTypeEnumSerializer();
Serializer<CompanyPartnerLinkedPartnerTypeEnum>
    _$companyPartnerLinkedPartnerTypeEnumSerializer =
    _$CompanyPartnerLinkedPartnerTypeEnumSerializer();

class _$CompanyPartnerBusinessRegistrationTypeEnumSerializer
    implements PrimitiveSerializer<CompanyPartnerBusinessRegistrationTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'limitedLiabilityCompany': 'Limited Liability Company',
    'publicLiabilityCompany': 'Public Liability Company',
    'incorporatedTrustees': 'Incorporated Trustees',
    'businessName': 'Business Name',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Limited Liability Company': 'limitedLiabilityCompany',
    'Public Liability Company': 'publicLiabilityCompany',
    'Incorporated Trustees': 'incorporatedTrustees',
    'Business Name': 'businessName',
  };

  @override
  final Iterable<Type> types = const <Type>[
    CompanyPartnerBusinessRegistrationTypeEnum
  ];
  @override
  final String wireName = 'CompanyPartnerBusinessRegistrationTypeEnum';

  @override
  Object serialize(Serializers serializers,
          CompanyPartnerBusinessRegistrationTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CompanyPartnerBusinessRegistrationTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CompanyPartnerBusinessRegistrationTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CompanyPartnerLinkedPartnerTypeEnumSerializer
    implements PrimitiveSerializer<CompanyPartnerLinkedPartnerTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'broker': 'broker',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'broker': 'broker',
  };

  @override
  final Iterable<Type> types = const <Type>[
    CompanyPartnerLinkedPartnerTypeEnum
  ];
  @override
  final String wireName = 'CompanyPartnerLinkedPartnerTypeEnum';

  @override
  Object serialize(
          Serializers serializers, CompanyPartnerLinkedPartnerTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CompanyPartnerLinkedPartnerTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CompanyPartnerLinkedPartnerTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CompanyPartner extends CompanyPartner {
  @override
  final String? name;
  @override
  final String? address;
  @override
  final String? focus;
  @override
  final String? registrationNumber;
  @override
  final bool? terms;
  @override
  final int? termsVersion;
  @override
  final CompanyPartnerBusinessRegistrationTypeEnum? businessRegistrationType;
  @override
  final String? contact;
  @override
  final String? contactEmail;
  @override
  final String? contactPhone;
  @override
  final String? whyUs;
  @override
  final String? partnerId;
  @override
  final String? lgaId;
  @override
  final String? linkedPartnerId;
  @override
  final CompanyPartnerLinkedPartnerTypeEnum? linkedPartnerType;

  factory _$CompanyPartner([void Function(CompanyPartnerBuilder)? updates]) =>
      (CompanyPartnerBuilder()..update(updates))._build();

  _$CompanyPartner._(
      {this.name,
      this.address,
      this.focus,
      this.registrationNumber,
      this.terms,
      this.termsVersion,
      this.businessRegistrationType,
      this.contact,
      this.contactEmail,
      this.contactPhone,
      this.whyUs,
      this.partnerId,
      this.lgaId,
      this.linkedPartnerId,
      this.linkedPartnerType})
      : super._();
  @override
  CompanyPartner rebuild(void Function(CompanyPartnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CompanyPartnerBuilder toBuilder() => CompanyPartnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CompanyPartner &&
        name == other.name &&
        address == other.address &&
        focus == other.focus &&
        registrationNumber == other.registrationNumber &&
        terms == other.terms &&
        termsVersion == other.termsVersion &&
        businessRegistrationType == other.businessRegistrationType &&
        contact == other.contact &&
        contactEmail == other.contactEmail &&
        contactPhone == other.contactPhone &&
        whyUs == other.whyUs &&
        partnerId == other.partnerId &&
        lgaId == other.lgaId &&
        linkedPartnerId == other.linkedPartnerId &&
        linkedPartnerType == other.linkedPartnerType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, focus.hashCode);
    _$hash = $jc(_$hash, registrationNumber.hashCode);
    _$hash = $jc(_$hash, terms.hashCode);
    _$hash = $jc(_$hash, termsVersion.hashCode);
    _$hash = $jc(_$hash, businessRegistrationType.hashCode);
    _$hash = $jc(_$hash, contact.hashCode);
    _$hash = $jc(_$hash, contactEmail.hashCode);
    _$hash = $jc(_$hash, contactPhone.hashCode);
    _$hash = $jc(_$hash, whyUs.hashCode);
    _$hash = $jc(_$hash, partnerId.hashCode);
    _$hash = $jc(_$hash, lgaId.hashCode);
    _$hash = $jc(_$hash, linkedPartnerId.hashCode);
    _$hash = $jc(_$hash, linkedPartnerType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CompanyPartner')
          ..add('name', name)
          ..add('address', address)
          ..add('focus', focus)
          ..add('registrationNumber', registrationNumber)
          ..add('terms', terms)
          ..add('termsVersion', termsVersion)
          ..add('businessRegistrationType', businessRegistrationType)
          ..add('contact', contact)
          ..add('contactEmail', contactEmail)
          ..add('contactPhone', contactPhone)
          ..add('whyUs', whyUs)
          ..add('partnerId', partnerId)
          ..add('lgaId', lgaId)
          ..add('linkedPartnerId', linkedPartnerId)
          ..add('linkedPartnerType', linkedPartnerType))
        .toString();
  }
}

class CompanyPartnerBuilder
    implements Builder<CompanyPartner, CompanyPartnerBuilder> {
  _$CompanyPartner? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _focus;
  String? get focus => _$this._focus;
  set focus(String? focus) => _$this._focus = focus;

  String? _registrationNumber;
  String? get registrationNumber => _$this._registrationNumber;
  set registrationNumber(String? registrationNumber) =>
      _$this._registrationNumber = registrationNumber;

  bool? _terms;
  bool? get terms => _$this._terms;
  set terms(bool? terms) => _$this._terms = terms;

  int? _termsVersion;
  int? get termsVersion => _$this._termsVersion;
  set termsVersion(int? termsVersion) => _$this._termsVersion = termsVersion;

  CompanyPartnerBusinessRegistrationTypeEnum? _businessRegistrationType;
  CompanyPartnerBusinessRegistrationTypeEnum? get businessRegistrationType =>
      _$this._businessRegistrationType;
  set businessRegistrationType(
          CompanyPartnerBusinessRegistrationTypeEnum?
              businessRegistrationType) =>
      _$this._businessRegistrationType = businessRegistrationType;

  String? _contact;
  String? get contact => _$this._contact;
  set contact(String? contact) => _$this._contact = contact;

  String? _contactEmail;
  String? get contactEmail => _$this._contactEmail;
  set contactEmail(String? contactEmail) => _$this._contactEmail = contactEmail;

  String? _contactPhone;
  String? get contactPhone => _$this._contactPhone;
  set contactPhone(String? contactPhone) => _$this._contactPhone = contactPhone;

  String? _whyUs;
  String? get whyUs => _$this._whyUs;
  set whyUs(String? whyUs) => _$this._whyUs = whyUs;

  String? _partnerId;
  String? get partnerId => _$this._partnerId;
  set partnerId(String? partnerId) => _$this._partnerId = partnerId;

  String? _lgaId;
  String? get lgaId => _$this._lgaId;
  set lgaId(String? lgaId) => _$this._lgaId = lgaId;

  String? _linkedPartnerId;
  String? get linkedPartnerId => _$this._linkedPartnerId;
  set linkedPartnerId(String? linkedPartnerId) =>
      _$this._linkedPartnerId = linkedPartnerId;

  CompanyPartnerLinkedPartnerTypeEnum? _linkedPartnerType;
  CompanyPartnerLinkedPartnerTypeEnum? get linkedPartnerType =>
      _$this._linkedPartnerType;
  set linkedPartnerType(
          CompanyPartnerLinkedPartnerTypeEnum? linkedPartnerType) =>
      _$this._linkedPartnerType = linkedPartnerType;

  CompanyPartnerBuilder() {
    CompanyPartner._defaults(this);
  }

  CompanyPartnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _address = $v.address;
      _focus = $v.focus;
      _registrationNumber = $v.registrationNumber;
      _terms = $v.terms;
      _termsVersion = $v.termsVersion;
      _businessRegistrationType = $v.businessRegistrationType;
      _contact = $v.contact;
      _contactEmail = $v.contactEmail;
      _contactPhone = $v.contactPhone;
      _whyUs = $v.whyUs;
      _partnerId = $v.partnerId;
      _lgaId = $v.lgaId;
      _linkedPartnerId = $v.linkedPartnerId;
      _linkedPartnerType = $v.linkedPartnerType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CompanyPartner other) {
    _$v = other as _$CompanyPartner;
  }

  @override
  void update(void Function(CompanyPartnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CompanyPartner build() => _build();

  _$CompanyPartner _build() {
    final _$result = _$v ??
        _$CompanyPartner._(
          name: name,
          address: address,
          focus: focus,
          registrationNumber: registrationNumber,
          terms: terms,
          termsVersion: termsVersion,
          businessRegistrationType: businessRegistrationType,
          contact: contact,
          contactEmail: contactEmail,
          contactPhone: contactPhone,
          whyUs: whyUs,
          partnerId: partnerId,
          lgaId: lgaId,
          linkedPartnerId: linkedPartnerId,
          linkedPartnerType: linkedPartnerType,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
