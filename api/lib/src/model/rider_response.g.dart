// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rider_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RiderResponseFrequencyEnum _$riderResponseFrequencyEnum_monthly =
    const RiderResponseFrequencyEnum._('monthly');
const RiderResponseFrequencyEnum _$riderResponseFrequencyEnum_quarterly =
    const RiderResponseFrequencyEnum._('quarterly');
const RiderResponseFrequencyEnum _$riderResponseFrequencyEnum_biannual =
    const RiderResponseFrequencyEnum._('biannual');
const RiderResponseFrequencyEnum _$riderResponseFrequencyEnum_annual =
    const RiderResponseFrequencyEnum._('annual');
const RiderResponseFrequencyEnum _$riderResponseFrequencyEnum_single =
    const RiderResponseFrequencyEnum._('single');

RiderResponseFrequencyEnum _$riderResponseFrequencyEnumValueOf(String name) {
  switch (name) {
    case 'monthly':
      return _$riderResponseFrequencyEnum_monthly;
    case 'quarterly':
      return _$riderResponseFrequencyEnum_quarterly;
    case 'biannual':
      return _$riderResponseFrequencyEnum_biannual;
    case 'annual':
      return _$riderResponseFrequencyEnum_annual;
    case 'single':
      return _$riderResponseFrequencyEnum_single;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RiderResponseFrequencyEnum> _$riderResponseFrequencyEnumValues =
    BuiltSet<RiderResponseFrequencyEnum>(const <RiderResponseFrequencyEnum>[
  _$riderResponseFrequencyEnum_monthly,
  _$riderResponseFrequencyEnum_quarterly,
  _$riderResponseFrequencyEnum_biannual,
  _$riderResponseFrequencyEnum_annual,
  _$riderResponseFrequencyEnum_single,
]);

Serializer<RiderResponseFrequencyEnum> _$riderResponseFrequencyEnumSerializer =
    _$RiderResponseFrequencyEnumSerializer();

class _$RiderResponseFrequencyEnumSerializer
    implements PrimitiveSerializer<RiderResponseFrequencyEnum> {
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
  final Iterable<Type> types = const <Type>[RiderResponseFrequencyEnum];
  @override
  final String wireName = 'RiderResponseFrequencyEnum';

  @override
  Object serialize(Serializers serializers, RiderResponseFrequencyEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  RiderResponseFrequencyEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RiderResponseFrequencyEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$RiderResponse extends RiderResponse {
  @override
  final String? riderCode;
  @override
  final num? sumAssured;
  @override
  final num? term;
  @override
  final RiderResponseFrequencyEnum? frequency;

  factory _$RiderResponse([void Function(RiderResponseBuilder)? updates]) =>
      (RiderResponseBuilder()..update(updates))._build();

  _$RiderResponse._(
      {this.riderCode, this.sumAssured, this.term, this.frequency})
      : super._();
  @override
  RiderResponse rebuild(void Function(RiderResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RiderResponseBuilder toBuilder() => RiderResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RiderResponse &&
        riderCode == other.riderCode &&
        sumAssured == other.sumAssured &&
        term == other.term &&
        frequency == other.frequency;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, riderCode.hashCode);
    _$hash = $jc(_$hash, sumAssured.hashCode);
    _$hash = $jc(_$hash, term.hashCode);
    _$hash = $jc(_$hash, frequency.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RiderResponse')
          ..add('riderCode', riderCode)
          ..add('sumAssured', sumAssured)
          ..add('term', term)
          ..add('frequency', frequency))
        .toString();
  }
}

class RiderResponseBuilder
    implements Builder<RiderResponse, RiderResponseBuilder> {
  _$RiderResponse? _$v;

  String? _riderCode;
  String? get riderCode => _$this._riderCode;
  set riderCode(String? riderCode) => _$this._riderCode = riderCode;

  num? _sumAssured;
  num? get sumAssured => _$this._sumAssured;
  set sumAssured(num? sumAssured) => _$this._sumAssured = sumAssured;

  num? _term;
  num? get term => _$this._term;
  set term(num? term) => _$this._term = term;

  RiderResponseFrequencyEnum? _frequency;
  RiderResponseFrequencyEnum? get frequency => _$this._frequency;
  set frequency(RiderResponseFrequencyEnum? frequency) =>
      _$this._frequency = frequency;

  RiderResponseBuilder() {
    RiderResponse._defaults(this);
  }

  RiderResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _riderCode = $v.riderCode;
      _sumAssured = $v.sumAssured;
      _term = $v.term;
      _frequency = $v.frequency;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RiderResponse other) {
    _$v = other as _$RiderResponse;
  }

  @override
  void update(void Function(RiderResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RiderResponse build() => _build();

  _$RiderResponse _build() {
    final _$result = _$v ??
        _$RiderResponse._(
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
