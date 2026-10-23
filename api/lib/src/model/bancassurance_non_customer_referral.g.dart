// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bancassurance_non_customer_referral.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BancassuranceNonCustomerReferralChannelEnum
    _$bancassuranceNonCustomerReferralChannelEnum_branch =
    const BancassuranceNonCustomerReferralChannelEnum._('branch');
const BancassuranceNonCustomerReferralChannelEnum
    _$bancassuranceNonCustomerReferralChannelEnum_USSD =
    const BancassuranceNonCustomerReferralChannelEnum._('USSD');
const BancassuranceNonCustomerReferralChannelEnum
    _$bancassuranceNonCustomerReferralChannelEnum_internetBanking =
    const BancassuranceNonCustomerReferralChannelEnum._('internetBanking');
const BancassuranceNonCustomerReferralChannelEnum
    _$bancassuranceNonCustomerReferralChannelEnum_mobileApp =
    const BancassuranceNonCustomerReferralChannelEnum._('mobileApp');
const BancassuranceNonCustomerReferralChannelEnum
    _$bancassuranceNonCustomerReferralChannelEnum_leo =
    const BancassuranceNonCustomerReferralChannelEnum._('leo');

BancassuranceNonCustomerReferralChannelEnum
    _$bancassuranceNonCustomerReferralChannelEnumValueOf(String name) {
  switch (name) {
    case 'branch':
      return _$bancassuranceNonCustomerReferralChannelEnum_branch;
    case 'USSD':
      return _$bancassuranceNonCustomerReferralChannelEnum_USSD;
    case 'internetBanking':
      return _$bancassuranceNonCustomerReferralChannelEnum_internetBanking;
    case 'mobileApp':
      return _$bancassuranceNonCustomerReferralChannelEnum_mobileApp;
    case 'leo':
      return _$bancassuranceNonCustomerReferralChannelEnum_leo;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<BancassuranceNonCustomerReferralChannelEnum>
    _$bancassuranceNonCustomerReferralChannelEnumValues = BuiltSet<
        BancassuranceNonCustomerReferralChannelEnum>(const <BancassuranceNonCustomerReferralChannelEnum>[
  _$bancassuranceNonCustomerReferralChannelEnum_branch,
  _$bancassuranceNonCustomerReferralChannelEnum_USSD,
  _$bancassuranceNonCustomerReferralChannelEnum_internetBanking,
  _$bancassuranceNonCustomerReferralChannelEnum_mobileApp,
  _$bancassuranceNonCustomerReferralChannelEnum_leo,
]);

Serializer<BancassuranceNonCustomerReferralChannelEnum>
    _$bancassuranceNonCustomerReferralChannelEnumSerializer =
    _$BancassuranceNonCustomerReferralChannelEnumSerializer();

class _$BancassuranceNonCustomerReferralChannelEnumSerializer
    implements
        PrimitiveSerializer<BancassuranceNonCustomerReferralChannelEnum> {
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
    BancassuranceNonCustomerReferralChannelEnum
  ];
  @override
  final String wireName = 'BancassuranceNonCustomerReferralChannelEnum';

  @override
  Object serialize(Serializers serializers,
          BancassuranceNonCustomerReferralChannelEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  BancassuranceNonCustomerReferralChannelEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      BancassuranceNonCustomerReferralChannelEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$BancassuranceNonCustomerReferral
    extends BancassuranceNonCustomerReferral {
  @override
  final String? customerName;
  @override
  final String? referredProduct;
  @override
  final String? phone;
  @override
  final String? email;
  @override
  final String? branchName;
  @override
  final String? branchId;
  @override
  final String? referrerName;
  @override
  final num? referrerAccountNumber;
  @override
  final BancassuranceNonCustomerReferralChannelEnum? channel;
  @override
  final String? uniqueReferralNumber;

  factory _$BancassuranceNonCustomerReferral(
          [void Function(BancassuranceNonCustomerReferralBuilder)? updates]) =>
      (BancassuranceNonCustomerReferralBuilder()..update(updates))._build();

  _$BancassuranceNonCustomerReferral._(
      {this.customerName,
      this.referredProduct,
      this.phone,
      this.email,
      this.branchName,
      this.branchId,
      this.referrerName,
      this.referrerAccountNumber,
      this.channel,
      this.uniqueReferralNumber})
      : super._();
  @override
  BancassuranceNonCustomerReferral rebuild(
          void Function(BancassuranceNonCustomerReferralBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BancassuranceNonCustomerReferralBuilder toBuilder() =>
      BancassuranceNonCustomerReferralBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BancassuranceNonCustomerReferral &&
        customerName == other.customerName &&
        referredProduct == other.referredProduct &&
        phone == other.phone &&
        email == other.email &&
        branchName == other.branchName &&
        branchId == other.branchId &&
        referrerName == other.referrerName &&
        referrerAccountNumber == other.referrerAccountNumber &&
        channel == other.channel &&
        uniqueReferralNumber == other.uniqueReferralNumber;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, customerName.hashCode);
    _$hash = $jc(_$hash, referredProduct.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, branchName.hashCode);
    _$hash = $jc(_$hash, branchId.hashCode);
    _$hash = $jc(_$hash, referrerName.hashCode);
    _$hash = $jc(_$hash, referrerAccountNumber.hashCode);
    _$hash = $jc(_$hash, channel.hashCode);
    _$hash = $jc(_$hash, uniqueReferralNumber.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BancassuranceNonCustomerReferral')
          ..add('customerName', customerName)
          ..add('referredProduct', referredProduct)
          ..add('phone', phone)
          ..add('email', email)
          ..add('branchName', branchName)
          ..add('branchId', branchId)
          ..add('referrerName', referrerName)
          ..add('referrerAccountNumber', referrerAccountNumber)
          ..add('channel', channel)
          ..add('uniqueReferralNumber', uniqueReferralNumber))
        .toString();
  }
}

class BancassuranceNonCustomerReferralBuilder
    implements
        Builder<BancassuranceNonCustomerReferral,
            BancassuranceNonCustomerReferralBuilder> {
  _$BancassuranceNonCustomerReferral? _$v;

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

  BancassuranceNonCustomerReferralChannelEnum? _channel;
  BancassuranceNonCustomerReferralChannelEnum? get channel => _$this._channel;
  set channel(BancassuranceNonCustomerReferralChannelEnum? channel) =>
      _$this._channel = channel;

  String? _uniqueReferralNumber;
  String? get uniqueReferralNumber => _$this._uniqueReferralNumber;
  set uniqueReferralNumber(String? uniqueReferralNumber) =>
      _$this._uniqueReferralNumber = uniqueReferralNumber;

  BancassuranceNonCustomerReferralBuilder() {
    BancassuranceNonCustomerReferral._defaults(this);
  }

  BancassuranceNonCustomerReferralBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _customerName = $v.customerName;
      _referredProduct = $v.referredProduct;
      _phone = $v.phone;
      _email = $v.email;
      _branchName = $v.branchName;
      _branchId = $v.branchId;
      _referrerName = $v.referrerName;
      _referrerAccountNumber = $v.referrerAccountNumber;
      _channel = $v.channel;
      _uniqueReferralNumber = $v.uniqueReferralNumber;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BancassuranceNonCustomerReferral other) {
    _$v = other as _$BancassuranceNonCustomerReferral;
  }

  @override
  void update(void Function(BancassuranceNonCustomerReferralBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BancassuranceNonCustomerReferral build() => _build();

  _$BancassuranceNonCustomerReferral _build() {
    final _$result = _$v ??
        _$BancassuranceNonCustomerReferral._(
          customerName: customerName,
          referredProduct: referredProduct,
          phone: phone,
          email: email,
          branchName: branchName,
          branchId: branchId,
          referrerName: referrerName,
          referrerAccountNumber: referrerAccountNumber,
          channel: channel,
          uniqueReferralNumber: uniqueReferralNumber,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
