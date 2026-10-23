// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'individual_partner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const IndividualPartnerLinkedPartnerTypeEnum
    _$individualPartnerLinkedPartnerTypeEnum_broker =
    const IndividualPartnerLinkedPartnerTypeEnum._('broker');

IndividualPartnerLinkedPartnerTypeEnum
    _$individualPartnerLinkedPartnerTypeEnumValueOf(String name) {
  switch (name) {
    case 'broker':
      return _$individualPartnerLinkedPartnerTypeEnum_broker;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<IndividualPartnerLinkedPartnerTypeEnum>
    _$individualPartnerLinkedPartnerTypeEnumValues = BuiltSet<
        IndividualPartnerLinkedPartnerTypeEnum>(const <IndividualPartnerLinkedPartnerTypeEnum>[
  _$individualPartnerLinkedPartnerTypeEnum_broker,
]);

Serializer<IndividualPartnerLinkedPartnerTypeEnum>
    _$individualPartnerLinkedPartnerTypeEnumSerializer =
    _$IndividualPartnerLinkedPartnerTypeEnumSerializer();

class _$IndividualPartnerLinkedPartnerTypeEnumSerializer
    implements PrimitiveSerializer<IndividualPartnerLinkedPartnerTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'broker': 'broker',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'broker': 'broker',
  };

  @override
  final Iterable<Type> types = const <Type>[
    IndividualPartnerLinkedPartnerTypeEnum
  ];
  @override
  final String wireName = 'IndividualPartnerLinkedPartnerTypeEnum';

  @override
  Object serialize(Serializers serializers,
          IndividualPartnerLinkedPartnerTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  IndividualPartnerLinkedPartnerTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      IndividualPartnerLinkedPartnerTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$IndividualPartner extends IndividualPartner {
  @override
  final String? address;
  @override
  final String? dateOfBirth;
  @override
  final String? whyUs;
  @override
  final String? partnerId;
  @override
  final bool? terms;
  @override
  final int? termsVersion;
  @override
  final String? lgaId;
  @override
  final String? linkedPartnerId;
  @override
  final IndividualPartnerLinkedPartnerTypeEnum? linkedPartnerType;

  factory _$IndividualPartner(
          [void Function(IndividualPartnerBuilder)? updates]) =>
      (IndividualPartnerBuilder()..update(updates))._build();

  _$IndividualPartner._(
      {this.address,
      this.dateOfBirth,
      this.whyUs,
      this.partnerId,
      this.terms,
      this.termsVersion,
      this.lgaId,
      this.linkedPartnerId,
      this.linkedPartnerType})
      : super._();
  @override
  IndividualPartner rebuild(void Function(IndividualPartnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IndividualPartnerBuilder toBuilder() =>
      IndividualPartnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IndividualPartner &&
        address == other.address &&
        dateOfBirth == other.dateOfBirth &&
        whyUs == other.whyUs &&
        partnerId == other.partnerId &&
        terms == other.terms &&
        termsVersion == other.termsVersion &&
        lgaId == other.lgaId &&
        linkedPartnerId == other.linkedPartnerId &&
        linkedPartnerType == other.linkedPartnerType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, dateOfBirth.hashCode);
    _$hash = $jc(_$hash, whyUs.hashCode);
    _$hash = $jc(_$hash, partnerId.hashCode);
    _$hash = $jc(_$hash, terms.hashCode);
    _$hash = $jc(_$hash, termsVersion.hashCode);
    _$hash = $jc(_$hash, lgaId.hashCode);
    _$hash = $jc(_$hash, linkedPartnerId.hashCode);
    _$hash = $jc(_$hash, linkedPartnerType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IndividualPartner')
          ..add('address', address)
          ..add('dateOfBirth', dateOfBirth)
          ..add('whyUs', whyUs)
          ..add('partnerId', partnerId)
          ..add('terms', terms)
          ..add('termsVersion', termsVersion)
          ..add('lgaId', lgaId)
          ..add('linkedPartnerId', linkedPartnerId)
          ..add('linkedPartnerType', linkedPartnerType))
        .toString();
  }
}

class IndividualPartnerBuilder
    implements Builder<IndividualPartner, IndividualPartnerBuilder> {
  _$IndividualPartner? _$v;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _dateOfBirth;
  String? get dateOfBirth => _$this._dateOfBirth;
  set dateOfBirth(String? dateOfBirth) => _$this._dateOfBirth = dateOfBirth;

  String? _whyUs;
  String? get whyUs => _$this._whyUs;
  set whyUs(String? whyUs) => _$this._whyUs = whyUs;

  String? _partnerId;
  String? get partnerId => _$this._partnerId;
  set partnerId(String? partnerId) => _$this._partnerId = partnerId;

  bool? _terms;
  bool? get terms => _$this._terms;
  set terms(bool? terms) => _$this._terms = terms;

  int? _termsVersion;
  int? get termsVersion => _$this._termsVersion;
  set termsVersion(int? termsVersion) => _$this._termsVersion = termsVersion;

  String? _lgaId;
  String? get lgaId => _$this._lgaId;
  set lgaId(String? lgaId) => _$this._lgaId = lgaId;

  String? _linkedPartnerId;
  String? get linkedPartnerId => _$this._linkedPartnerId;
  set linkedPartnerId(String? linkedPartnerId) =>
      _$this._linkedPartnerId = linkedPartnerId;

  IndividualPartnerLinkedPartnerTypeEnum? _linkedPartnerType;
  IndividualPartnerLinkedPartnerTypeEnum? get linkedPartnerType =>
      _$this._linkedPartnerType;
  set linkedPartnerType(
          IndividualPartnerLinkedPartnerTypeEnum? linkedPartnerType) =>
      _$this._linkedPartnerType = linkedPartnerType;

  IndividualPartnerBuilder() {
    IndividualPartner._defaults(this);
  }

  IndividualPartnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _address = $v.address;
      _dateOfBirth = $v.dateOfBirth;
      _whyUs = $v.whyUs;
      _partnerId = $v.partnerId;
      _terms = $v.terms;
      _termsVersion = $v.termsVersion;
      _lgaId = $v.lgaId;
      _linkedPartnerId = $v.linkedPartnerId;
      _linkedPartnerType = $v.linkedPartnerType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IndividualPartner other) {
    _$v = other as _$IndividualPartner;
  }

  @override
  void update(void Function(IndividualPartnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IndividualPartner build() => _build();

  _$IndividualPartner _build() {
    final _$result = _$v ??
        _$IndividualPartner._(
          address: address,
          dateOfBirth: dateOfBirth,
          whyUs: whyUs,
          partnerId: partnerId,
          terms: terms,
          termsVersion: termsVersion,
          lgaId: lgaId,
          linkedPartnerId: linkedPartnerId,
          linkedPartnerType: linkedPartnerType,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
