// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buy_motor_policy.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BuyMotorPolicy extends BuyMotorPolicy {
  @override
  final String? buyId;
  @override
  final String? motorId;
  @override
  final String? customerId;
  @override
  final num? motorValue;
  @override
  final String? userName;

  factory _$BuyMotorPolicy([void Function(BuyMotorPolicyBuilder)? updates]) =>
      (BuyMotorPolicyBuilder()..update(updates))._build();

  _$BuyMotorPolicy._(
      {this.buyId,
      this.motorId,
      this.customerId,
      this.motorValue,
      this.userName})
      : super._();
  @override
  BuyMotorPolicy rebuild(void Function(BuyMotorPolicyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuyMotorPolicyBuilder toBuilder() => BuyMotorPolicyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuyMotorPolicy &&
        buyId == other.buyId &&
        motorId == other.motorId &&
        customerId == other.customerId &&
        motorValue == other.motorValue &&
        userName == other.userName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, buyId.hashCode);
    _$hash = $jc(_$hash, motorId.hashCode);
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, motorValue.hashCode);
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BuyMotorPolicy')
          ..add('buyId', buyId)
          ..add('motorId', motorId)
          ..add('customerId', customerId)
          ..add('motorValue', motorValue)
          ..add('userName', userName))
        .toString();
  }
}

class BuyMotorPolicyBuilder
    implements Builder<BuyMotorPolicy, BuyMotorPolicyBuilder> {
  _$BuyMotorPolicy? _$v;

  String? _buyId;
  String? get buyId => _$this._buyId;
  set buyId(String? buyId) => _$this._buyId = buyId;

  String? _motorId;
  String? get motorId => _$this._motorId;
  set motorId(String? motorId) => _$this._motorId = motorId;

  String? _customerId;
  String? get customerId => _$this._customerId;
  set customerId(String? customerId) => _$this._customerId = customerId;

  num? _motorValue;
  num? get motorValue => _$this._motorValue;
  set motorValue(num? motorValue) => _$this._motorValue = motorValue;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  BuyMotorPolicyBuilder() {
    BuyMotorPolicy._defaults(this);
  }

  BuyMotorPolicyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _buyId = $v.buyId;
      _motorId = $v.motorId;
      _customerId = $v.customerId;
      _motorValue = $v.motorValue;
      _userName = $v.userName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuyMotorPolicy other) {
    _$v = other as _$BuyMotorPolicy;
  }

  @override
  void update(void Function(BuyMotorPolicyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BuyMotorPolicy build() => _build();

  _$BuyMotorPolicy _build() {
    final _$result = _$v ??
        _$BuyMotorPolicy._(
          buyId: buyId,
          motorId: motorId,
          customerId: customerId,
          motorValue: motorValue,
          userName: userName,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
