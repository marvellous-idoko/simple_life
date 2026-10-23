// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_referral.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DocumentReferral extends DocumentReferral {
  @override
  final String? referralId;
  @override
  final String? ubaReferralId;
  @override
  final String? branchId;
  @override
  final String? branchName;
  @override
  final String? referrerName;
  @override
  final String? referrerAccountNumber;
  @override
  final String? documentId;
  @override
  final num? productId;

  factory _$DocumentReferral(
          [void Function(DocumentReferralBuilder)? updates]) =>
      (DocumentReferralBuilder()..update(updates))._build();

  _$DocumentReferral._(
      {this.referralId,
      this.ubaReferralId,
      this.branchId,
      this.branchName,
      this.referrerName,
      this.referrerAccountNumber,
      this.documentId,
      this.productId})
      : super._();
  @override
  DocumentReferral rebuild(void Function(DocumentReferralBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DocumentReferralBuilder toBuilder() =>
      DocumentReferralBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DocumentReferral &&
        referralId == other.referralId &&
        ubaReferralId == other.ubaReferralId &&
        branchId == other.branchId &&
        branchName == other.branchName &&
        referrerName == other.referrerName &&
        referrerAccountNumber == other.referrerAccountNumber &&
        documentId == other.documentId &&
        productId == other.productId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, referralId.hashCode);
    _$hash = $jc(_$hash, ubaReferralId.hashCode);
    _$hash = $jc(_$hash, branchId.hashCode);
    _$hash = $jc(_$hash, branchName.hashCode);
    _$hash = $jc(_$hash, referrerName.hashCode);
    _$hash = $jc(_$hash, referrerAccountNumber.hashCode);
    _$hash = $jc(_$hash, documentId.hashCode);
    _$hash = $jc(_$hash, productId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DocumentReferral')
          ..add('referralId', referralId)
          ..add('ubaReferralId', ubaReferralId)
          ..add('branchId', branchId)
          ..add('branchName', branchName)
          ..add('referrerName', referrerName)
          ..add('referrerAccountNumber', referrerAccountNumber)
          ..add('documentId', documentId)
          ..add('productId', productId))
        .toString();
  }
}

class DocumentReferralBuilder
    implements Builder<DocumentReferral, DocumentReferralBuilder> {
  _$DocumentReferral? _$v;

  String? _referralId;
  String? get referralId => _$this._referralId;
  set referralId(String? referralId) => _$this._referralId = referralId;

  String? _ubaReferralId;
  String? get ubaReferralId => _$this._ubaReferralId;
  set ubaReferralId(String? ubaReferralId) =>
      _$this._ubaReferralId = ubaReferralId;

  String? _branchId;
  String? get branchId => _$this._branchId;
  set branchId(String? branchId) => _$this._branchId = branchId;

  String? _branchName;
  String? get branchName => _$this._branchName;
  set branchName(String? branchName) => _$this._branchName = branchName;

  String? _referrerName;
  String? get referrerName => _$this._referrerName;
  set referrerName(String? referrerName) => _$this._referrerName = referrerName;

  String? _referrerAccountNumber;
  String? get referrerAccountNumber => _$this._referrerAccountNumber;
  set referrerAccountNumber(String? referrerAccountNumber) =>
      _$this._referrerAccountNumber = referrerAccountNumber;

  String? _documentId;
  String? get documentId => _$this._documentId;
  set documentId(String? documentId) => _$this._documentId = documentId;

  num? _productId;
  num? get productId => _$this._productId;
  set productId(num? productId) => _$this._productId = productId;

  DocumentReferralBuilder() {
    DocumentReferral._defaults(this);
  }

  DocumentReferralBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _referralId = $v.referralId;
      _ubaReferralId = $v.ubaReferralId;
      _branchId = $v.branchId;
      _branchName = $v.branchName;
      _referrerName = $v.referrerName;
      _referrerAccountNumber = $v.referrerAccountNumber;
      _documentId = $v.documentId;
      _productId = $v.productId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DocumentReferral other) {
    _$v = other as _$DocumentReferral;
  }

  @override
  void update(void Function(DocumentReferralBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DocumentReferral build() => _build();

  _$DocumentReferral _build() {
    final _$result = _$v ??
        _$DocumentReferral._(
          referralId: referralId,
          ubaReferralId: ubaReferralId,
          branchId: branchId,
          branchName: branchName,
          referrerName: referrerName,
          referrerAccountNumber: referrerAccountNumber,
          documentId: documentId,
          productId: productId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
