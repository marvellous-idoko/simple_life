// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'allocation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Allocation extends Allocation {
  @override
  final String? policyNumber;
  @override
  final String? allocationId;
  @override
  final num? amount;

  factory _$Allocation([void Function(AllocationBuilder)? updates]) =>
      (AllocationBuilder()..update(updates))._build();

  _$Allocation._({this.policyNumber, this.allocationId, this.amount})
      : super._();
  @override
  Allocation rebuild(void Function(AllocationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AllocationBuilder toBuilder() => AllocationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Allocation &&
        policyNumber == other.policyNumber &&
        allocationId == other.allocationId &&
        amount == other.amount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, policyNumber.hashCode);
    _$hash = $jc(_$hash, allocationId.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Allocation')
          ..add('policyNumber', policyNumber)
          ..add('allocationId', allocationId)
          ..add('amount', amount))
        .toString();
  }
}

class AllocationBuilder implements Builder<Allocation, AllocationBuilder> {
  _$Allocation? _$v;

  String? _policyNumber;
  String? get policyNumber => _$this._policyNumber;
  set policyNumber(String? policyNumber) => _$this._policyNumber = policyNumber;

  String? _allocationId;
  String? get allocationId => _$this._allocationId;
  set allocationId(String? allocationId) => _$this._allocationId = allocationId;

  num? _amount;
  num? get amount => _$this._amount;
  set amount(num? amount) => _$this._amount = amount;

  AllocationBuilder() {
    Allocation._defaults(this);
  }

  AllocationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _policyNumber = $v.policyNumber;
      _allocationId = $v.allocationId;
      _amount = $v.amount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Allocation other) {
    _$v = other as _$Allocation;
  }

  @override
  void update(void Function(AllocationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Allocation build() => _build();

  _$Allocation _build() {
    final _$result = _$v ??
        _$Allocation._(
          policyNumber: policyNumber,
          allocationId: allocationId,
          amount: amount,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
