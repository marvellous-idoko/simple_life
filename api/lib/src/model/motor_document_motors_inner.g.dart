// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'motor_document_motors_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MotorDocumentMotorsInner extends MotorDocumentMotorsInner {
  @override
  final String? motorId;

  factory _$MotorDocumentMotorsInner(
          [void Function(MotorDocumentMotorsInnerBuilder)? updates]) =>
      (MotorDocumentMotorsInnerBuilder()..update(updates))._build();

  _$MotorDocumentMotorsInner._({this.motorId}) : super._();
  @override
  MotorDocumentMotorsInner rebuild(
          void Function(MotorDocumentMotorsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MotorDocumentMotorsInnerBuilder toBuilder() =>
      MotorDocumentMotorsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MotorDocumentMotorsInner && motorId == other.motorId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, motorId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MotorDocumentMotorsInner')
          ..add('motorId', motorId))
        .toString();
  }
}

class MotorDocumentMotorsInnerBuilder
    implements
        Builder<MotorDocumentMotorsInner, MotorDocumentMotorsInnerBuilder> {
  _$MotorDocumentMotorsInner? _$v;

  String? _motorId;
  String? get motorId => _$this._motorId;
  set motorId(String? motorId) => _$this._motorId = motorId;

  MotorDocumentMotorsInnerBuilder() {
    MotorDocumentMotorsInner._defaults(this);
  }

  MotorDocumentMotorsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _motorId = $v.motorId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MotorDocumentMotorsInner other) {
    _$v = other as _$MotorDocumentMotorsInner;
  }

  @override
  void update(void Function(MotorDocumentMotorsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MotorDocumentMotorsInner build() => _build();

  _$MotorDocumentMotorsInner _build() {
    final _$result = _$v ??
        _$MotorDocumentMotorsInner._(
          motorId: motorId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
