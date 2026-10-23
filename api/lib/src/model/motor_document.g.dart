// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'motor_document.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MotorDocument extends MotorDocument {
  @override
  final String? customerId;
  @override
  final BuiltList<MotorDocumentMotorsInner>? motors;

  factory _$MotorDocument([void Function(MotorDocumentBuilder)? updates]) =>
      (MotorDocumentBuilder()..update(updates))._build();

  _$MotorDocument._({this.customerId, this.motors}) : super._();
  @override
  MotorDocument rebuild(void Function(MotorDocumentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MotorDocumentBuilder toBuilder() => MotorDocumentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MotorDocument &&
        customerId == other.customerId &&
        motors == other.motors;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, motors.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MotorDocument')
          ..add('customerId', customerId)
          ..add('motors', motors))
        .toString();
  }
}

class MotorDocumentBuilder
    implements Builder<MotorDocument, MotorDocumentBuilder> {
  _$MotorDocument? _$v;

  String? _customerId;
  String? get customerId => _$this._customerId;
  set customerId(String? customerId) => _$this._customerId = customerId;

  ListBuilder<MotorDocumentMotorsInner>? _motors;
  ListBuilder<MotorDocumentMotorsInner> get motors =>
      _$this._motors ??= ListBuilder<MotorDocumentMotorsInner>();
  set motors(ListBuilder<MotorDocumentMotorsInner>? motors) =>
      _$this._motors = motors;

  MotorDocumentBuilder() {
    MotorDocument._defaults(this);
  }

  MotorDocumentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _customerId = $v.customerId;
      _motors = $v.motors?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MotorDocument other) {
    _$v = other as _$MotorDocument;
  }

  @override
  void update(void Function(MotorDocumentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MotorDocument build() => _build();

  _$MotorDocument _build() {
    _$MotorDocument _$result;
    try {
      _$result = _$v ??
          _$MotorDocument._(
            customerId: customerId,
            motors: _motors?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'motors';
        _motors?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'MotorDocument', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
