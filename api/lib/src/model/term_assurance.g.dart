// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'term_assurance.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TermAssuranceFrequencyEnum _$termAssuranceFrequencyEnum_monthly =
    const TermAssuranceFrequencyEnum._('monthly');
const TermAssuranceFrequencyEnum _$termAssuranceFrequencyEnum_quarterly =
    const TermAssuranceFrequencyEnum._('quarterly');
const TermAssuranceFrequencyEnum _$termAssuranceFrequencyEnum_biannual =
    const TermAssuranceFrequencyEnum._('biannual');
const TermAssuranceFrequencyEnum _$termAssuranceFrequencyEnum_annual =
    const TermAssuranceFrequencyEnum._('annual');
const TermAssuranceFrequencyEnum _$termAssuranceFrequencyEnum_single =
    const TermAssuranceFrequencyEnum._('single');

TermAssuranceFrequencyEnum _$termAssuranceFrequencyEnumValueOf(String name) {
  switch (name) {
    case 'monthly':
      return _$termAssuranceFrequencyEnum_monthly;
    case 'quarterly':
      return _$termAssuranceFrequencyEnum_quarterly;
    case 'biannual':
      return _$termAssuranceFrequencyEnum_biannual;
    case 'annual':
      return _$termAssuranceFrequencyEnum_annual;
    case 'single':
      return _$termAssuranceFrequencyEnum_single;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<TermAssuranceFrequencyEnum> _$termAssuranceFrequencyEnumValues =
    BuiltSet<TermAssuranceFrequencyEnum>(const <TermAssuranceFrequencyEnum>[
  _$termAssuranceFrequencyEnum_monthly,
  _$termAssuranceFrequencyEnum_quarterly,
  _$termAssuranceFrequencyEnum_biannual,
  _$termAssuranceFrequencyEnum_annual,
  _$termAssuranceFrequencyEnum_single,
]);

Serializer<TermAssuranceFrequencyEnum> _$termAssuranceFrequencyEnumSerializer =
    _$TermAssuranceFrequencyEnumSerializer();

class _$TermAssuranceFrequencyEnumSerializer
    implements PrimitiveSerializer<TermAssuranceFrequencyEnum> {
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
  final Iterable<Type> types = const <Type>[TermAssuranceFrequencyEnum];
  @override
  final String wireName = 'TermAssuranceFrequencyEnum';

  @override
  Object serialize(Serializers serializers, TermAssuranceFrequencyEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TermAssuranceFrequencyEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TermAssuranceFrequencyEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$TermAssurance extends TermAssurance {
  @override
  final BuiltList<BeneficiaryShare>? shares;
  @override
  final BuiltList<Rider>? riders;
  @override
  final String? customerId;
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

  factory _$TermAssurance([void Function(TermAssuranceBuilder)? updates]) =>
      (TermAssuranceBuilder()..update(updates))._build();

  _$TermAssurance._(
      {this.shares,
      this.riders,
      this.customerId,
      required this.personId,
      this.businessType,
      this.businessChannel,
      required this.sumAssured,
      required this.term,
      required this.frequency})
      : super._();
  @override
  TermAssurance rebuild(void Function(TermAssuranceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TermAssuranceBuilder toBuilder() => TermAssuranceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TermAssurance &&
        shares == other.shares &&
        riders == other.riders &&
        customerId == other.customerId &&
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
    _$hash = $jc(_$hash, shares.hashCode);
    _$hash = $jc(_$hash, riders.hashCode);
    _$hash = $jc(_$hash, customerId.hashCode);
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
    return (newBuiltValueToStringHelper(r'TermAssurance')
          ..add('shares', shares)
          ..add('riders', riders)
          ..add('customerId', customerId)
          ..add('personId', personId)
          ..add('businessType', businessType)
          ..add('businessChannel', businessChannel)
          ..add('sumAssured', sumAssured)
          ..add('term', term)
          ..add('frequency', frequency))
        .toString();
  }
}

class TermAssuranceBuilder
    implements Builder<TermAssurance, TermAssuranceBuilder>, DeathCoverBuilder {
  _$TermAssurance? _$v;

  ListBuilder<BeneficiaryShare>? _shares;
  ListBuilder<BeneficiaryShare> get shares =>
      _$this._shares ??= ListBuilder<BeneficiaryShare>();
  set shares(covariant ListBuilder<BeneficiaryShare>? shares) =>
      _$this._shares = shares;

  ListBuilder<Rider>? _riders;
  ListBuilder<Rider> get riders => _$this._riders ??= ListBuilder<Rider>();
  set riders(covariant ListBuilder<Rider>? riders) => _$this._riders = riders;

  String? _customerId;
  String? get customerId => _$this._customerId;
  set customerId(covariant String? customerId) =>
      _$this._customerId = customerId;

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

  TermAssuranceBuilder() {
    TermAssurance._defaults(this);
  }

  TermAssuranceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _shares = $v.shares?.toBuilder();
      _riders = $v.riders?.toBuilder();
      _customerId = $v.customerId;
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
  void replace(covariant TermAssurance other) {
    _$v = other as _$TermAssurance;
  }

  @override
  void update(void Function(TermAssuranceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TermAssurance build() => _build();

  _$TermAssurance _build() {
    _$TermAssurance _$result;
    try {
      _$result = _$v ??
          _$TermAssurance._(
            shares: _shares?.build(),
            riders: _riders?.build(),
            customerId: customerId,
            personId: BuiltValueNullFieldError.checkNotNull(
                personId, r'TermAssurance', 'personId'),
            businessType: businessType,
            businessChannel: businessChannel,
            sumAssured: BuiltValueNullFieldError.checkNotNull(
                sumAssured, r'TermAssurance', 'sumAssured'),
            term: BuiltValueNullFieldError.checkNotNull(
                term, r'TermAssurance', 'term'),
            frequency: BuiltValueNullFieldError.checkNotNull(
                frequency, r'TermAssurance', 'frequency'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'shares';
        _shares?.build();
        _$failedField = 'riders';
        _riders?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'TermAssurance', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
