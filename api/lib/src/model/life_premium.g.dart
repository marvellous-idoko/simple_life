// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'life_premium.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const LifePremiumFrequencyEnum _$lifePremiumFrequencyEnum_monthly =
    const LifePremiumFrequencyEnum._('monthly');
const LifePremiumFrequencyEnum _$lifePremiumFrequencyEnum_quarterly =
    const LifePremiumFrequencyEnum._('quarterly');
const LifePremiumFrequencyEnum _$lifePremiumFrequencyEnum_biannual =
    const LifePremiumFrequencyEnum._('biannual');
const LifePremiumFrequencyEnum _$lifePremiumFrequencyEnum_annual =
    const LifePremiumFrequencyEnum._('annual');
const LifePremiumFrequencyEnum _$lifePremiumFrequencyEnum_single =
    const LifePremiumFrequencyEnum._('single');

LifePremiumFrequencyEnum _$lifePremiumFrequencyEnumValueOf(String name) {
  switch (name) {
    case 'monthly':
      return _$lifePremiumFrequencyEnum_monthly;
    case 'quarterly':
      return _$lifePremiumFrequencyEnum_quarterly;
    case 'biannual':
      return _$lifePremiumFrequencyEnum_biannual;
    case 'annual':
      return _$lifePremiumFrequencyEnum_annual;
    case 'single':
      return _$lifePremiumFrequencyEnum_single;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<LifePremiumFrequencyEnum> _$lifePremiumFrequencyEnumValues =
    BuiltSet<LifePremiumFrequencyEnum>(const <LifePremiumFrequencyEnum>[
  _$lifePremiumFrequencyEnum_monthly,
  _$lifePremiumFrequencyEnum_quarterly,
  _$lifePremiumFrequencyEnum_biannual,
  _$lifePremiumFrequencyEnum_annual,
  _$lifePremiumFrequencyEnum_single,
]);

Serializer<LifePremiumFrequencyEnum> _$lifePremiumFrequencyEnumSerializer =
    _$LifePremiumFrequencyEnumSerializer();

class _$LifePremiumFrequencyEnumSerializer
    implements PrimitiveSerializer<LifePremiumFrequencyEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'monthly': 'monthly',
    'quarterly': 'quarterly',
    'biannual': 'biannual',
    'annual': 'annual',
    'single': 'single',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'monthly': 'monthly',
    'quarterly': 'quarterly',
    'biannual': 'biannual',
    'annual': 'annual',
    'single': 'single',
  };

  @override
  final Iterable<Type> types = const <Type>[LifePremiumFrequencyEnum];
  @override
  final String wireName = 'LifePremiumFrequencyEnum';

  @override
  Object serialize(Serializers serializers, LifePremiumFrequencyEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  LifePremiumFrequencyEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      LifePremiumFrequencyEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$LifePremium extends LifePremium {
  @override
  final num? premium;
  @override
  final LifePremiumFrequencyEnum? frequency;

  factory _$LifePremium([void Function(LifePremiumBuilder)? updates]) =>
      (LifePremiumBuilder()..update(updates))._build();

  _$LifePremium._({this.premium, this.frequency}) : super._();
  @override
  LifePremium rebuild(void Function(LifePremiumBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LifePremiumBuilder toBuilder() => LifePremiumBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LifePremium &&
        premium == other.premium &&
        frequency == other.frequency;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, premium.hashCode);
    _$hash = $jc(_$hash, frequency.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LifePremium')
          ..add('premium', premium)
          ..add('frequency', frequency))
        .toString();
  }
}

class LifePremiumBuilder implements Builder<LifePremium, LifePremiumBuilder> {
  _$LifePremium? _$v;

  num? _premium;
  num? get premium => _$this._premium;
  set premium(num? premium) => _$this._premium = premium;

  LifePremiumFrequencyEnum? _frequency;
  LifePremiumFrequencyEnum? get frequency => _$this._frequency;
  set frequency(LifePremiumFrequencyEnum? frequency) =>
      _$this._frequency = frequency;

  LifePremiumBuilder() {
    LifePremium._defaults(this);
  }

  LifePremiumBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _premium = $v.premium;
      _frequency = $v.frequency;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LifePremium other) {
    _$v = other as _$LifePremium;
  }

  @override
  void update(void Function(LifePremiumBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LifePremium build() => _build();

  _$LifePremium _build() {
    final _$result = _$v ??
        _$LifePremium._(
          premium: premium,
          frequency: frequency,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
