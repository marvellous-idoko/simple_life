// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'problem_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProblemDetail extends ProblemDetail {
  @override
  final String? type;
  @override
  final String? title;
  @override
  final String? detail;
  @override
  final num? status;

  factory _$ProblemDetail([void Function(ProblemDetailBuilder)? updates]) =>
      (ProblemDetailBuilder()..update(updates))._build();

  _$ProblemDetail._({this.type, this.title, this.detail, this.status})
      : super._();
  @override
  ProblemDetail rebuild(void Function(ProblemDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProblemDetailBuilder toBuilder() => ProblemDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProblemDetail &&
        type == other.type &&
        title == other.title &&
        detail == other.detail &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, detail.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProblemDetail')
          ..add('type', type)
          ..add('title', title)
          ..add('detail', detail)
          ..add('status', status))
        .toString();
  }
}

class ProblemDetailBuilder
    implements Builder<ProblemDetail, ProblemDetailBuilder> {
  _$ProblemDetail? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _detail;
  String? get detail => _$this._detail;
  set detail(String? detail) => _$this._detail = detail;

  num? _status;
  num? get status => _$this._status;
  set status(num? status) => _$this._status = status;

  ProblemDetailBuilder() {
    ProblemDetail._defaults(this);
  }

  ProblemDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _title = $v.title;
      _detail = $v.detail;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProblemDetail other) {
    _$v = other as _$ProblemDetail;
  }

  @override
  void update(void Function(ProblemDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProblemDetail build() => _build();

  _$ProblemDetail _build() {
    final _$result = _$v ??
        _$ProblemDetail._(
          type: type,
          title: title,
          detail: detail,
          status: status,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
