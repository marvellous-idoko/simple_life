// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Document extends Document {
  @override
  final String? customerId;
  @override
  final String? policyName;
  @override
  final String? policyId;
  @override
  final String? policyClass;
  @override
  final BuiltList<DocumentInterestsInner>? interests;

  factory _$Document([void Function(DocumentBuilder)? updates]) =>
      (DocumentBuilder()..update(updates))._build();

  _$Document._(
      {this.customerId,
      this.policyName,
      this.policyId,
      this.policyClass,
      this.interests})
      : super._();
  @override
  Document rebuild(void Function(DocumentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DocumentBuilder toBuilder() => DocumentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Document &&
        customerId == other.customerId &&
        policyName == other.policyName &&
        policyId == other.policyId &&
        policyClass == other.policyClass &&
        interests == other.interests;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, policyName.hashCode);
    _$hash = $jc(_$hash, policyId.hashCode);
    _$hash = $jc(_$hash, policyClass.hashCode);
    _$hash = $jc(_$hash, interests.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Document')
          ..add('customerId', customerId)
          ..add('policyName', policyName)
          ..add('policyId', policyId)
          ..add('policyClass', policyClass)
          ..add('interests', interests))
        .toString();
  }
}

class DocumentBuilder implements Builder<Document, DocumentBuilder> {
  _$Document? _$v;

  String? _customerId;
  String? get customerId => _$this._customerId;
  set customerId(String? customerId) => _$this._customerId = customerId;

  String? _policyName;
  String? get policyName => _$this._policyName;
  set policyName(String? policyName) => _$this._policyName = policyName;

  String? _policyId;
  String? get policyId => _$this._policyId;
  set policyId(String? policyId) => _$this._policyId = policyId;

  String? _policyClass;
  String? get policyClass => _$this._policyClass;
  set policyClass(String? policyClass) => _$this._policyClass = policyClass;

  ListBuilder<DocumentInterestsInner>? _interests;
  ListBuilder<DocumentInterestsInner> get interests =>
      _$this._interests ??= ListBuilder<DocumentInterestsInner>();
  set interests(ListBuilder<DocumentInterestsInner>? interests) =>
      _$this._interests = interests;

  DocumentBuilder() {
    Document._defaults(this);
  }

  DocumentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _customerId = $v.customerId;
      _policyName = $v.policyName;
      _policyId = $v.policyId;
      _policyClass = $v.policyClass;
      _interests = $v.interests?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Document other) {
    _$v = other as _$Document;
  }

  @override
  void update(void Function(DocumentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Document build() => _build();

  _$Document _build() {
    _$Document _$result;
    try {
      _$result = _$v ??
          _$Document._(
            customerId: customerId,
            policyName: policyName,
            policyId: policyId,
            policyClass: policyClass,
            interests: _interests?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'interests';
        _interests?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Document', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
