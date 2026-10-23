// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statement_premium.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StatementPremium extends StatementPremium {
  @override
  final num? amount;
  @override
  final String? description;
  @override
  final String? policyNumber;
  @override
  final String? date;
  @override
  final String? sequence;
  @override
  final String? id;

  factory _$StatementPremium(
          [void Function(StatementPremiumBuilder)? updates]) =>
      (StatementPremiumBuilder()..update(updates))._build();

  _$StatementPremium._(
      {this.amount,
      this.description,
      this.policyNumber,
      this.date,
      this.sequence,
      this.id})
      : super._();
  @override
  StatementPremium rebuild(void Function(StatementPremiumBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StatementPremiumBuilder toBuilder() =>
      StatementPremiumBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StatementPremium &&
        amount == other.amount &&
        description == other.description &&
        policyNumber == other.policyNumber &&
        date == other.date &&
        sequence == other.sequence &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, policyNumber.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, sequence.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StatementPremium')
          ..add('amount', amount)
          ..add('description', description)
          ..add('policyNumber', policyNumber)
          ..add('date', date)
          ..add('sequence', sequence)
          ..add('id', id))
        .toString();
  }
}

class StatementPremiumBuilder
    implements Builder<StatementPremium, StatementPremiumBuilder> {
  _$StatementPremium? _$v;

  num? _amount;
  num? get amount => _$this._amount;
  set amount(num? amount) => _$this._amount = amount;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _policyNumber;
  String? get policyNumber => _$this._policyNumber;
  set policyNumber(String? policyNumber) => _$this._policyNumber = policyNumber;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _sequence;
  String? get sequence => _$this._sequence;
  set sequence(String? sequence) => _$this._sequence = sequence;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  StatementPremiumBuilder() {
    StatementPremium._defaults(this);
  }

  StatementPremiumBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _amount = $v.amount;
      _description = $v.description;
      _policyNumber = $v.policyNumber;
      _date = $v.date;
      _sequence = $v.sequence;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StatementPremium other) {
    _$v = other as _$StatementPremium;
  }

  @override
  void update(void Function(StatementPremiumBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StatementPremium build() => _build();

  _$StatementPremium _build() {
    final _$result = _$v ??
        _$StatementPremium._(
          amount: amount,
          description: description,
          policyNumber: policyNumber,
          date: date,
          sequence: sequence,
          id: id,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
