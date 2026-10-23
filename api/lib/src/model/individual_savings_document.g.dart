// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'individual_savings_document.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IndividualSavingsDocument extends IndividualSavingsDocument {
  @override
  final num contribution;
  @override
  final String customerId;
  @override
  final String policyName;
  @override
  final String policyId;
  @override
  final String personId;
  @override
  final String policyClass;
  @override
  final IndividualProtectionDocumentBasic basic;
  @override
  final BuiltList<Rider> riders;
  @override
  final BuiltList<BeneficiaryShare> shares;

  factory _$IndividualSavingsDocument(
          [void Function(IndividualSavingsDocumentBuilder)? updates]) =>
      (IndividualSavingsDocumentBuilder()..update(updates))._build();

  _$IndividualSavingsDocument._(
      {required this.contribution,
      required this.customerId,
      required this.policyName,
      required this.policyId,
      required this.personId,
      required this.policyClass,
      required this.basic,
      required this.riders,
      required this.shares})
      : super._();
  @override
  IndividualSavingsDocument rebuild(
          void Function(IndividualSavingsDocumentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IndividualSavingsDocumentBuilder toBuilder() =>
      IndividualSavingsDocumentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IndividualSavingsDocument &&
        contribution == other.contribution &&
        customerId == other.customerId &&
        policyName == other.policyName &&
        policyId == other.policyId &&
        personId == other.personId &&
        policyClass == other.policyClass &&
        basic == other.basic &&
        riders == other.riders &&
        shares == other.shares;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, contribution.hashCode);
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, policyName.hashCode);
    _$hash = $jc(_$hash, policyId.hashCode);
    _$hash = $jc(_$hash, personId.hashCode);
    _$hash = $jc(_$hash, policyClass.hashCode);
    _$hash = $jc(_$hash, basic.hashCode);
    _$hash = $jc(_$hash, riders.hashCode);
    _$hash = $jc(_$hash, shares.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IndividualSavingsDocument')
          ..add('contribution', contribution)
          ..add('customerId', customerId)
          ..add('policyName', policyName)
          ..add('policyId', policyId)
          ..add('personId', personId)
          ..add('policyClass', policyClass)
          ..add('basic', basic)
          ..add('riders', riders)
          ..add('shares', shares))
        .toString();
  }
}

class IndividualSavingsDocumentBuilder
    implements
        Builder<IndividualSavingsDocument, IndividualSavingsDocumentBuilder>,
        IndividualProtectionDocumentBuilder {
  _$IndividualSavingsDocument? _$v;

  num? _contribution;
  num? get contribution => _$this._contribution;
  set contribution(covariant num? contribution) =>
      _$this._contribution = contribution;

  String? _customerId;
  String? get customerId => _$this._customerId;
  set customerId(covariant String? customerId) =>
      _$this._customerId = customerId;

  String? _policyName;
  String? get policyName => _$this._policyName;
  set policyName(covariant String? policyName) =>
      _$this._policyName = policyName;

  String? _policyId;
  String? get policyId => _$this._policyId;
  set policyId(covariant String? policyId) => _$this._policyId = policyId;

  String? _personId;
  String? get personId => _$this._personId;
  set personId(covariant String? personId) => _$this._personId = personId;

  String? _policyClass;
  String? get policyClass => _$this._policyClass;
  set policyClass(covariant String? policyClass) =>
      _$this._policyClass = policyClass;

  IndividualProtectionDocumentBasicBuilder? _basic;
  IndividualProtectionDocumentBasicBuilder get basic =>
      _$this._basic ??= IndividualProtectionDocumentBasicBuilder();
  set basic(covariant IndividualProtectionDocumentBasicBuilder? basic) =>
      _$this._basic = basic;

  ListBuilder<Rider>? _riders;
  ListBuilder<Rider> get riders => _$this._riders ??= ListBuilder<Rider>();
  set riders(covariant ListBuilder<Rider>? riders) => _$this._riders = riders;

  ListBuilder<BeneficiaryShare>? _shares;
  ListBuilder<BeneficiaryShare> get shares =>
      _$this._shares ??= ListBuilder<BeneficiaryShare>();
  set shares(covariant ListBuilder<BeneficiaryShare>? shares) =>
      _$this._shares = shares;

  IndividualSavingsDocumentBuilder() {
    IndividualSavingsDocument._defaults(this);
  }

  IndividualSavingsDocumentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _contribution = $v.contribution;
      _customerId = $v.customerId;
      _policyName = $v.policyName;
      _policyId = $v.policyId;
      _personId = $v.personId;
      _policyClass = $v.policyClass;
      _basic = $v.basic.toBuilder();
      _riders = $v.riders.toBuilder();
      _shares = $v.shares.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant IndividualSavingsDocument other) {
    _$v = other as _$IndividualSavingsDocument;
  }

  @override
  void update(void Function(IndividualSavingsDocumentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IndividualSavingsDocument build() => _build();

  _$IndividualSavingsDocument _build() {
    _$IndividualSavingsDocument _$result;
    try {
      _$result = _$v ??
          _$IndividualSavingsDocument._(
            contribution: BuiltValueNullFieldError.checkNotNull(
                contribution, r'IndividualSavingsDocument', 'contribution'),
            customerId: BuiltValueNullFieldError.checkNotNull(
                customerId, r'IndividualSavingsDocument', 'customerId'),
            policyName: BuiltValueNullFieldError.checkNotNull(
                policyName, r'IndividualSavingsDocument', 'policyName'),
            policyId: BuiltValueNullFieldError.checkNotNull(
                policyId, r'IndividualSavingsDocument', 'policyId'),
            personId: BuiltValueNullFieldError.checkNotNull(
                personId, r'IndividualSavingsDocument', 'personId'),
            policyClass: BuiltValueNullFieldError.checkNotNull(
                policyClass, r'IndividualSavingsDocument', 'policyClass'),
            basic: basic.build(),
            riders: riders.build(),
            shares: shares.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'basic';
        basic.build();
        _$failedField = 'riders';
        riders.build();
        _$failedField = 'shares';
        shares.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'IndividualSavingsDocument', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
