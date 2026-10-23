// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'eska_agent.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EskaAgent extends EskaAgent {
  @override
  final String? level;
  @override
  final num? levelId;
  @override
  final String? name;
  @override
  final num? lineManagerId;
  @override
  final String? id;
  @override
  final String? eskaCustomerId;

  factory _$EskaAgent([void Function(EskaAgentBuilder)? updates]) =>
      (EskaAgentBuilder()..update(updates))._build();

  _$EskaAgent._(
      {this.level,
      this.levelId,
      this.name,
      this.lineManagerId,
      this.id,
      this.eskaCustomerId})
      : super._();
  @override
  EskaAgent rebuild(void Function(EskaAgentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EskaAgentBuilder toBuilder() => EskaAgentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EskaAgent &&
        level == other.level &&
        levelId == other.levelId &&
        name == other.name &&
        lineManagerId == other.lineManagerId &&
        id == other.id &&
        eskaCustomerId == other.eskaCustomerId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, level.hashCode);
    _$hash = $jc(_$hash, levelId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, lineManagerId.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, eskaCustomerId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EskaAgent')
          ..add('level', level)
          ..add('levelId', levelId)
          ..add('name', name)
          ..add('lineManagerId', lineManagerId)
          ..add('id', id)
          ..add('eskaCustomerId', eskaCustomerId))
        .toString();
  }
}

class EskaAgentBuilder implements Builder<EskaAgent, EskaAgentBuilder> {
  _$EskaAgent? _$v;

  String? _level;
  String? get level => _$this._level;
  set level(String? level) => _$this._level = level;

  num? _levelId;
  num? get levelId => _$this._levelId;
  set levelId(num? levelId) => _$this._levelId = levelId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  num? _lineManagerId;
  num? get lineManagerId => _$this._lineManagerId;
  set lineManagerId(num? lineManagerId) =>
      _$this._lineManagerId = lineManagerId;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _eskaCustomerId;
  String? get eskaCustomerId => _$this._eskaCustomerId;
  set eskaCustomerId(String? eskaCustomerId) =>
      _$this._eskaCustomerId = eskaCustomerId;

  EskaAgentBuilder() {
    EskaAgent._defaults(this);
  }

  EskaAgentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _level = $v.level;
      _levelId = $v.levelId;
      _name = $v.name;
      _lineManagerId = $v.lineManagerId;
      _id = $v.id;
      _eskaCustomerId = $v.eskaCustomerId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EskaAgent other) {
    _$v = other as _$EskaAgent;
  }

  @override
  void update(void Function(EskaAgentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EskaAgent build() => _build();

  _$EskaAgent _build() {
    final _$result = _$v ??
        _$EskaAgent._(
          level: level,
          levelId: levelId,
          name: name,
          lineManagerId: lineManagerId,
          id: id,
          eskaCustomerId: eskaCustomerId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
