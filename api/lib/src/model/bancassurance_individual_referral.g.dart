// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bancassurance_individual_referral.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BancassuranceIndividualReferralChannelEnum
    _$bancassuranceIndividualReferralChannelEnum_branch =
    const BancassuranceIndividualReferralChannelEnum._('branch');
const BancassuranceIndividualReferralChannelEnum
    _$bancassuranceIndividualReferralChannelEnum_USSD =
    const BancassuranceIndividualReferralChannelEnum._('USSD');
const BancassuranceIndividualReferralChannelEnum
    _$bancassuranceIndividualReferralChannelEnum_internetBanking =
    const BancassuranceIndividualReferralChannelEnum._('internetBanking');
const BancassuranceIndividualReferralChannelEnum
    _$bancassuranceIndividualReferralChannelEnum_mobileApp =
    const BancassuranceIndividualReferralChannelEnum._('mobileApp');
const BancassuranceIndividualReferralChannelEnum
    _$bancassuranceIndividualReferralChannelEnum_leo =
    const BancassuranceIndividualReferralChannelEnum._('leo');

BancassuranceIndividualReferralChannelEnum
    _$bancassuranceIndividualReferralChannelEnumValueOf(String name) {
  switch (name) {
    case 'branch':
      return _$bancassuranceIndividualReferralChannelEnum_branch;
    case 'USSD':
      return _$bancassuranceIndividualReferralChannelEnum_USSD;
    case 'internetBanking':
      return _$bancassuranceIndividualReferralChannelEnum_internetBanking;
    case 'mobileApp':
      return _$bancassuranceIndividualReferralChannelEnum_mobileApp;
    case 'leo':
      return _$bancassuranceIndividualReferralChannelEnum_leo;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<BancassuranceIndividualReferralChannelEnum>
    _$bancassuranceIndividualReferralChannelEnumValues = BuiltSet<
        BancassuranceIndividualReferralChannelEnum>(const <BancassuranceIndividualReferralChannelEnum>[
  _$bancassuranceIndividualReferralChannelEnum_branch,
  _$bancassuranceIndividualReferralChannelEnum_USSD,
  _$bancassuranceIndividualReferralChannelEnum_internetBanking,
  _$bancassuranceIndividualReferralChannelEnum_mobileApp,
  _$bancassuranceIndividualReferralChannelEnum_leo,
]);

Serializer<BancassuranceIndividualReferralChannelEnum>
    _$bancassuranceIndividualReferralChannelEnumSerializer =
    _$BancassuranceIndividualReferralChannelEnumSerializer();

class _$BancassuranceIndividualReferralChannelEnumSerializer
    implements PrimitiveSerializer<BancassuranceIndividualReferralChannelEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'branch': 'Branch',
    'USSD': 'USSD',
    'internetBanking': 'Internet Banking',
    'mobileApp': 'Mobile App',
    'leo': 'Leo',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Branch': 'branch',
    'USSD': 'USSD',
    'Internet Banking': 'internetBanking',
    'Mobile App': 'mobileApp',
    'Leo': 'leo',
  };

  @override
  final Iterable<Type> types = const <Type>[
    BancassuranceIndividualReferralChannelEnum
  ];
  @override
  final String wireName = 'BancassuranceIndividualReferralChannelEnum';

  @override
  Object serialize(Serializers serializers,
          BancassuranceIndividualReferralChannelEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  BancassuranceIndividualReferralChannelEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      BancassuranceIndividualReferralChannelEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$BancassuranceIndividualReferral
    extends BancassuranceIndividualReferral {
  @override
  final String? customerName;
  @override
  final String? referredProduct;
  @override
  final String? phone;
  @override
  final String? dob;
  @override
  final String? email;
  @override
  final String? proofOfAddress;
  @override
  final String? proofOfId;
  @override
  final String? bvn;
  @override
  final String? branchName;
  @override
  final String? branchId;
  @override
  final String? referrerName;
  @override
  final num? referrerAccountNumber;
  @override
  final BancassuranceIndividualReferralChannelEnum? channel;
  @override
  final String? uniqueReferralNumber;
  @override
  final Address? address;
  @override
  final IdDetails? idDetails;

  factory _$BancassuranceIndividualReferral(
          [void Function(BancassuranceIndividualReferralBuilder)? updates]) =>
      (BancassuranceIndividualReferralBuilder()..update(updates))._build();

  _$BancassuranceIndividualReferral._(
      {this.customerName,
      this.referredProduct,
      this.phone,
      this.dob,
      this.email,
      this.proofOfAddress,
      this.proofOfId,
      this.bvn,
      this.branchName,
      this.branchId,
      this.referrerName,
      this.referrerAccountNumber,
      this.channel,
      this.uniqueReferralNumber,
      this.address,
      this.idDetails})
      : super._();
  @override
  BancassuranceIndividualReferral rebuild(
          void Function(BancassuranceIndividualReferralBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BancassuranceIndividualReferralBuilder toBuilder() =>
      BancassuranceIndividualReferralBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BancassuranceIndividualReferral &&
        customerName == other.customerName &&
        referredProduct == other.referredProduct &&
        phone == other.phone &&
        dob == other.dob &&
        email == other.email &&
        proofOfAddress == other.proofOfAddress &&
        proofOfId == other.proofOfId &&
        bvn == other.bvn &&
        branchName == other.branchName &&
        branchId == other.branchId &&
        referrerName == other.referrerName &&
        referrerAccountNumber == other.referrerAccountNumber &&
        channel == other.channel &&
        uniqueReferralNumber == other.uniqueReferralNumber &&
        address == other.address &&
        idDetails == other.idDetails;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, customerName.hashCode);
    _$hash = $jc(_$hash, referredProduct.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, dob.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, proofOfAddress.hashCode);
    _$hash = $jc(_$hash, proofOfId.hashCode);
    _$hash = $jc(_$hash, bvn.hashCode);
    _$hash = $jc(_$hash, branchName.hashCode);
    _$hash = $jc(_$hash, branchId.hashCode);
    _$hash = $jc(_$hash, referrerName.hashCode);
    _$hash = $jc(_$hash, referrerAccountNumber.hashCode);
    _$hash = $jc(_$hash, channel.hashCode);
    _$hash = $jc(_$hash, uniqueReferralNumber.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, idDetails.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BancassuranceIndividualReferral')
          ..add('customerName', customerName)
          ..add('referredProduct', referredProduct)
          ..add('phone', phone)
          ..add('dob', dob)
          ..add('email', email)
          ..add('proofOfAddress', proofOfAddress)
          ..add('proofOfId', proofOfId)
          ..add('bvn', bvn)
          ..add('branchName', branchName)
          ..add('branchId', branchId)
          ..add('referrerName', referrerName)
          ..add('referrerAccountNumber', referrerAccountNumber)
          ..add('channel', channel)
          ..add('uniqueReferralNumber', uniqueReferralNumber)
          ..add('address', address)
          ..add('idDetails', idDetails))
        .toString();
  }
}

class BancassuranceIndividualReferralBuilder
    implements
        Builder<BancassuranceIndividualReferral,
            BancassuranceIndividualReferralBuilder> {
  _$BancassuranceIndividualReferral? _$v;

  String? _customerName;
  String? get customerName => _$this._customerName;
  set customerName(String? customerName) => _$this._customerName = customerName;

  String? _referredProduct;
  String? get referredProduct => _$this._referredProduct;
  set referredProduct(String? referredProduct) =>
      _$this._referredProduct = referredProduct;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _dob;
  String? get dob => _$this._dob;
  set dob(String? dob) => _$this._dob = dob;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _proofOfAddress;
  String? get proofOfAddress => _$this._proofOfAddress;
  set proofOfAddress(String? proofOfAddress) =>
      _$this._proofOfAddress = proofOfAddress;

  String? _proofOfId;
  String? get proofOfId => _$this._proofOfId;
  set proofOfId(String? proofOfId) => _$this._proofOfId = proofOfId;

  String? _bvn;
  String? get bvn => _$this._bvn;
  set bvn(String? bvn) => _$this._bvn = bvn;

  String? _branchName;
  String? get branchName => _$this._branchName;
  set branchName(String? branchName) => _$this._branchName = branchName;

  String? _branchId;
  String? get branchId => _$this._branchId;
  set branchId(String? branchId) => _$this._branchId = branchId;

  String? _referrerName;
  String? get referrerName => _$this._referrerName;
  set referrerName(String? referrerName) => _$this._referrerName = referrerName;

  num? _referrerAccountNumber;
  num? get referrerAccountNumber => _$this._referrerAccountNumber;
  set referrerAccountNumber(num? referrerAccountNumber) =>
      _$this._referrerAccountNumber = referrerAccountNumber;

  BancassuranceIndividualReferralChannelEnum? _channel;
  BancassuranceIndividualReferralChannelEnum? get channel => _$this._channel;
  set channel(BancassuranceIndividualReferralChannelEnum? channel) =>
      _$this._channel = channel;

  String? _uniqueReferralNumber;
  String? get uniqueReferralNumber => _$this._uniqueReferralNumber;
  set uniqueReferralNumber(String? uniqueReferralNumber) =>
      _$this._uniqueReferralNumber = uniqueReferralNumber;

  Address? _address;
  Address? get address => _$this._address;
  set address(Address? address) => _$this._address = address;

  IdDetailsBuilder? _idDetails;
  IdDetailsBuilder get idDetails => _$this._idDetails ??= IdDetailsBuilder();
  set idDetails(IdDetailsBuilder? idDetails) => _$this._idDetails = idDetails;

  BancassuranceIndividualReferralBuilder() {
    BancassuranceIndividualReferral._defaults(this);
  }

  BancassuranceIndividualReferralBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _customerName = $v.customerName;
      _referredProduct = $v.referredProduct;
      _phone = $v.phone;
      _dob = $v.dob;
      _email = $v.email;
      _proofOfAddress = $v.proofOfAddress;
      _proofOfId = $v.proofOfId;
      _bvn = $v.bvn;
      _branchName = $v.branchName;
      _branchId = $v.branchId;
      _referrerName = $v.referrerName;
      _referrerAccountNumber = $v.referrerAccountNumber;
      _channel = $v.channel;
      _uniqueReferralNumber = $v.uniqueReferralNumber;
      _address = $v.address;
      _idDetails = $v.idDetails?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BancassuranceIndividualReferral other) {
    _$v = other as _$BancassuranceIndividualReferral;
  }

  @override
  void update(void Function(BancassuranceIndividualReferralBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BancassuranceIndividualReferral build() => _build();

  _$BancassuranceIndividualReferral _build() {
    _$BancassuranceIndividualReferral _$result;
    try {
      _$result = _$v ??
          _$BancassuranceIndividualReferral._(
            customerName: customerName,
            referredProduct: referredProduct,
            phone: phone,
            dob: dob,
            email: email,
            proofOfAddress: proofOfAddress,
            proofOfId: proofOfId,
            bvn: bvn,
            branchName: branchName,
            branchId: branchId,
            referrerName: referrerName,
            referrerAccountNumber: referrerAccountNumber,
            channel: channel,
            uniqueReferralNumber: uniqueReferralNumber,
            address: address,
            idDetails: _idDetails?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'idDetails';
        _idDetails?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'BancassuranceIndividualReferral', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
