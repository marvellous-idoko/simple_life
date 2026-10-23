// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_save_document_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CreateSaveDocumentRequestFrequencyEnum
    _$createSaveDocumentRequestFrequencyEnum_monthly =
    const CreateSaveDocumentRequestFrequencyEnum._('monthly');
const CreateSaveDocumentRequestFrequencyEnum
    _$createSaveDocumentRequestFrequencyEnum_quarterly =
    const CreateSaveDocumentRequestFrequencyEnum._('quarterly');
const CreateSaveDocumentRequestFrequencyEnum
    _$createSaveDocumentRequestFrequencyEnum_biannual =
    const CreateSaveDocumentRequestFrequencyEnum._('biannual');
const CreateSaveDocumentRequestFrequencyEnum
    _$createSaveDocumentRequestFrequencyEnum_annual =
    const CreateSaveDocumentRequestFrequencyEnum._('annual');
const CreateSaveDocumentRequestFrequencyEnum
    _$createSaveDocumentRequestFrequencyEnum_single =
    const CreateSaveDocumentRequestFrequencyEnum._('single');

CreateSaveDocumentRequestFrequencyEnum
    _$createSaveDocumentRequestFrequencyEnumValueOf(String name) {
  switch (name) {
    case 'monthly':
      return _$createSaveDocumentRequestFrequencyEnum_monthly;
    case 'quarterly':
      return _$createSaveDocumentRequestFrequencyEnum_quarterly;
    case 'biannual':
      return _$createSaveDocumentRequestFrequencyEnum_biannual;
    case 'annual':
      return _$createSaveDocumentRequestFrequencyEnum_annual;
    case 'single':
      return _$createSaveDocumentRequestFrequencyEnum_single;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CreateSaveDocumentRequestFrequencyEnum>
    _$createSaveDocumentRequestFrequencyEnumValues = BuiltSet<
        CreateSaveDocumentRequestFrequencyEnum>(const <CreateSaveDocumentRequestFrequencyEnum>[
  _$createSaveDocumentRequestFrequencyEnum_monthly,
  _$createSaveDocumentRequestFrequencyEnum_quarterly,
  _$createSaveDocumentRequestFrequencyEnum_biannual,
  _$createSaveDocumentRequestFrequencyEnum_annual,
  _$createSaveDocumentRequestFrequencyEnum_single,
]);

Serializer<CreateSaveDocumentRequestFrequencyEnum>
    _$createSaveDocumentRequestFrequencyEnumSerializer =
    _$CreateSaveDocumentRequestFrequencyEnumSerializer();

class _$CreateSaveDocumentRequestFrequencyEnumSerializer
    implements PrimitiveSerializer<CreateSaveDocumentRequestFrequencyEnum> {
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
    CreateSaveDocumentRequestFrequencyEnum
  ];
  @override
  final String wireName = 'CreateSaveDocumentRequestFrequencyEnum';

  @override
  Object serialize(Serializers serializers,
          CreateSaveDocumentRequestFrequencyEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CreateSaveDocumentRequestFrequencyEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CreateSaveDocumentRequestFrequencyEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CreateSaveDocumentRequest extends CreateSaveDocumentRequest {
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

  factory _$CreateSaveDocumentRequest(
          [void Function(CreateSaveDocumentRequestBuilder)? updates]) =>
      (CreateSaveDocumentRequestBuilder()..update(updates))._build();

  _$CreateSaveDocumentRequest._(
      {this.contribution,
      required this.personId,
      this.businessType,
      this.businessChannel,
      required this.sumAssured,
      required this.term,
      required this.frequency})
      : super._();
  @override
  CreateSaveDocumentRequest rebuild(
          void Function(CreateSaveDocumentRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateSaveDocumentRequestBuilder toBuilder() =>
      CreateSaveDocumentRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateSaveDocumentRequest &&
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
    return (newBuiltValueToStringHelper(r'CreateSaveDocumentRequest')
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

class CreateSaveDocumentRequestBuilder
    implements
        Builder<CreateSaveDocumentRequest, CreateSaveDocumentRequestBuilder>,
        DeathCoverBuilder {
  _$CreateSaveDocumentRequest? _$v;

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

  CreateSaveDocumentRequestBuilder() {
    CreateSaveDocumentRequest._defaults(this);
  }

  CreateSaveDocumentRequestBuilder get _$this {
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
  void replace(covariant CreateSaveDocumentRequest other) {
    _$v = other as _$CreateSaveDocumentRequest;
  }

  @override
  void update(void Function(CreateSaveDocumentRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateSaveDocumentRequest build() => _build();

  _$CreateSaveDocumentRequest _build() {
    final _$result = _$v ??
        _$CreateSaveDocumentRequest._(
          contribution: contribution,
          personId: BuiltValueNullFieldError.checkNotNull(
              personId, r'CreateSaveDocumentRequest', 'personId'),
          businessType: businessType,
          businessChannel: businessChannel,
          sumAssured: BuiltValueNullFieldError.checkNotNull(
              sumAssured, r'CreateSaveDocumentRequest', 'sumAssured'),
          term: BuiltValueNullFieldError.checkNotNull(
              term, r'CreateSaveDocumentRequest', 'term'),
          frequency: BuiltValueNullFieldError.checkNotNull(
              frequency, r'CreateSaveDocumentRequest', 'frequency'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
