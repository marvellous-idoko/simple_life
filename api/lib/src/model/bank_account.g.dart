// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_account.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BankAccount extends BankAccount {
  @override
  final String? bank;
  @override
  final String? bankCode;
  @override
  final num? accountNumber;
  @override
  final String? accountHolder;
  @override
  final String? bankId;
  @override
  final String? bankAccountId;

  factory _$BankAccount([void Function(BankAccountBuilder)? updates]) =>
      (BankAccountBuilder()..update(updates))._build();

  _$BankAccount._(
      {this.bank,
      this.bankCode,
      this.accountNumber,
      this.accountHolder,
      this.bankId,
      this.bankAccountId})
      : super._();
  @override
  BankAccount rebuild(void Function(BankAccountBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BankAccountBuilder toBuilder() => BankAccountBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BankAccount &&
        bank == other.bank &&
        bankCode == other.bankCode &&
        accountNumber == other.accountNumber &&
        accountHolder == other.accountHolder &&
        bankId == other.bankId &&
        bankAccountId == other.bankAccountId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bank.hashCode);
    _$hash = $jc(_$hash, bankCode.hashCode);
    _$hash = $jc(_$hash, accountNumber.hashCode);
    _$hash = $jc(_$hash, accountHolder.hashCode);
    _$hash = $jc(_$hash, bankId.hashCode);
    _$hash = $jc(_$hash, bankAccountId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BankAccount')
          ..add('bank', bank)
          ..add('bankCode', bankCode)
          ..add('accountNumber', accountNumber)
          ..add('accountHolder', accountHolder)
          ..add('bankId', bankId)
          ..add('bankAccountId', bankAccountId))
        .toString();
  }
}

class BankAccountBuilder implements Builder<BankAccount, BankAccountBuilder> {
  _$BankAccount? _$v;

  String? _bank;
  String? get bank => _$this._bank;
  set bank(String? bank) => _$this._bank = bank;

  String? _bankCode;
  String? get bankCode => _$this._bankCode;
  set bankCode(String? bankCode) => _$this._bankCode = bankCode;

  num? _accountNumber;
  num? get accountNumber => _$this._accountNumber;
  set accountNumber(num? accountNumber) =>
      _$this._accountNumber = accountNumber;

  String? _accountHolder;
  String? get accountHolder => _$this._accountHolder;
  set accountHolder(String? accountHolder) =>
      _$this._accountHolder = accountHolder;

  String? _bankId;
  String? get bankId => _$this._bankId;
  set bankId(String? bankId) => _$this._bankId = bankId;

  String? _bankAccountId;
  String? get bankAccountId => _$this._bankAccountId;
  set bankAccountId(String? bankAccountId) =>
      _$this._bankAccountId = bankAccountId;

  BankAccountBuilder() {
    BankAccount._defaults(this);
  }

  BankAccountBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bank = $v.bank;
      _bankCode = $v.bankCode;
      _accountNumber = $v.accountNumber;
      _accountHolder = $v.accountHolder;
      _bankId = $v.bankId;
      _bankAccountId = $v.bankAccountId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BankAccount other) {
    _$v = other as _$BankAccount;
  }

  @override
  void update(void Function(BankAccountBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BankAccount build() => _build();

  _$BankAccount _build() {
    final _$result = _$v ??
        _$BankAccount._(
          bank: bank,
          bankCode: bankCode,
          accountNumber: accountNumber,
          accountHolder: accountHolder,
          bankId: bankId,
          bankAccountId: bankAccountId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
