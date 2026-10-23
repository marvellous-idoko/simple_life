// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'death_cover.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DeathCoverFrequencyEnum _$deathCoverFrequencyEnum_monthly =
    const DeathCoverFrequencyEnum._('monthly');
const DeathCoverFrequencyEnum _$deathCoverFrequencyEnum_quarterly =
    const DeathCoverFrequencyEnum._('quarterly');
const DeathCoverFrequencyEnum _$deathCoverFrequencyEnum_biannual =
    const DeathCoverFrequencyEnum._('biannual');
const DeathCoverFrequencyEnum _$deathCoverFrequencyEnum_annual =
    const DeathCoverFrequencyEnum._('annual');
const DeathCoverFrequencyEnum _$deathCoverFrequencyEnum_single =
    const DeathCoverFrequencyEnum._('single');

DeathCoverFrequencyEnum _$deathCoverFrequencyEnumValueOf(String name) {
  switch (name) {
    case 'monthly':
      return _$deathCoverFrequencyEnum_monthly;
    case 'quarterly':
      return _$deathCoverFrequencyEnum_quarterly;
    case 'biannual':
      return _$deathCoverFrequencyEnum_biannual;
    case 'annual':
      return _$deathCoverFrequencyEnum_annual;
    case 'single':
      return _$deathCoverFrequencyEnum_single;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<DeathCoverFrequencyEnum> _$deathCoverFrequencyEnumValues =
    BuiltSet<DeathCoverFrequencyEnum>(const <DeathCoverFrequencyEnum>[
  _$deathCoverFrequencyEnum_monthly,
  _$deathCoverFrequencyEnum_quarterly,
  _$deathCoverFrequencyEnum_biannual,
  _$deathCoverFrequencyEnum_annual,
  _$deathCoverFrequencyEnum_single,
]);

Serializer<DeathCoverFrequencyEnum> _$deathCoverFrequencyEnumSerializer =
    _$DeathCoverFrequencyEnumSerializer();

class _$DeathCoverFrequencyEnumSerializer
    implements PrimitiveSerializer<DeathCoverFrequencyEnum> {
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
  final Iterable<Type> types = const <Type>[DeathCoverFrequencyEnum];
  @override
  final String wireName = 'DeathCoverFrequencyEnum';

  @override
  Object serialize(Serializers serializers, DeathCoverFrequencyEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  DeathCoverFrequencyEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      DeathCoverFrequencyEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

abstract class DeathCoverBuilder {
  void replace(DeathCover other);
  void update(void Function(DeathCoverBuilder) updates);
  String? get personId;
  set personId(String? personId);

  String? get businessType;
  set businessType(String? businessType);

  String? get businessChannel;
  set businessChannel(String? businessChannel);

  num? get sumAssured;
  set sumAssured(num? sumAssured);

  num? get term;
  set term(num? term);

  DeathCoverFrequencyEnum? get frequency;
  set frequency(DeathCoverFrequencyEnum? frequency);
}

class _$$DeathCover extends $DeathCover {
  @override
  final String personId;
  @override
  final String? businessType;
  @override
  final String? businessChannel;
  @override
  final num sumAssured;
  @override
  final num term;
  @override
  final DeathCoverFrequencyEnum frequency;

  factory _$$DeathCover([void Function($DeathCoverBuilder)? updates]) =>
      ($DeathCoverBuilder()..update(updates))._build();

  _$$DeathCover._(
      {required this.personId,
      this.businessType,
      this.businessChannel,
      required this.sumAssured,
      required this.term,
      required this.frequency})
      : super._();
  @override
  $DeathCover rebuild(void Function($DeathCoverBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $DeathCoverBuilder toBuilder() => $DeathCoverBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $DeathCover &&
        personId == other.personId &&
        businessType == other.businessType &&
        businessChannel == other.businessChannel &&
        sumAssured == other.sumAssured &&
        term == other.term &&
        frequency == other.frequency;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, personId.hashCode);
    _$hash = $jc(_$hash, businessType.hashCode);
    _$hash = $jc(_$hash, businessChannel.hashCode);
    _$hash = $jc(_$hash, sumAssured.hashCode);
    _$hash = $jc(_$hash, term.hashCode);
    _$hash = $jc(_$hash, frequency.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$DeathCover')
          ..add('personId', personId)
          ..add('businessType', businessType)
          ..add('businessChannel', businessChannel)
          ..add('sumAssured', sumAssured)
          ..add('term', term)
          ..add('frequency', frequency))
        .toString();
  }
}

class $DeathCoverBuilder
    implements Builder<$DeathCover, $DeathCoverBuilder>, DeathCoverBuilder {
  _$$DeathCover? _$v;

  String? _personId;
  String? get personId => _$this._personId;
  set personId(covariant String? personId) => _$this._personId = personId;

  String? _businessType;
  String? get businessType => _$this._businessType;
  set businessType(covariant String? businessType) =>
      _$this._businessType = businessType;

  String? _businessChannel;
  String? get businessChannel => _$this._businessChannel;
  set businessChannel(covariant String? businessChannel) =>
      _$this._businessChannel = businessChannel;

  num? _sumAssured;
  num? get sumAssured => _$this._sumAssured;
  set sumAssured(covariant num? sumAssured) => _$this._sumAssured = sumAssured;

  num? _term;
  num? get term => _$this._term;
  set term(covariant num? term) => _$this._term = term;

  DeathCoverFrequencyEnum? _frequency;
  DeathCoverFrequencyEnum? get frequency => _$this._frequency;
  set frequency(covariant DeathCoverFrequencyEnum? frequency) =>
      _$this._frequency = frequency;

  $DeathCoverBuilder() {
    $DeathCover._defaults(this);
  }

  $DeathCoverBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _personId = $v.personId;
      _businessType = $v.businessType;
      _businessChannel = $v.businessChannel;
      _sumAssured = $v.sumAssured;
      _term = $v.term;
      _frequency = $v.frequency;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $DeathCover other) {
    _$v = other as _$$DeathCover;
  }

  @override
  void update(void Function($DeathCoverBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $DeathCover build() => _build();

  _$$DeathCover _build() {
    final _$result = _$v ??
        _$$DeathCover._(
          personId: BuiltValueNullFieldError.checkNotNull(
              personId, r'$DeathCover', 'personId'),
          businessType: businessType,
          businessChannel: businessChannel,
          sumAssured: BuiltValueNullFieldError.checkNotNull(
              sumAssured, r'$DeathCover', 'sumAssured'),
          term: BuiltValueNullFieldError.checkNotNull(
              term, r'$DeathCover', 'term'),
          frequency: BuiltValueNullFieldError.checkNotNull(
              frequency, r'$DeathCover', 'frequency'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
