// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_interests_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DocumentInterestsInner extends DocumentInterestsInner {
  @override
  final String? interestId;

  factory _$DocumentInterestsInner(
          [void Function(DocumentInterestsInnerBuilder)? updates]) =>
      (DocumentInterestsInnerBuilder()..update(updates))._build();

  _$DocumentInterestsInner._({this.interestId}) : super._();
  @override
  DocumentInterestsInner rebuild(
          void Function(DocumentInterestsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DocumentInterestsInnerBuilder toBuilder() =>
      DocumentInterestsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DocumentInterestsInner && interestId == other.interestId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, interestId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DocumentInterestsInner')
          ..add('interestId', interestId))
        .toString();
  }
}

class DocumentInterestsInnerBuilder
    implements Builder<DocumentInterestsInner, DocumentInterestsInnerBuilder> {
  _$DocumentInterestsInner? _$v;

  String? _interestId;
  String? get interestId => _$this._interestId;
  set interestId(String? interestId) => _$this._interestId = interestId;

  DocumentInterestsInnerBuilder() {
    DocumentInterestsInner._defaults(this);
  }

  DocumentInterestsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _interestId = $v.interestId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DocumentInterestsInner other) {
    _$v = other as _$DocumentInterestsInner;
  }

  @override
  void update(void Function(DocumentInterestsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DocumentInterestsInner build() => _build();

  _$DocumentInterestsInner _build() {
    final _$result = _$v ??
        _$DocumentInterestsInner._(
          interestId: interestId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
