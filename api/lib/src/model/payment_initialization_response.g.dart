// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_initialization_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PaymentInitializationResponse extends PaymentInitializationResponse {
  @override
  final num? amount;
  @override
  final num? premium;
  @override
  final String? callbackUrl;
  @override
  final String? email;
  @override
  final String? reference;
  @override
  final String? product;
  @override
  final String? policyHolder;
  @override
  final String? company;
  @override
  final String? key;

  factory _$PaymentInitializationResponse(
          [void Function(PaymentInitializationResponseBuilder)? updates]) =>
      (PaymentInitializationResponseBuilder()..update(updates))._build();

  _$PaymentInitializationResponse._(
      {this.amount,
      this.premium,
      this.callbackUrl,
      this.email,
      this.reference,
      this.product,
      this.policyHolder,
      this.company,
      this.key})
      : super._();
  @override
  PaymentInitializationResponse rebuild(
          void Function(PaymentInitializationResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaymentInitializationResponseBuilder toBuilder() =>
      PaymentInitializationResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaymentInitializationResponse &&
        amount == other.amount &&
        premium == other.premium &&
        callbackUrl == other.callbackUrl &&
        email == other.email &&
        reference == other.reference &&
        product == other.product &&
        policyHolder == other.policyHolder &&
        company == other.company &&
        key == other.key;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, premium.hashCode);
    _$hash = $jc(_$hash, callbackUrl.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, reference.hashCode);
    _$hash = $jc(_$hash, product.hashCode);
    _$hash = $jc(_$hash, policyHolder.hashCode);
    _$hash = $jc(_$hash, company.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PaymentInitializationResponse')
          ..add('amount', amount)
          ..add('premium', premium)
          ..add('callbackUrl', callbackUrl)
          ..add('email', email)
          ..add('reference', reference)
          ..add('product', product)
          ..add('policyHolder', policyHolder)
          ..add('company', company)
          ..add('key', key))
        .toString();
  }
}

class PaymentInitializationResponseBuilder
    implements
        Builder<PaymentInitializationResponse,
            PaymentInitializationResponseBuilder> {
  _$PaymentInitializationResponse? _$v;

  num? _amount;
  num? get amount => _$this._amount;
  set amount(num? amount) => _$this._amount = amount;

  num? _premium;
  num? get premium => _$this._premium;
  set premium(num? premium) => _$this._premium = premium;

  String? _callbackUrl;
  String? get callbackUrl => _$this._callbackUrl;
  set callbackUrl(String? callbackUrl) => _$this._callbackUrl = callbackUrl;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _reference;
  String? get reference => _$this._reference;
  set reference(String? reference) => _$this._reference = reference;

  String? _product;
  String? get product => _$this._product;
  set product(String? product) => _$this._product = product;

  String? _policyHolder;
  String? get policyHolder => _$this._policyHolder;
  set policyHolder(String? policyHolder) => _$this._policyHolder = policyHolder;

  String? _company;
  String? get company => _$this._company;
  set company(String? company) => _$this._company = company;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  PaymentInitializationResponseBuilder() {
    PaymentInitializationResponse._defaults(this);
  }

  PaymentInitializationResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _amount = $v.amount;
      _premium = $v.premium;
      _callbackUrl = $v.callbackUrl;
      _email = $v.email;
      _reference = $v.reference;
      _product = $v.product;
      _policyHolder = $v.policyHolder;
      _company = $v.company;
      _key = $v.key;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PaymentInitializationResponse other) {
    _$v = other as _$PaymentInitializationResponse;
  }

  @override
  void update(void Function(PaymentInitializationResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PaymentInitializationResponse build() => _build();

  _$PaymentInitializationResponse _build() {
    final _$result = _$v ??
        _$PaymentInitializationResponse._(
          amount: amount,
          premium: premium,
          callbackUrl: callbackUrl,
          email: email,
          reference: reference,
          product: product,
          policyHolder: policyHolder,
          company: company,
          key: key,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
