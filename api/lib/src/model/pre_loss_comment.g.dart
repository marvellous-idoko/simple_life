// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pre_loss_comment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PreLossComment extends PreLossComment {
  @override
  final String? prelossCommentId;
  @override
  final String? staffId;
  @override
  final String? staffName;
  @override
  final String? prelossComment;

  factory _$PreLossComment([void Function(PreLossCommentBuilder)? updates]) =>
      (PreLossCommentBuilder()..update(updates))._build();

  _$PreLossComment._(
      {this.prelossCommentId,
      this.staffId,
      this.staffName,
      this.prelossComment})
      : super._();
  @override
  PreLossComment rebuild(void Function(PreLossCommentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PreLossCommentBuilder toBuilder() => PreLossCommentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PreLossComment &&
        prelossCommentId == other.prelossCommentId &&
        staffId == other.staffId &&
        staffName == other.staffName &&
        prelossComment == other.prelossComment;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, prelossCommentId.hashCode);
    _$hash = $jc(_$hash, staffId.hashCode);
    _$hash = $jc(_$hash, staffName.hashCode);
    _$hash = $jc(_$hash, prelossComment.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PreLossComment')
          ..add('prelossCommentId', prelossCommentId)
          ..add('staffId', staffId)
          ..add('staffName', staffName)
          ..add('prelossComment', prelossComment))
        .toString();
  }
}

class PreLossCommentBuilder
    implements Builder<PreLossComment, PreLossCommentBuilder> {
  _$PreLossComment? _$v;

  String? _prelossCommentId;
  String? get prelossCommentId => _$this._prelossCommentId;
  set prelossCommentId(String? prelossCommentId) =>
      _$this._prelossCommentId = prelossCommentId;

  String? _staffId;
  String? get staffId => _$this._staffId;
  set staffId(String? staffId) => _$this._staffId = staffId;

  String? _staffName;
  String? get staffName => _$this._staffName;
  set staffName(String? staffName) => _$this._staffName = staffName;

  String? _prelossComment;
  String? get prelossComment => _$this._prelossComment;
  set prelossComment(String? prelossComment) =>
      _$this._prelossComment = prelossComment;

  PreLossCommentBuilder() {
    PreLossComment._defaults(this);
  }

  PreLossCommentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _prelossCommentId = $v.prelossCommentId;
      _staffId = $v.staffId;
      _staffName = $v.staffName;
      _prelossComment = $v.prelossComment;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PreLossComment other) {
    _$v = other as _$PreLossComment;
  }

  @override
  void update(void Function(PreLossCommentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PreLossComment build() => _build();

  _$PreLossComment _build() {
    final _$result = _$v ??
        _$PreLossComment._(
          prelossCommentId: prelossCommentId,
          staffId: staffId,
          staffName: staffName,
          prelossComment: prelossComment,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
