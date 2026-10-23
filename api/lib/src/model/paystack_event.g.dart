// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paystack_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PaystackEvent extends PaystackEvent {
  @override
  final num? amount;
  @override
  final num? fees;
  @override
  final String? reference;
  @override
  final String? date;
  @override
  final String? paymentDate;
  @override
  final String? channel;
  @override
  final String? id;

  factory _$PaystackEvent([void Function(PaystackEventBuilder)? updates]) =>
      (PaystackEventBuilder()..update(updates))._build();

  _$PaystackEvent._(
      {this.amount,
      this.fees,
      this.reference,
      this.date,
      this.paymentDate,
      this.channel,
      this.id})
      : super._();
  @override
  PaystackEvent rebuild(void Function(PaystackEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaystackEventBuilder toBuilder() => PaystackEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaystackEvent &&
        amount == other.amount &&
        fees == other.fees &&
        reference == other.reference &&
        date == other.date &&
        paymentDate == other.paymentDate &&
        channel == other.channel &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, fees.hashCode);
    _$hash = $jc(_$hash, reference.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, paymentDate.hashCode);
    _$hash = $jc(_$hash, channel.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PaystackEvent')
          ..add('amount', amount)
          ..add('fees', fees)
          ..add('reference', reference)
          ..add('date', date)
          ..add('paymentDate', paymentDate)
          ..add('channel', channel)
          ..add('id', id))
        .toString();
  }
}

class PaystackEventBuilder
    implements Builder<PaystackEvent, PaystackEventBuilder> {
  _$PaystackEvent? _$v;

  num? _amount;
  num? get amount => _$this._amount;
  set amount(num? amount) => _$this._amount = amount;

  num? _fees;
  num? get fees => _$this._fees;
  set fees(num? fees) => _$this._fees = fees;

  String? _reference;
  String? get reference => _$this._reference;
  set reference(String? reference) => _$this._reference = reference;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _paymentDate;
  String? get paymentDate => _$this._paymentDate;
  set paymentDate(String? paymentDate) => _$this._paymentDate = paymentDate;

  String? _channel;
  String? get channel => _$this._channel;
  set channel(String? channel) => _$this._channel = channel;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  PaystackEventBuilder() {
    PaystackEvent._defaults(this);
  }

  PaystackEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _amount = $v.amount;
      _fees = $v.fees;
      _reference = $v.reference;
      _date = $v.date;
      _paymentDate = $v.paymentDate;
      _channel = $v.channel;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PaystackEvent other) {
    _$v = other as _$PaystackEvent;
  }

  @override
  void update(void Function(PaystackEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PaystackEvent build() => _build();

  _$PaystackEvent _build() {
    final _$result = _$v ??
        _$PaystackEvent._(
          amount: amount,
          fees: fees,
          reference: reference,
          date: date,
          paymentDate: paymentDate,
          channel: channel,
          id: id,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
