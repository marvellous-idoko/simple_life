// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'claimant.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ClaimantResponsibilityEnum _$claimantResponsibilityEnum_us =
    const ClaimantResponsibilityEnum._('us');
const ClaimantResponsibilityEnum _$claimantResponsibilityEnum_others =
    const ClaimantResponsibilityEnum._('others');
const ClaimantResponsibilityEnum _$claimantResponsibilityEnum_shared =
    const ClaimantResponsibilityEnum._('shared');

ClaimantResponsibilityEnum _$claimantResponsibilityEnumValueOf(String name) {
  switch (name) {
    case 'us':
      return _$claimantResponsibilityEnum_us;
    case 'others':
      return _$claimantResponsibilityEnum_others;
    case 'shared':
      return _$claimantResponsibilityEnum_shared;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ClaimantResponsibilityEnum> _$claimantResponsibilityEnumValues =
    BuiltSet<ClaimantResponsibilityEnum>(const <ClaimantResponsibilityEnum>[
  _$claimantResponsibilityEnum_us,
  _$claimantResponsibilityEnum_others,
  _$claimantResponsibilityEnum_shared,
]);

const ClaimantClaimantTypeEnum _$claimantClaimantTypeEnum_insured =
    const ClaimantClaimantTypeEnum._('insured');
const ClaimantClaimantTypeEnum _$claimantClaimantTypeEnum_thirdParty =
    const ClaimantClaimantTypeEnum._('thirdParty');
const ClaimantClaimantTypeEnum _$claimantClaimantTypeEnum_beneficiary =
    const ClaimantClaimantTypeEnum._('beneficiary');
const ClaimantClaimantTypeEnum _$claimantClaimantTypeEnum_lossAdjuster =
    const ClaimantClaimantTypeEnum._('lossAdjuster');

ClaimantClaimantTypeEnum _$claimantClaimantTypeEnumValueOf(String name) {
  switch (name) {
    case 'insured':
      return _$claimantClaimantTypeEnum_insured;
    case 'thirdParty':
      return _$claimantClaimantTypeEnum_thirdParty;
    case 'beneficiary':
      return _$claimantClaimantTypeEnum_beneficiary;
    case 'lossAdjuster':
      return _$claimantClaimantTypeEnum_lossAdjuster;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ClaimantClaimantTypeEnum> _$claimantClaimantTypeEnumValues =
    BuiltSet<ClaimantClaimantTypeEnum>(const <ClaimantClaimantTypeEnum>[
  _$claimantClaimantTypeEnum_insured,
  _$claimantClaimantTypeEnum_thirdParty,
  _$claimantClaimantTypeEnum_beneficiary,
  _$claimantClaimantTypeEnum_lossAdjuster,
]);

const ClaimantClaimTypeEnum _$claimantClaimTypeEnum_material =
    const ClaimantClaimTypeEnum._('material');
const ClaimantClaimTypeEnum _$claimantClaimTypeEnum_bodily =
    const ClaimantClaimTypeEnum._('bodily');
const ClaimantClaimTypeEnum _$claimantClaimTypeEnum_totalLoss =
    const ClaimantClaimTypeEnum._('totalLoss');
const ClaimantClaimTypeEnum _$claimantClaimTypeEnum_death =
    const ClaimantClaimTypeEnum._('death');
const ClaimantClaimTypeEnum _$claimantClaimTypeEnum_others =
    const ClaimantClaimTypeEnum._('others');
const ClaimantClaimTypeEnum _$claimantClaimTypeEnum_policyCancellation =
    const ClaimantClaimTypeEnum._('policyCancellation');
const ClaimantClaimTypeEnum _$claimantClaimTypeEnum_surrender =
    const ClaimantClaimTypeEnum._('surrender');
const ClaimantClaimTypeEnum _$claimantClaimTypeEnum_policyLoan =
    const ClaimantClaimTypeEnum._('policyLoan');
const ClaimantClaimTypeEnum _$claimantClaimTypeEnum_policyWithdrawal =
    const ClaimantClaimTypeEnum._('policyWithdrawal');
const ClaimantClaimTypeEnum _$claimantClaimTypeEnum_policyMaturity =
    const ClaimantClaimTypeEnum._('policyMaturity');
const ClaimantClaimTypeEnum _$claimantClaimTypeEnum_partialMaturity =
    const ClaimantClaimTypeEnum._('partialMaturity');

ClaimantClaimTypeEnum _$claimantClaimTypeEnumValueOf(String name) {
  switch (name) {
    case 'material':
      return _$claimantClaimTypeEnum_material;
    case 'bodily':
      return _$claimantClaimTypeEnum_bodily;
    case 'totalLoss':
      return _$claimantClaimTypeEnum_totalLoss;
    case 'death':
      return _$claimantClaimTypeEnum_death;
    case 'others':
      return _$claimantClaimTypeEnum_others;
    case 'policyCancellation':
      return _$claimantClaimTypeEnum_policyCancellation;
    case 'surrender':
      return _$claimantClaimTypeEnum_surrender;
    case 'policyLoan':
      return _$claimantClaimTypeEnum_policyLoan;
    case 'policyWithdrawal':
      return _$claimantClaimTypeEnum_policyWithdrawal;
    case 'policyMaturity':
      return _$claimantClaimTypeEnum_policyMaturity;
    case 'partialMaturity':
      return _$claimantClaimTypeEnum_partialMaturity;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ClaimantClaimTypeEnum> _$claimantClaimTypeEnumValues =
    BuiltSet<ClaimantClaimTypeEnum>(const <ClaimantClaimTypeEnum>[
  _$claimantClaimTypeEnum_material,
  _$claimantClaimTypeEnum_bodily,
  _$claimantClaimTypeEnum_totalLoss,
  _$claimantClaimTypeEnum_death,
  _$claimantClaimTypeEnum_others,
  _$claimantClaimTypeEnum_policyCancellation,
  _$claimantClaimTypeEnum_surrender,
  _$claimantClaimTypeEnum_policyLoan,
  _$claimantClaimTypeEnum_policyWithdrawal,
  _$claimantClaimTypeEnum_policyMaturity,
  _$claimantClaimTypeEnum_partialMaturity,
]);

Serializer<ClaimantResponsibilityEnum> _$claimantResponsibilityEnumSerializer =
    _$ClaimantResponsibilityEnumSerializer();
Serializer<ClaimantClaimantTypeEnum> _$claimantClaimantTypeEnumSerializer =
    _$ClaimantClaimantTypeEnumSerializer();
Serializer<ClaimantClaimTypeEnum> _$claimantClaimTypeEnumSerializer =
    _$ClaimantClaimTypeEnumSerializer();

class _$ClaimantResponsibilityEnumSerializer
    implements PrimitiveSerializer<ClaimantResponsibilityEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'us': 'Us',
    'others': 'Others',
    'shared': 'Shared',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Us': 'us',
    'Others': 'others',
    'Shared': 'shared',
  };

  @override
  final Iterable<Type> types = const <Type>[ClaimantResponsibilityEnum];
  @override
  final String wireName = 'ClaimantResponsibilityEnum';

  @override
  Object serialize(Serializers serializers, ClaimantResponsibilityEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ClaimantResponsibilityEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ClaimantResponsibilityEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ClaimantClaimantTypeEnumSerializer
    implements PrimitiveSerializer<ClaimantClaimantTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'insured': 'Insured',
    'thirdParty': 'Third Party',
    'beneficiary': 'Beneficiary',
    'lossAdjuster': 'Loss Adjuster',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Insured': 'insured',
    'Third Party': 'thirdParty',
    'Beneficiary': 'beneficiary',
    'Loss Adjuster': 'lossAdjuster',
  };

  @override
  final Iterable<Type> types = const <Type>[ClaimantClaimantTypeEnum];
  @override
  final String wireName = 'ClaimantClaimantTypeEnum';

  @override
  Object serialize(Serializers serializers, ClaimantClaimantTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ClaimantClaimantTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ClaimantClaimantTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ClaimantClaimTypeEnumSerializer
    implements PrimitiveSerializer<ClaimantClaimTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'material': 'Material',
    'bodily': 'Bodily',
    'totalLoss': 'Total Loss',
    'death': 'Death',
    'others': 'Others',
    'policyCancellation': 'Policy Cancellation',
    'surrender': 'Surrender',
    'policyLoan': 'Policy Loan',
    'policyWithdrawal': 'Policy Withdrawal',
    'policyMaturity': 'Policy Maturity',
    'partialMaturity': 'Partial Maturity',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Material': 'material',
    'Bodily': 'bodily',
    'Total Loss': 'totalLoss',
    'Death': 'death',
    'Others': 'others',
    'Policy Cancellation': 'policyCancellation',
    'Surrender': 'surrender',
    'Policy Loan': 'policyLoan',
    'Policy Withdrawal': 'policyWithdrawal',
    'Policy Maturity': 'policyMaturity',
    'Partial Maturity': 'partialMaturity',
  };

  @override
  final Iterable<Type> types = const <Type>[ClaimantClaimTypeEnum];
  @override
  final String wireName = 'ClaimantClaimTypeEnum';

  @override
  Object serialize(Serializers serializers, ClaimantClaimTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ClaimantClaimTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ClaimantClaimTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Claimant extends Claimant {
  @override
  final String? claimantId;
  @override
  final String? claimantName;
  @override
  final BuiltList<ClaimantDetailsInner>? details;
  @override
  final ClaimantResponsibilityEnum? responsibility;
  @override
  final ClaimantClaimantTypeEnum? claimantType;
  @override
  final ClaimantClaimTypeEnum? claimType;

  factory _$Claimant([void Function(ClaimantBuilder)? updates]) =>
      (ClaimantBuilder()..update(updates))._build();

  _$Claimant._(
      {this.claimantId,
      this.claimantName,
      this.details,
      this.responsibility,
      this.claimantType,
      this.claimType})
      : super._();
  @override
  Claimant rebuild(void Function(ClaimantBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClaimantBuilder toBuilder() => ClaimantBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Claimant &&
        claimantId == other.claimantId &&
        claimantName == other.claimantName &&
        details == other.details &&
        responsibility == other.responsibility &&
        claimantType == other.claimantType &&
        claimType == other.claimType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, claimantId.hashCode);
    _$hash = $jc(_$hash, claimantName.hashCode);
    _$hash = $jc(_$hash, details.hashCode);
    _$hash = $jc(_$hash, responsibility.hashCode);
    _$hash = $jc(_$hash, claimantType.hashCode);
    _$hash = $jc(_$hash, claimType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Claimant')
          ..add('claimantId', claimantId)
          ..add('claimantName', claimantName)
          ..add('details', details)
          ..add('responsibility', responsibility)
          ..add('claimantType', claimantType)
          ..add('claimType', claimType))
        .toString();
  }
}

class ClaimantBuilder implements Builder<Claimant, ClaimantBuilder> {
  _$Claimant? _$v;

  String? _claimantId;
  String? get claimantId => _$this._claimantId;
  set claimantId(String? claimantId) => _$this._claimantId = claimantId;

  String? _claimantName;
  String? get claimantName => _$this._claimantName;
  set claimantName(String? claimantName) => _$this._claimantName = claimantName;

  ListBuilder<ClaimantDetailsInner>? _details;
  ListBuilder<ClaimantDetailsInner> get details =>
      _$this._details ??= ListBuilder<ClaimantDetailsInner>();
  set details(ListBuilder<ClaimantDetailsInner>? details) =>
      _$this._details = details;

  ClaimantResponsibilityEnum? _responsibility;
  ClaimantResponsibilityEnum? get responsibility => _$this._responsibility;
  set responsibility(ClaimantResponsibilityEnum? responsibility) =>
      _$this._responsibility = responsibility;

  ClaimantClaimantTypeEnum? _claimantType;
  ClaimantClaimantTypeEnum? get claimantType => _$this._claimantType;
  set claimantType(ClaimantClaimantTypeEnum? claimantType) =>
      _$this._claimantType = claimantType;

  ClaimantClaimTypeEnum? _claimType;
  ClaimantClaimTypeEnum? get claimType => _$this._claimType;
  set claimType(ClaimantClaimTypeEnum? claimType) =>
      _$this._claimType = claimType;

  ClaimantBuilder() {
    Claimant._defaults(this);
  }

  ClaimantBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _claimantId = $v.claimantId;
      _claimantName = $v.claimantName;
      _details = $v.details?.toBuilder();
      _responsibility = $v.responsibility;
      _claimantType = $v.claimantType;
      _claimType = $v.claimType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Claimant other) {
    _$v = other as _$Claimant;
  }

  @override
  void update(void Function(ClaimantBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Claimant build() => _build();

  _$Claimant _build() {
    _$Claimant _$result;
    try {
      _$result = _$v ??
          _$Claimant._(
            claimantId: claimantId,
            claimantName: claimantName,
            details: _details?.build(),
            responsibility: responsibility,
            claimantType: claimantType,
            claimType: claimType,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        _details?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Claimant', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
