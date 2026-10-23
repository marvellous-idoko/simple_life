// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mandate_debit.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MandateDebit extends MandateDebit {
  @override
  final String? mandateId;
  @override
  final String? debitId;
  @override
  final num? amount;
  @override
  final String? company;

  factory _$MandateDebit([void Function(MandateDebitBuilder)? updates]) =>
      (MandateDebitBuilder()..update(updates))._build();

  _$MandateDebit._({this.mandateId, this.debitId, this.amount, this.company})
      : super._();
  @override
  MandateDebit rebuild(void Function(MandateDebitBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MandateDebitBuilder toBuilder() => MandateDebitBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MandateDebit &&
        mandateId == other.mandateId &&
        debitId == other.debitId &&
        amount == other.amount &&
        company == other.company;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, mandateId.hashCode);
    _$hash = $jc(_$hash, debitId.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, company.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MandateDebit')
          ..add('mandateId', mandateId)
          ..add('debitId', debitId)
          ..add('amount', amount)
          ..add('company', company))
        .toString();
  }
}

class MandateDebitBuilder
    implements Builder<MandateDebit, MandateDebitBuilder> {
  _$MandateDebit? _$v;

  String? _mandateId;
  String? get mandateId => _$this._mandateId;
  set mandateId(String? mandateId) => _$this._mandateId = mandateId;

  String? _debitId;
  String? get debitId => _$this._debitId;
  set debitId(String? debitId) => _$this._debitId = debitId;

  num? _amount;
  num? get amount => _$this._amount;
  set amount(num? amount) => _$this._amount = amount;

  String? _company;
  String? get company => _$this._company;
  set company(String? company) => _$this._company = company;

  MandateDebitBuilder() {
    MandateDebit._defaults(this);
  }

  MandateDebitBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mandateId = $v.mandateId;
      _debitId = $v.debitId;
      _amount = $v.amount;
      _company = $v.company;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MandateDebit other) {
    _$v = other as _$MandateDebit;
  }

  @override
  void update(void Function(MandateDebitBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MandateDebit build() => _build();

  _$MandateDebit _build() {
    final _$result = _$v ??
        _$MandateDebit._(
          mandateId: mandateId,
          debitId: debitId,
          amount: amount,
          company: company,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
