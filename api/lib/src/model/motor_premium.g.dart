// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'motor_premium.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MotorPremium extends MotorPremium {
  @override
  final num? premium;
  @override
  final String? motorType;

  factory _$MotorPremium([void Function(MotorPremiumBuilder)? updates]) =>
      (MotorPremiumBuilder()..update(updates))._build();

  _$MotorPremium._({this.premium, this.motorType}) : super._();
  @override
  MotorPremium rebuild(void Function(MotorPremiumBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MotorPremiumBuilder toBuilder() => MotorPremiumBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MotorPremium &&
        premium == other.premium &&
        motorType == other.motorType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, premium.hashCode);
    _$hash = $jc(_$hash, motorType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MotorPremium')
          ..add('premium', premium)
          ..add('motorType', motorType))
        .toString();
  }
}

class MotorPremiumBuilder
    implements Builder<MotorPremium, MotorPremiumBuilder> {
  _$MotorPremium? _$v;

  num? _premium;
  num? get premium => _$this._premium;
  set premium(num? premium) => _$this._premium = premium;

  String? _motorType;
  String? get motorType => _$this._motorType;
  set motorType(String? motorType) => _$this._motorType = motorType;

  MotorPremiumBuilder() {
    MotorPremium._defaults(this);
  }

  MotorPremiumBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _premium = $v.premium;
      _motorType = $v.motorType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MotorPremium other) {
    _$v = other as _$MotorPremium;
  }

  @override
  void update(void Function(MotorPremiumBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MotorPremium build() => _build();

  _$MotorPremium _build() {
    final _$result = _$v ??
        _$MotorPremium._(
          premium: premium,
          motorType: motorType,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
