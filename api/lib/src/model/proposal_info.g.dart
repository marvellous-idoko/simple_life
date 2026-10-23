// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'proposal_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProposalInfo extends ProposalInfo {
  @override
  final String? documentId;
  @override
  final String? date;
  @override
  final String? productName;
  @override
  final String? company;
  @override
  final String? policyHolder;
  @override
  final num? premium;
  @override
  final num? paymentCode;
  @override
  final String? underwritingUrl;

  factory _$ProposalInfo([void Function(ProposalInfoBuilder)? updates]) =>
      (ProposalInfoBuilder()..update(updates))._build();

  _$ProposalInfo._(
      {this.documentId,
      this.date,
      this.productName,
      this.company,
      this.policyHolder,
      this.premium,
      this.paymentCode,
      this.underwritingUrl})
      : super._();
  @override
  ProposalInfo rebuild(void Function(ProposalInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProposalInfoBuilder toBuilder() => ProposalInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProposalInfo &&
        documentId == other.documentId &&
        date == other.date &&
        productName == other.productName &&
        company == other.company &&
        policyHolder == other.policyHolder &&
        premium == other.premium &&
        paymentCode == other.paymentCode &&
        underwritingUrl == other.underwritingUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, documentId.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, productName.hashCode);
    _$hash = $jc(_$hash, company.hashCode);
    _$hash = $jc(_$hash, policyHolder.hashCode);
    _$hash = $jc(_$hash, premium.hashCode);
    _$hash = $jc(_$hash, paymentCode.hashCode);
    _$hash = $jc(_$hash, underwritingUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProposalInfo')
          ..add('documentId', documentId)
          ..add('date', date)
          ..add('productName', productName)
          ..add('company', company)
          ..add('policyHolder', policyHolder)
          ..add('premium', premium)
          ..add('paymentCode', paymentCode)
          ..add('underwritingUrl', underwritingUrl))
        .toString();
  }
}

class ProposalInfoBuilder
    implements Builder<ProposalInfo, ProposalInfoBuilder> {
  _$ProposalInfo? _$v;

  String? _documentId;
  String? get documentId => _$this._documentId;
  set documentId(String? documentId) => _$this._documentId = documentId;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _productName;
  String? get productName => _$this._productName;
  set productName(String? productName) => _$this._productName = productName;

  String? _company;
  String? get company => _$this._company;
  set company(String? company) => _$this._company = company;

  String? _policyHolder;
  String? get policyHolder => _$this._policyHolder;
  set policyHolder(String? policyHolder) => _$this._policyHolder = policyHolder;

  num? _premium;
  num? get premium => _$this._premium;
  set premium(num? premium) => _$this._premium = premium;

  num? _paymentCode;
  num? get paymentCode => _$this._paymentCode;
  set paymentCode(num? paymentCode) => _$this._paymentCode = paymentCode;

  String? _underwritingUrl;
  String? get underwritingUrl => _$this._underwritingUrl;
  set underwritingUrl(String? underwritingUrl) =>
      _$this._underwritingUrl = underwritingUrl;

  ProposalInfoBuilder() {
    ProposalInfo._defaults(this);
  }

  ProposalInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _documentId = $v.documentId;
      _date = $v.date;
      _productName = $v.productName;
      _company = $v.company;
      _policyHolder = $v.policyHolder;
      _premium = $v.premium;
      _paymentCode = $v.paymentCode;
      _underwritingUrl = $v.underwritingUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProposalInfo other) {
    _$v = other as _$ProposalInfo;
  }

  @override
  void update(void Function(ProposalInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProposalInfo build() => _build();

  _$ProposalInfo _build() {
    final _$result = _$v ??
        _$ProposalInfo._(
          documentId: documentId,
          date: date,
          productName: productName,
          company: company,
          policyHolder: policyHolder,
          premium: premium,
          paymentCode: paymentCode,
          underwritingUrl: underwritingUrl,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
