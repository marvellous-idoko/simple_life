// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_statement_premium.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccountStatementPremium extends AccountStatementPremium {
  @override
  final num? amount;
  @override
  final String? description;
  @override
  final String? date;
  @override
  final String? uploadDate;
  @override
  final String? account;
  @override
  final String? id;

  factory _$AccountStatementPremium(
          [void Function(AccountStatementPremiumBuilder)? updates]) =>
      (AccountStatementPremiumBuilder()..update(updates))._build();

  _$AccountStatementPremium._(
      {this.amount,
      this.description,
      this.date,
      this.uploadDate,
      this.account,
      this.id})
      : super._();
  @override
  AccountStatementPremium rebuild(
          void Function(AccountStatementPremiumBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountStatementPremiumBuilder toBuilder() =>
      AccountStatementPremiumBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountStatementPremium &&
        amount == other.amount &&
        description == other.description &&
        date == other.date &&
        uploadDate == other.uploadDate &&
        account == other.account &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, uploadDate.hashCode);
    _$hash = $jc(_$hash, account.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AccountStatementPremium')
          ..add('amount', amount)
          ..add('description', description)
          ..add('date', date)
          ..add('uploadDate', uploadDate)
          ..add('account', account)
          ..add('id', id))
        .toString();
  }
}

class AccountStatementPremiumBuilder
    implements
        Builder<AccountStatementPremium, AccountStatementPremiumBuilder> {
  _$AccountStatementPremium? _$v;

  num? _amount;
  num? get amount => _$this._amount;
  set amount(num? amount) => _$this._amount = amount;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _uploadDate;
  String? get uploadDate => _$this._uploadDate;
  set uploadDate(String? uploadDate) => _$this._uploadDate = uploadDate;

  String? _account;
  String? get account => _$this._account;
  set account(String? account) => _$this._account = account;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  AccountStatementPremiumBuilder() {
    AccountStatementPremium._defaults(this);
  }

  AccountStatementPremiumBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _amount = $v.amount;
      _description = $v.description;
      _date = $v.date;
      _uploadDate = $v.uploadDate;
      _account = $v.account;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountStatementPremium other) {
    _$v = other as _$AccountStatementPremium;
  }

  @override
  void update(void Function(AccountStatementPremiumBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccountStatementPremium build() => _build();

  _$AccountStatementPremium _build() {
    final _$result = _$v ??
        _$AccountStatementPremium._(
          amount: amount,
          description: description,
          date: date,
          uploadDate: uploadDate,
          account: account,
          id: id,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
