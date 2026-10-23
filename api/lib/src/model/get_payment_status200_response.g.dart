// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_payment_status200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetPaymentStatus200Response extends GetPaymentStatus200Response {
  @override
  final bool status;
  @override
  final String policyType;
  @override
  final String documentId;
  @override
  final String customerId;
  @override
  final String? policyId;
  @override
  final String? policyholderId;
  @override
  final String? productId;
  @override
  final String? date;
  @override
  final String? customerType;
  @override
  final String? company;
  @override
  final num premium;

  factory _$GetPaymentStatus200Response(
          [void Function(GetPaymentStatus200ResponseBuilder)? updates]) =>
      (GetPaymentStatus200ResponseBuilder()..update(updates))._build();

  _$GetPaymentStatus200Response._(
      {required this.status,
      required this.policyType,
      required this.documentId,
      required this.customerId,
      this.policyId,
      this.policyholderId,
      this.productId,
      this.date,
      this.customerType,
      this.company,
      required this.premium})
      : super._();
  @override
  GetPaymentStatus200Response rebuild(
          void Function(GetPaymentStatus200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetPaymentStatus200ResponseBuilder toBuilder() =>
      GetPaymentStatus200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetPaymentStatus200Response &&
        status == other.status &&
        policyType == other.policyType &&
        documentId == other.documentId &&
        customerId == other.customerId &&
        policyId == other.policyId &&
        policyholderId == other.policyholderId &&
        productId == other.productId &&
        date == other.date &&
        customerType == other.customerType &&
        company == other.company &&
        premium == other.premium;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, policyType.hashCode);
    _$hash = $jc(_$hash, documentId.hashCode);
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, policyId.hashCode);
    _$hash = $jc(_$hash, policyholderId.hashCode);
    _$hash = $jc(_$hash, productId.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, customerType.hashCode);
    _$hash = $jc(_$hash, company.hashCode);
    _$hash = $jc(_$hash, premium.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetPaymentStatus200Response')
          ..add('status', status)
          ..add('policyType', policyType)
          ..add('documentId', documentId)
          ..add('customerId', customerId)
          ..add('policyId', policyId)
          ..add('policyholderId', policyholderId)
          ..add('productId', productId)
          ..add('date', date)
          ..add('customerType', customerType)
          ..add('company', company)
          ..add('premium', premium))
        .toString();
  }
}

class GetPaymentStatus200ResponseBuilder
    implements
        Builder<GetPaymentStatus200Response,
            GetPaymentStatus200ResponseBuilder> {
  _$GetPaymentStatus200Response? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _policyType;
  String? get policyType => _$this._policyType;
  set policyType(String? policyType) => _$this._policyType = policyType;

  String? _documentId;
  String? get documentId => _$this._documentId;
  set documentId(String? documentId) => _$this._documentId = documentId;

  String? _customerId;
  String? get customerId => _$this._customerId;
  set customerId(String? customerId) => _$this._customerId = customerId;

  String? _policyId;
  String? get policyId => _$this._policyId;
  set policyId(String? policyId) => _$this._policyId = policyId;

  String? _policyholderId;
  String? get policyholderId => _$this._policyholderId;
  set policyholderId(String? policyholderId) =>
      _$this._policyholderId = policyholderId;

  String? _productId;
  String? get productId => _$this._productId;
  set productId(String? productId) => _$this._productId = productId;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _customerType;
  String? get customerType => _$this._customerType;
  set customerType(String? customerType) => _$this._customerType = customerType;

  String? _company;
  String? get company => _$this._company;
  set company(String? company) => _$this._company = company;

  num? _premium;
  num? get premium => _$this._premium;
  set premium(num? premium) => _$this._premium = premium;

  GetPaymentStatus200ResponseBuilder() {
    GetPaymentStatus200Response._defaults(this);
  }

  GetPaymentStatus200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _policyType = $v.policyType;
      _documentId = $v.documentId;
      _customerId = $v.customerId;
      _policyId = $v.policyId;
      _policyholderId = $v.policyholderId;
      _productId = $v.productId;
      _date = $v.date;
      _customerType = $v.customerType;
      _company = $v.company;
      _premium = $v.premium;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetPaymentStatus200Response other) {
    _$v = other as _$GetPaymentStatus200Response;
  }

  @override
  void update(void Function(GetPaymentStatus200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetPaymentStatus200Response build() => _build();

  _$GetPaymentStatus200Response _build() {
    final _$result = _$v ??
        _$GetPaymentStatus200Response._(
          status: BuiltValueNullFieldError.checkNotNull(
              status, r'GetPaymentStatus200Response', 'status'),
          policyType: BuiltValueNullFieldError.checkNotNull(
              policyType, r'GetPaymentStatus200Response', 'policyType'),
          documentId: BuiltValueNullFieldError.checkNotNull(
              documentId, r'GetPaymentStatus200Response', 'documentId'),
          customerId: BuiltValueNullFieldError.checkNotNull(
              customerId, r'GetPaymentStatus200Response', 'customerId'),
          policyId: policyId,
          policyholderId: policyholderId,
          productId: productId,
          date: date,
          customerType: customerType,
          company: company,
          premium: BuiltValueNullFieldError.checkNotNull(
              premium, r'GetPaymentStatus200Response', 'premium'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
