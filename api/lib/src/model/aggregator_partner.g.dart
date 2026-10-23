// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aggregator_partner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AggregatorPartner extends AggregatorPartner {
  @override
  final String? name;
  @override
  final String? address;
  @override
  final String? naicomAggregatorId;
  @override
  final String? lgaId;
  @override
  final bool? terms;
  @override
  final int? termsVersion;
  @override
  final String? contact;
  @override
  final String? contactEmail;
  @override
  final String? contactPhone;
  @override
  final String? partnerId;
  @override
  final String? licenseExpiryDate;

  factory _$AggregatorPartner(
          [void Function(AggregatorPartnerBuilder)? updates]) =>
      (AggregatorPartnerBuilder()..update(updates))._build();

  _$AggregatorPartner._(
      {this.name,
      this.address,
      this.naicomAggregatorId,
      this.lgaId,
      this.terms,
      this.termsVersion,
      this.contact,
      this.contactEmail,
      this.contactPhone,
      this.partnerId,
      this.licenseExpiryDate})
      : super._();
  @override
  AggregatorPartner rebuild(void Function(AggregatorPartnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AggregatorPartnerBuilder toBuilder() =>
      AggregatorPartnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AggregatorPartner &&
        name == other.name &&
        address == other.address &&
        naicomAggregatorId == other.naicomAggregatorId &&
        lgaId == other.lgaId &&
        terms == other.terms &&
        termsVersion == other.termsVersion &&
        contact == other.contact &&
        contactEmail == other.contactEmail &&
        contactPhone == other.contactPhone &&
        partnerId == other.partnerId &&
        licenseExpiryDate == other.licenseExpiryDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, naicomAggregatorId.hashCode);
    _$hash = $jc(_$hash, lgaId.hashCode);
    _$hash = $jc(_$hash, terms.hashCode);
    _$hash = $jc(_$hash, termsVersion.hashCode);
    _$hash = $jc(_$hash, contact.hashCode);
    _$hash = $jc(_$hash, contactEmail.hashCode);
    _$hash = $jc(_$hash, contactPhone.hashCode);
    _$hash = $jc(_$hash, partnerId.hashCode);
    _$hash = $jc(_$hash, licenseExpiryDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AggregatorPartner')
          ..add('name', name)
          ..add('address', address)
          ..add('naicomAggregatorId', naicomAggregatorId)
          ..add('lgaId', lgaId)
          ..add('terms', terms)
          ..add('termsVersion', termsVersion)
          ..add('contact', contact)
          ..add('contactEmail', contactEmail)
          ..add('contactPhone', contactPhone)
          ..add('partnerId', partnerId)
          ..add('licenseExpiryDate', licenseExpiryDate))
        .toString();
  }
}

class AggregatorPartnerBuilder
    implements Builder<AggregatorPartner, AggregatorPartnerBuilder> {
  _$AggregatorPartner? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _naicomAggregatorId;
  String? get naicomAggregatorId => _$this._naicomAggregatorId;
  set naicomAggregatorId(String? naicomAggregatorId) =>
      _$this._naicomAggregatorId = naicomAggregatorId;

  String? _lgaId;
  String? get lgaId => _$this._lgaId;
  set lgaId(String? lgaId) => _$this._lgaId = lgaId;

  bool? _terms;
  bool? get terms => _$this._terms;
  set terms(bool? terms) => _$this._terms = terms;

  int? _termsVersion;
  int? get termsVersion => _$this._termsVersion;
  set termsVersion(int? termsVersion) => _$this._termsVersion = termsVersion;

  String? _contact;
  String? get contact => _$this._contact;
  set contact(String? contact) => _$this._contact = contact;

  String? _contactEmail;
  String? get contactEmail => _$this._contactEmail;
  set contactEmail(String? contactEmail) => _$this._contactEmail = contactEmail;

  String? _contactPhone;
  String? get contactPhone => _$this._contactPhone;
  set contactPhone(String? contactPhone) => _$this._contactPhone = contactPhone;

  String? _partnerId;
  String? get partnerId => _$this._partnerId;
  set partnerId(String? partnerId) => _$this._partnerId = partnerId;

  String? _licenseExpiryDate;
  String? get licenseExpiryDate => _$this._licenseExpiryDate;
  set licenseExpiryDate(String? licenseExpiryDate) =>
      _$this._licenseExpiryDate = licenseExpiryDate;

  AggregatorPartnerBuilder() {
    AggregatorPartner._defaults(this);
  }

  AggregatorPartnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _address = $v.address;
      _naicomAggregatorId = $v.naicomAggregatorId;
      _lgaId = $v.lgaId;
      _terms = $v.terms;
      _termsVersion = $v.termsVersion;
      _contact = $v.contact;
      _contactEmail = $v.contactEmail;
      _contactPhone = $v.contactPhone;
      _partnerId = $v.partnerId;
      _licenseExpiryDate = $v.licenseExpiryDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AggregatorPartner other) {
    _$v = other as _$AggregatorPartner;
  }

  @override
  void update(void Function(AggregatorPartnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AggregatorPartner build() => _build();

  _$AggregatorPartner _build() {
    final _$result = _$v ??
        _$AggregatorPartner._(
          name: name,
          address: address,
          naicomAggregatorId: naicomAggregatorId,
          lgaId: lgaId,
          terms: terms,
          termsVersion: termsVersion,
          contact: contact,
          contactEmail: contactEmail,
          contactPhone: contactPhone,
          partnerId: partnerId,
          licenseExpiryDate: licenseExpiryDate,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
