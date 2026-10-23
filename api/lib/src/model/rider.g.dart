// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rider.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RiderFrequencyEnum _$riderFrequencyEnum_monthly =
    const RiderFrequencyEnum._('monthly');
const RiderFrequencyEnum _$riderFrequencyEnum_quarterly =
    const RiderFrequencyEnum._('quarterly');
const RiderFrequencyEnum _$riderFrequencyEnum_biannual =
    const RiderFrequencyEnum._('biannual');
const RiderFrequencyEnum _$riderFrequencyEnum_annual =
    const RiderFrequencyEnum._('annual');
const RiderFrequencyEnum _$riderFrequencyEnum_single =
    const RiderFrequencyEnum._('single');

RiderFrequencyEnum _$riderFrequencyEnumValueOf(String name) {
  switch (name) {
    case 'monthly':
      return _$riderFrequencyEnum_monthly;
    case 'quarterly':
      return _$riderFrequencyEnum_quarterly;
    case 'biannual':
      return _$riderFrequencyEnum_biannual;
    case 'annual':
      return _$riderFrequencyEnum_annual;
    case 'single':
      return _$riderFrequencyEnum_single;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RiderFrequencyEnum> _$riderFrequencyEnumValues =
    BuiltSet<RiderFrequencyEnum>(const <RiderFrequencyEnum>[
  _$riderFrequencyEnum_monthly,
  _$riderFrequencyEnum_quarterly,
  _$riderFrequencyEnum_biannual,
  _$riderFrequencyEnum_annual,
  _$riderFrequencyEnum_single,
]);

Serializer<RiderFrequencyEnum> _$riderFrequencyEnumSerializer =
    _$RiderFrequencyEnumSerializer();

class _$RiderFrequencyEnumSerializer
    implements PrimitiveSerializer<RiderFrequencyEnum> {
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
  final Iterable<Type> types = const <Type>[RiderFrequencyEnum];
  @override
  final String wireName = 'RiderFrequencyEnum';

  @override
  Object serialize(Serializers serializers, RiderFrequencyEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  RiderFrequencyEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RiderFrequencyEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Rider extends Rider {
  @override
  final String? personId;
  @override
  final String? riderCode;
  @override
  final num? sumAssured;
  @override
  final num? term;
  @override
  final RiderFrequencyEnum? frequency;

  factory _$Rider([void Function(RiderBuilder)? updates]) =>
      (RiderBuilder()..update(updates))._build();

  _$Rider._(
      {this.personId,
      this.riderCode,
      this.sumAssured,
      this.term,
      this.frequency})
      : super._();
  @override
  Rider rebuild(void Function(RiderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RiderBuilder toBuilder() => RiderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Rider &&
        personId == other.personId &&
        riderCode == other.riderCode &&
        sumAssured == other.sumAssured &&
        term == other.term &&
        frequency == other.frequency;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, personId.hashCode);
    _$hash = $jc(_$hash, riderCode.hashCode);
    _$hash = $jc(_$hash, sumAssured.hashCode);
    _$hash = $jc(_$hash, term.hashCode);
    _$hash = $jc(_$hash, frequency.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Rider')
          ..add('personId', personId)
          ..add('riderCode', riderCode)
          ..add('sumAssured', sumAssured)
          ..add('term', term)
          ..add('frequency', frequency))
        .toString();
  }
}

class RiderBuilder implements Builder<Rider, RiderBuilder> {
  _$Rider? _$v;

  String? _personId;
  String? get personId => _$this._personId;
  set personId(String? personId) => _$this._personId = personId;

  String? _riderCode;
  String? get riderCode => _$this._riderCode;
  set riderCode(String? riderCode) => _$this._riderCode = riderCode;

  num? _sumAssured;
  num? get sumAssured => _$this._sumAssured;
  set sumAssured(num? sumAssured) => _$this._sumAssured = sumAssured;

  num? _term;
  num? get term => _$this._term;
  set term(num? term) => _$this._term = term;

  RiderFrequencyEnum? _frequency;
  RiderFrequencyEnum? get frequency => _$this._frequency;
  set frequency(RiderFrequencyEnum? frequency) => _$this._frequency = frequency;

  RiderBuilder() {
    Rider._defaults(this);
  }

  RiderBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _personId = $v.personId;
      _riderCode = $v.riderCode;
      _sumAssured = $v.sumAssured;
      _term = $v.term;
      _frequency = $v.frequency;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Rider other) {
    _$v = other as _$Rider;
  }

  @override
  void update(void Function(RiderBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Rider build() => _build();

  _$Rider _build() {
    final _$result = _$v ??
        _$Rider._(
          personId: personId,
          riderCode: riderCode,
          sumAssured: sumAssured,
          term: term,
          frequency: frequency,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
