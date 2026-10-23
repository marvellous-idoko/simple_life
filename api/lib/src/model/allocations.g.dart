// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'allocations.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Allocations extends Allocations {
  @override
  final BuiltList<AllocationsAllocationInner>? allocation;

  factory _$Allocations([void Function(AllocationsBuilder)? updates]) =>
      (AllocationsBuilder()..update(updates))._build();

  _$Allocations._({this.allocation}) : super._();
  @override
  Allocations rebuild(void Function(AllocationsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AllocationsBuilder toBuilder() => AllocationsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Allocations && allocation == other.allocation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, allocation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Allocations')
          ..add('allocation', allocation))
        .toString();
  }
}

class AllocationsBuilder implements Builder<Allocations, AllocationsBuilder> {
  _$Allocations? _$v;

  ListBuilder<AllocationsAllocationInner>? _allocation;
  ListBuilder<AllocationsAllocationInner> get allocation =>
      _$this._allocation ??= ListBuilder<AllocationsAllocationInner>();
  set allocation(ListBuilder<AllocationsAllocationInner>? allocation) =>
      _$this._allocation = allocation;

  AllocationsBuilder() {
    Allocations._defaults(this);
  }

  AllocationsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _allocation = $v.allocation?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Allocations other) {
    _$v = other as _$Allocations;
  }

  @override
  void update(void Function(AllocationsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Allocations build() => _build();

  _$Allocations _build() {
    _$Allocations _$result;
    try {
      _$result = _$v ??
          _$Allocations._(
            allocation: _allocation?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'allocation';
        _allocation?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Allocations', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
