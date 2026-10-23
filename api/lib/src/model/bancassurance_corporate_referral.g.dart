// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bancassurance_corporate_referral.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BancassuranceCorporateReferralChannelEnum
    _$bancassuranceCorporateReferralChannelEnum_branch =
    const BancassuranceCorporateReferralChannelEnum._('branch');
const BancassuranceCorporateReferralChannelEnum
    _$bancassuranceCorporateReferralChannelEnum_USSD =
    const BancassuranceCorporateReferralChannelEnum._('USSD');
const BancassuranceCorporateReferralChannelEnum
    _$bancassuranceCorporateReferralChannelEnum_internetBanking =
    const BancassuranceCorporateReferralChannelEnum._('internetBanking');
const BancassuranceCorporateReferralChannelEnum
    _$bancassuranceCorporateReferralChannelEnum_mobileApp =
    const BancassuranceCorporateReferralChannelEnum._('mobileApp');
const BancassuranceCorporateReferralChannelEnum
    _$bancassuranceCorporateReferralChannelEnum_leo =
    const BancassuranceCorporateReferralChannelEnum._('leo');

BancassuranceCorporateReferralChannelEnum
    _$bancassuranceCorporateReferralChannelEnumValueOf(String name) {
  switch (name) {
    case 'branch':
      return _$bancassuranceCorporateReferralChannelEnum_branch;
    case 'USSD':
      return _$bancassuranceCorporateReferralChannelEnum_USSD;
    case 'internetBanking':
      return _$bancassuranceCorporateReferralChannelEnum_internetBanking;
    case 'mobileApp':
      return _$bancassuranceCorporateReferralChannelEnum_mobileApp;
    case 'leo':
      return _$bancassuranceCorporateReferralChannelEnum_leo;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<BancassuranceCorporateReferralChannelEnum>
    _$bancassuranceCorporateReferralChannelEnumValues = BuiltSet<
        BancassuranceCorporateReferralChannelEnum>(const <BancassuranceCorporateReferralChannelEnum>[
  _$bancassuranceCorporateReferralChannelEnum_branch,
  _$bancassuranceCorporateReferralChannelEnum_USSD,
  _$bancassuranceCorporateReferralChannelEnum_internetBanking,
  _$bancassuranceCorporateReferralChannelEnum_mobileApp,
  _$bancassuranceCorporateReferralChannelEnum_leo,
]);

Serializer<BancassuranceCorporateReferralChannelEnum>
    _$bancassuranceCorporateReferralChannelEnumSerializer =
    _$BancassuranceCorporateReferralChannelEnumSerializer();

class _$BancassuranceCorporateReferralChannelEnumSerializer
    implements PrimitiveSerializer<BancassuranceCorporateReferralChannelEnum> {
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
    BancassuranceCorporateReferralChannelEnum
  ];
  @override
  final String wireName = 'BancassuranceCorporateReferralChannelEnum';

  @override
  Object serialize(Serializers serializers,
          BancassuranceCorporateReferralChannelEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  BancassuranceCorporateReferralChannelEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      BancassuranceCorporateReferralChannelEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$BancassuranceCorporateReferral extends BancassuranceCorporateReferral {
  @override
  final String? customerName;
  @override
  final String? referredProduct;
  @override
  final String? phone;
  @override
  final String? email;
  @override
  final String? proofOfAddress;
  @override
  final String? proofOfId;
  @override
  final String? cacRegistrationNumber;
  @override
  final String? dob;
  @override
  final String? branchName;
  @override
  final String? branchId;
  @override
  final String? referrerName;
  @override
  final num? referrerAccountNumber;
  @override
  final BancassuranceCorporateReferralChannelEnum? channel;
  @override
  final String? uniqueReferralNumber;
  @override
  final Address? address;
  @override
  final IdDetails? idDetails;

  factory _$BancassuranceCorporateReferral(
          [void Function(BancassuranceCorporateReferralBuilder)? updates]) =>
      (BancassuranceCorporateReferralBuilder()..update(updates))._build();

  _$BancassuranceCorporateReferral._(
      {this.customerName,
      this.referredProduct,
      this.phone,
      this.email,
      this.proofOfAddress,
      this.proofOfId,
      this.cacRegistrationNumber,
      this.dob,
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
  BancassuranceCorporateReferral rebuild(
          void Function(BancassuranceCorporateReferralBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BancassuranceCorporateReferralBuilder toBuilder() =>
      BancassuranceCorporateReferralBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BancassuranceCorporateReferral &&
        customerName == other.customerName &&
        referredProduct == other.referredProduct &&
        phone == other.phone &&
        email == other.email &&
        proofOfAddress == other.proofOfAddress &&
        proofOfId == other.proofOfId &&
        cacRegistrationNumber == other.cacRegistrationNumber &&
        dob == other.dob &&
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
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, proofOfAddress.hashCode);
    _$hash = $jc(_$hash, proofOfId.hashCode);
    _$hash = $jc(_$hash, cacRegistrationNumber.hashCode);
    _$hash = $jc(_$hash, dob.hashCode);
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
    return (newBuiltValueToStringHelper(r'BancassuranceCorporateReferral')
          ..add('customerName', customerName)
          ..add('referredProduct', referredProduct)
          ..add('phone', phone)
          ..add('email', email)
          ..add('proofOfAddress', proofOfAddress)
          ..add('proofOfId', proofOfId)
          ..add('cacRegistrationNumber', cacRegistrationNumber)
          ..add('dob', dob)
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

class BancassuranceCorporateReferralBuilder
    implements
        Builder<BancassuranceCorporateReferral,
            BancassuranceCorporateReferralBuilder> {
  _$BancassuranceCorporateReferral? _$v;

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

  String? _cacRegistrationNumber;
  String? get cacRegistrationNumber => _$this._cacRegistrationNumber;
  set cacRegistrationNumber(String? cacRegistrationNumber) =>
      _$this._cacRegistrationNumber = cacRegistrationNumber;

  String? _dob;
  String? get dob => _$this._dob;
  set dob(String? dob) => _$this._dob = dob;

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

  BancassuranceCorporateReferralChannelEnum? _channel;
  BancassuranceCorporateReferralChannelEnum? get channel => _$this._channel;
  set channel(BancassuranceCorporateReferralChannelEnum? channel) =>
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

  BancassuranceCorporateReferralBuilder() {
    BancassuranceCorporateReferral._defaults(this);
  }

  BancassuranceCorporateReferralBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _customerName = $v.customerName;
      _referredProduct = $v.referredProduct;
      _phone = $v.phone;
      _email = $v.email;
      _proofOfAddress = $v.proofOfAddress;
      _proofOfId = $v.proofOfId;
      _cacRegistrationNumber = $v.cacRegistrationNumber;
      _dob = $v.dob;
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
  void replace(BancassuranceCorporateReferral other) {
    _$v = other as _$BancassuranceCorporateReferral;
  }

  @override
  void update(void Function(BancassuranceCorporateReferralBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BancassuranceCorporateReferral build() => _build();

  _$BancassuranceCorporateReferral _build() {
    _$BancassuranceCorporateReferral _$result;
    try {
      _$result = _$v ??
          _$BancassuranceCorporateReferral._(
            customerName: customerName,
            referredProduct: referredProduct,
            phone: phone,
            email: email,
            proofOfAddress: proofOfAddress,
            proofOfId: proofOfId,
            cacRegistrationNumber: cacRegistrationNumber,
            dob: dob,
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
            r'BancassuranceCorporateReferral', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
