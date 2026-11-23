// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_sum_assured_quote.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SaveSumAssuredQuoteFrequencyEnum
    _$saveSumAssuredQuoteFrequencyEnum_monthly =
    const SaveSumAssuredQuoteFrequencyEnum._('monthly');
const SaveSumAssuredQuoteFrequencyEnum
    _$saveSumAssuredQuoteFrequencyEnum_quarterly =
    const SaveSumAssuredQuoteFrequencyEnum._('quarterly');
const SaveSumAssuredQuoteFrequencyEnum
    _$saveSumAssuredQuoteFrequencyEnum_biannual =
    const SaveSumAssuredQuoteFrequencyEnum._('biannual');
const SaveSumAssuredQuoteFrequencyEnum
    _$saveSumAssuredQuoteFrequencyEnum_annual =
    const SaveSumAssuredQuoteFrequencyEnum._('annual');
const SaveSumAssuredQuoteFrequencyEnum
    _$saveSumAssuredQuoteFrequencyEnum_single =
    const SaveSumAssuredQuoteFrequencyEnum._('single');

SaveSumAssuredQuoteFrequencyEnum _$saveSumAssuredQuoteFrequencyEnumValueOf(
    String name) {
  switch (name) {
    case 'monthly':
      return _$saveSumAssuredQuoteFrequencyEnum_monthly;
    case 'quarterly':
      return _$saveSumAssuredQuoteFrequencyEnum_quarterly;
    case 'biannual':
      return _$saveSumAssuredQuoteFrequencyEnum_biannual;
    case 'annual':
      return _$saveSumAssuredQuoteFrequencyEnum_annual;
    case 'single':
      return _$saveSumAssuredQuoteFrequencyEnum_single;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SaveSumAssuredQuoteFrequencyEnum>
    _$saveSumAssuredQuoteFrequencyEnumValues = BuiltSet<
        SaveSumAssuredQuoteFrequencyEnum>(const <SaveSumAssuredQuoteFrequencyEnum>[
  _$saveSumAssuredQuoteFrequencyEnum_monthly,
  _$saveSumAssuredQuoteFrequencyEnum_quarterly,
  _$saveSumAssuredQuoteFrequencyEnum_biannual,
  _$saveSumAssuredQuoteFrequencyEnum_annual,
  _$saveSumAssuredQuoteFrequencyEnum_single,
]);

Serializer<SaveSumAssuredQuoteFrequencyEnum>
    _$saveSumAssuredQuoteFrequencyEnumSerializer =
    _$SaveSumAssuredQuoteFrequencyEnumSerializer();

class _$SaveSumAssuredQuoteFrequencyEnumSerializer
    implements PrimitiveSerializer<SaveSumAssuredQuoteFrequencyEnum> {
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
  final Iterable<Type> types = const <Type>[SaveSumAssuredQuoteFrequencyEnum];
  @override
  final String wireName = 'SaveSumAssuredQuoteFrequencyEnum';

  @override
  Object serialize(
          Serializers serializers, SaveSumAssuredQuoteFrequencyEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SaveSumAssuredQuoteFrequencyEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SaveSumAssuredQuoteFrequencyEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SaveSumAssuredQuote extends SaveSumAssuredQuote {
  @override
  final num? premium;
  @override
  final num? contribution;
  @override
  final SaveSumAssuredQuoteFrequencyEnum? frequency;

  factory _$SaveSumAssuredQuote(
          [void Function(SaveSumAssuredQuoteBuilder)? updates]) =>
      (SaveSumAssuredQuoteBuilder()..update(updates))._build();

  _$SaveSumAssuredQuote._({this.premium, this.contribution, this.frequency})
      : super._();
  @override
  SaveSumAssuredQuote rebuild(
          void Function(SaveSumAssuredQuoteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SaveSumAssuredQuoteBuilder toBuilder() =>
      SaveSumAssuredQuoteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SaveSumAssuredQuote &&
        premium == other.premium &&
        contribution == other.contribution &&
        frequency == other.frequency;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, premium.hashCode);
    _$hash = $jc(_$hash, contribution.hashCode);
    _$hash = $jc(_$hash, frequency.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SaveSumAssuredQuote')
          ..add('premium', premium)
          ..add('contribution', contribution)
          ..add('frequency', frequency))
        .toString();
  }
}

class SaveSumAssuredQuoteBuilder
    implements Builder<SaveSumAssuredQuote, SaveSumAssuredQuoteBuilder> {
  _$SaveSumAssuredQuote? _$v;

  num? _premium;
  num? get premium => _$this._premium;
  set premium(num? premium) => _$this._premium = premium;

  num? _contribution;
  num? get contribution => _$this._contribution;
  set contribution(num? contribution) => _$this._contribution = contribution;

  SaveSumAssuredQuoteFrequencyEnum? _frequency;
  SaveSumAssuredQuoteFrequencyEnum? get frequency => _$this._frequency;
  set frequency(SaveSumAssuredQuoteFrequencyEnum? frequency) =>
      _$this._frequency = frequency;

  SaveSumAssuredQuoteBuilder() {
    SaveSumAssuredQuote._defaults(this);
  }

  SaveSumAssuredQuoteBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _premium = $v.premium;
      _contribution = $v.contribution;
      _frequency = $v.frequency;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SaveSumAssuredQuote other) {
    _$v = other as _$SaveSumAssuredQuote;
  }

  @override
  void update(void Function(SaveSumAssuredQuoteBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SaveSumAssuredQuote build() => _build();

  _$SaveSumAssuredQuote _build() {
    final _$result = _$v ??
        _$SaveSumAssuredQuote._(
          premium: premium,
          contribution: contribution,
          frequency: frequency,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
