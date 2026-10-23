// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'allocations_allocation_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AllocationsAllocationInner extends AllocationsAllocationInner {
  @override
  final String? policyNumber;
  @override
  final num? amount;

  factory _$AllocationsAllocationInner(
          [void Function(AllocationsAllocationInnerBuilder)? updates]) =>
      (AllocationsAllocationInnerBuilder()..update(updates))._build();

  _$AllocationsAllocationInner._({this.policyNumber, this.amount}) : super._();
  @override
  AllocationsAllocationInner rebuild(
          void Function(AllocationsAllocationInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AllocationsAllocationInnerBuilder toBuilder() =>
      AllocationsAllocationInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AllocationsAllocationInner &&
        policyNumber == other.policyNumber &&
        amount == other.amount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, policyNumber.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AllocationsAllocationInner')
          ..add('policyNumber', policyNumber)
          ..add('amount', amount))
        .toString();
  }
}

class AllocationsAllocationInnerBuilder
    implements
        Builder<AllocationsAllocationInner, AllocationsAllocationInnerBuilder> {
  _$AllocationsAllocationInner? _$v;

  String? _policyNumber;
  String? get policyNumber => _$this._policyNumber;
  set policyNumber(String? policyNumber) => _$this._policyNumber = policyNumber;

  num? _amount;
  num? get amount => _$this._amount;
  set amount(num? amount) => _$this._amount = amount;

  AllocationsAllocationInnerBuilder() {
    AllocationsAllocationInner._defaults(this);
  }

  AllocationsAllocationInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _policyNumber = $v.policyNumber;
      _amount = $v.amount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AllocationsAllocationInner other) {
    _$v = other as _$AllocationsAllocationInner;
  }

  @override
  void update(void Function(AllocationsAllocationInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AllocationsAllocationInner build() => _build();

  _$AllocationsAllocationInner _build() {
    final _$result = _$v ??
        _$AllocationsAllocationInner._(
          policyNumber: policyNumber,
          amount: amount,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
