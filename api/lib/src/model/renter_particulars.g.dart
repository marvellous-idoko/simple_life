// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'renter_particulars.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RenterParticulars extends RenterParticulars {
  @override
  final AnyOf anyOf;

  factory _$RenterParticulars(
          [void Function(RenterParticularsBuilder)? updates]) =>
      (RenterParticularsBuilder()..update(updates))._build();

  _$RenterParticulars._({required this.anyOf}) : super._();
  @override
  RenterParticulars rebuild(void Function(RenterParticularsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RenterParticularsBuilder toBuilder() =>
      RenterParticularsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RenterParticulars && anyOf == other.anyOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, anyOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RenterParticulars')
          ..add('anyOf', anyOf))
        .toString();
  }
}

class RenterParticularsBuilder
    implements Builder<RenterParticulars, RenterParticularsBuilder> {
  _$RenterParticulars? _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  RenterParticularsBuilder() {
    RenterParticulars._defaults(this);
  }

  RenterParticularsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _anyOf = $v.anyOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RenterParticulars other) {
    _$v = other as _$RenterParticulars;
  }

  @override
  void update(void Function(RenterParticularsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RenterParticulars build() => _build();

  _$RenterParticulars _build() {
    final _$result = _$v ??
        _$RenterParticulars._(
          anyOf: BuiltValueNullFieldError.checkNotNull(
              anyOf, r'RenterParticulars', 'anyOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
