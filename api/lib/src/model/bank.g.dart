// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BankStatusEnum _$bankStatusEnum_enable = const BankStatusEnum._('enable');
const BankStatusEnum _$bankStatusEnum_disable =
    const BankStatusEnum._('disable');

BankStatusEnum _$bankStatusEnumValueOf(String name) {
  switch (name) {
    case 'enable':
      return _$bankStatusEnum_enable;
    case 'disable':
      return _$bankStatusEnum_disable;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<BankStatusEnum> _$bankStatusEnumValues =
    BuiltSet<BankStatusEnum>(const <BankStatusEnum>[
  _$bankStatusEnum_enable,
  _$bankStatusEnum_disable,
]);

Serializer<BankStatusEnum> _$bankStatusEnumSerializer =
    _$BankStatusEnumSerializer();

class _$BankStatusEnumSerializer
    implements PrimitiveSerializer<BankStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'enable': 'enable',
    'disable': 'disable',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'enable': 'enable',
    'disable': 'disable',
  };

  @override
  final Iterable<Type> types = const <Type>[BankStatusEnum];
  @override
  final String wireName = 'BankStatusEnum';

  @override
  Object serialize(Serializers serializers, BankStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  BankStatusEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      BankStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Bank extends Bank {
  @override
  final String? bankId;
  @override
  final String? bankName;
  @override
  final String? bankCode;
  @override
  final BankStatusEnum? status;

  factory _$Bank([void Function(BankBuilder)? updates]) =>
      (BankBuilder()..update(updates))._build();

  _$Bank._({this.bankId, this.bankName, this.bankCode, this.status})
      : super._();
  @override
  Bank rebuild(void Function(BankBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BankBuilder toBuilder() => BankBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Bank &&
        bankId == other.bankId &&
        bankName == other.bankName &&
        bankCode == other.bankCode &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bankId.hashCode);
    _$hash = $jc(_$hash, bankName.hashCode);
    _$hash = $jc(_$hash, bankCode.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Bank')
          ..add('bankId', bankId)
          ..add('bankName', bankName)
          ..add('bankCode', bankCode)
          ..add('status', status))
        .toString();
  }
}

class BankBuilder implements Builder<Bank, BankBuilder> {
  _$Bank? _$v;

  String? _bankId;
  String? get bankId => _$this._bankId;
  set bankId(String? bankId) => _$this._bankId = bankId;

  String? _bankName;
  String? get bankName => _$this._bankName;
  set bankName(String? bankName) => _$this._bankName = bankName;

  String? _bankCode;
  String? get bankCode => _$this._bankCode;
  set bankCode(String? bankCode) => _$this._bankCode = bankCode;

  BankStatusEnum? _status;
  BankStatusEnum? get status => _$this._status;
  set status(BankStatusEnum? status) => _$this._status = status;

  BankBuilder() {
    Bank._defaults(this);
  }

  BankBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bankId = $v.bankId;
      _bankName = $v.bankName;
      _bankCode = $v.bankCode;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Bank other) {
    _$v = other as _$Bank;
  }

  @override
  void update(void Function(BankBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Bank build() => _build();

  _$Bank _build() {
    final _$result = _$v ??
        _$Bank._(
          bankId: bankId,
          bankName: bankName,
          bankCode: bankCode,
          status: status,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
