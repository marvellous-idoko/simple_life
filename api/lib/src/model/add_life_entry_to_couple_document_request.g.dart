// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_life_entry_to_couple_document_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AddLifeEntryToCoupleDocumentRequestFrequencyEnum
    _$addLifeEntryToCoupleDocumentRequestFrequencyEnum_monthly =
    const AddLifeEntryToCoupleDocumentRequestFrequencyEnum._('monthly');
const AddLifeEntryToCoupleDocumentRequestFrequencyEnum
    _$addLifeEntryToCoupleDocumentRequestFrequencyEnum_quarterly =
    const AddLifeEntryToCoupleDocumentRequestFrequencyEnum._('quarterly');
const AddLifeEntryToCoupleDocumentRequestFrequencyEnum
    _$addLifeEntryToCoupleDocumentRequestFrequencyEnum_biannual =
    const AddLifeEntryToCoupleDocumentRequestFrequencyEnum._('biannual');
const AddLifeEntryToCoupleDocumentRequestFrequencyEnum
    _$addLifeEntryToCoupleDocumentRequestFrequencyEnum_annual =
    const AddLifeEntryToCoupleDocumentRequestFrequencyEnum._('annual');
const AddLifeEntryToCoupleDocumentRequestFrequencyEnum
    _$addLifeEntryToCoupleDocumentRequestFrequencyEnum_single =
    const AddLifeEntryToCoupleDocumentRequestFrequencyEnum._('single');

AddLifeEntryToCoupleDocumentRequestFrequencyEnum
    _$addLifeEntryToCoupleDocumentRequestFrequencyEnumValueOf(String name) {
  switch (name) {
    case 'monthly':
      return _$addLifeEntryToCoupleDocumentRequestFrequencyEnum_monthly;
    case 'quarterly':
      return _$addLifeEntryToCoupleDocumentRequestFrequencyEnum_quarterly;
    case 'biannual':
      return _$addLifeEntryToCoupleDocumentRequestFrequencyEnum_biannual;
    case 'annual':
      return _$addLifeEntryToCoupleDocumentRequestFrequencyEnum_annual;
    case 'single':
      return _$addLifeEntryToCoupleDocumentRequestFrequencyEnum_single;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AddLifeEntryToCoupleDocumentRequestFrequencyEnum>
    _$addLifeEntryToCoupleDocumentRequestFrequencyEnumValues = BuiltSet<
        AddLifeEntryToCoupleDocumentRequestFrequencyEnum>(const <AddLifeEntryToCoupleDocumentRequestFrequencyEnum>[
  _$addLifeEntryToCoupleDocumentRequestFrequencyEnum_monthly,
  _$addLifeEntryToCoupleDocumentRequestFrequencyEnum_quarterly,
  _$addLifeEntryToCoupleDocumentRequestFrequencyEnum_biannual,
  _$addLifeEntryToCoupleDocumentRequestFrequencyEnum_annual,
  _$addLifeEntryToCoupleDocumentRequestFrequencyEnum_single,
]);

Serializer<AddLifeEntryToCoupleDocumentRequestFrequencyEnum>
    _$addLifeEntryToCoupleDocumentRequestFrequencyEnumSerializer =
    _$AddLifeEntryToCoupleDocumentRequestFrequencyEnumSerializer();

class _$AddLifeEntryToCoupleDocumentRequestFrequencyEnumSerializer
    implements
        PrimitiveSerializer<AddLifeEntryToCoupleDocumentRequestFrequencyEnum> {
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
  final Iterable<Type> types = const <Type>[
    AddLifeEntryToCoupleDocumentRequestFrequencyEnum
  ];
  @override
  final String wireName = 'AddLifeEntryToCoupleDocumentRequestFrequencyEnum';

  @override
  Object serialize(Serializers serializers,
          AddLifeEntryToCoupleDocumentRequestFrequencyEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AddLifeEntryToCoupleDocumentRequestFrequencyEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AddLifeEntryToCoupleDocumentRequestFrequencyEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AddLifeEntryToCoupleDocumentRequest
    extends AddLifeEntryToCoupleDocumentRequest {
  @override
  final num? contribution;
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

  factory _$AddLifeEntryToCoupleDocumentRequest(
          [void Function(AddLifeEntryToCoupleDocumentRequestBuilder)?
              updates]) =>
      (AddLifeEntryToCoupleDocumentRequestBuilder()..update(updates))._build();

  _$AddLifeEntryToCoupleDocumentRequest._(
      {this.contribution,
      required this.personId,
      this.businessType,
      this.businessChannel,
      required this.sumAssured,
      required this.term,
      required this.frequency})
      : super._();
  @override
  AddLifeEntryToCoupleDocumentRequest rebuild(
          void Function(AddLifeEntryToCoupleDocumentRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddLifeEntryToCoupleDocumentRequestBuilder toBuilder() =>
      AddLifeEntryToCoupleDocumentRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddLifeEntryToCoupleDocumentRequest &&
        contribution == other.contribution &&
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
    _$hash = $jc(_$hash, contribution.hashCode);
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
    return (newBuiltValueToStringHelper(r'AddLifeEntryToCoupleDocumentRequest')
          ..add('contribution', contribution)
          ..add('personId', personId)
          ..add('businessType', businessType)
          ..add('businessChannel', businessChannel)
          ..add('sumAssured', sumAssured)
          ..add('term', term)
          ..add('frequency', frequency))
        .toString();
  }
}

class AddLifeEntryToCoupleDocumentRequestBuilder
    implements
        Builder<AddLifeEntryToCoupleDocumentRequest,
            AddLifeEntryToCoupleDocumentRequestBuilder>,
        DeathCoverBuilder {
  _$AddLifeEntryToCoupleDocumentRequest? _$v;

  num? _contribution;
  num? get contribution => _$this._contribution;
  set contribution(covariant num? contribution) =>
      _$this._contribution = contribution;

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

  AddLifeEntryToCoupleDocumentRequestBuilder() {
    AddLifeEntryToCoupleDocumentRequest._defaults(this);
  }

  AddLifeEntryToCoupleDocumentRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _contribution = $v.contribution;
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
  void replace(covariant AddLifeEntryToCoupleDocumentRequest other) {
    _$v = other as _$AddLifeEntryToCoupleDocumentRequest;
  }

  @override
  void update(
      void Function(AddLifeEntryToCoupleDocumentRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AddLifeEntryToCoupleDocumentRequest build() => _build();

  _$AddLifeEntryToCoupleDocumentRequest _build() {
    final _$result = _$v ??
        _$AddLifeEntryToCoupleDocumentRequest._(
          contribution: contribution,
          personId: BuiltValueNullFieldError.checkNotNull(
              personId, r'AddLifeEntryToCoupleDocumentRequest', 'personId'),
          businessType: businessType,
          businessChannel: businessChannel,
          sumAssured: BuiltValueNullFieldError.checkNotNull(
              sumAssured, r'AddLifeEntryToCoupleDocumentRequest', 'sumAssured'),
          term: BuiltValueNullFieldError.checkNotNull(
              term, r'AddLifeEntryToCoupleDocumentRequest', 'term'),
          frequency: BuiltValueNullFieldError.checkNotNull(
              frequency, r'AddLifeEntryToCoupleDocumentRequest', 'frequency'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
