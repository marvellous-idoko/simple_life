// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pre_loss_query.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PreLossQuery extends PreLossQuery {
  @override
  final String? prelossCommentId;
  @override
  final String? staffId;
  @override
  final String? staffName;
  @override
  final String? query;
  @override
  final Date? date;

  factory _$PreLossQuery([void Function(PreLossQueryBuilder)? updates]) =>
      (PreLossQueryBuilder()..update(updates))._build();

  _$PreLossQuery._(
      {this.prelossCommentId,
      this.staffId,
      this.staffName,
      this.query,
      this.date})
      : super._();
  @override
  PreLossQuery rebuild(void Function(PreLossQueryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PreLossQueryBuilder toBuilder() => PreLossQueryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PreLossQuery &&
        prelossCommentId == other.prelossCommentId &&
        staffId == other.staffId &&
        staffName == other.staffName &&
        query == other.query &&
        date == other.date;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, prelossCommentId.hashCode);
    _$hash = $jc(_$hash, staffId.hashCode);
    _$hash = $jc(_$hash, staffName.hashCode);
    _$hash = $jc(_$hash, query.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PreLossQuery')
          ..add('prelossCommentId', prelossCommentId)
          ..add('staffId', staffId)
          ..add('staffName', staffName)
          ..add('query', query)
          ..add('date', date))
        .toString();
  }
}

class PreLossQueryBuilder
    implements Builder<PreLossQuery, PreLossQueryBuilder> {
  _$PreLossQuery? _$v;

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

  String? _query;
  String? get query => _$this._query;
  set query(String? query) => _$this._query = query;

  Date? _date;
  Date? get date => _$this._date;
  set date(Date? date) => _$this._date = date;

  PreLossQueryBuilder() {
    PreLossQuery._defaults(this);
  }

  PreLossQueryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _prelossCommentId = $v.prelossCommentId;
      _staffId = $v.staffId;
      _staffName = $v.staffName;
      _query = $v.query;
      _date = $v.date;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PreLossQuery other) {
    _$v = other as _$PreLossQuery;
  }

  @override
  void update(void Function(PreLossQueryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PreLossQuery build() => _build();

  _$PreLossQuery _build() {
    final _$result = _$v ??
        _$PreLossQuery._(
          prelossCommentId: prelossCommentId,
          staffId: staffId,
          staffName: staffName,
          query: query,
          date: date,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
