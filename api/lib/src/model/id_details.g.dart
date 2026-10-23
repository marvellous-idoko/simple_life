// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'id_details.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const IdDetailsTypeEnum _$idDetailsTypeEnum_driversLicense =
    const IdDetailsTypeEnum._('driversLicense');
const IdDetailsTypeEnum _$idDetailsTypeEnum_internationalPassport =
    const IdDetailsTypeEnum._('internationalPassport');
const IdDetailsTypeEnum _$idDetailsTypeEnum_bvn =
    const IdDetailsTypeEnum._('bvn');
const IdDetailsTypeEnum _$idDetailsTypeEnum_votersCard =
    const IdDetailsTypeEnum._('votersCard');
const IdDetailsTypeEnum _$idDetailsTypeEnum_nimc =
    const IdDetailsTypeEnum._('nimc');

IdDetailsTypeEnum _$idDetailsTypeEnumValueOf(String name) {
  switch (name) {
    case 'driversLicense':
      return _$idDetailsTypeEnum_driversLicense;
    case 'internationalPassport':
      return _$idDetailsTypeEnum_internationalPassport;
    case 'bvn':
      return _$idDetailsTypeEnum_bvn;
    case 'votersCard':
      return _$idDetailsTypeEnum_votersCard;
    case 'nimc':
      return _$idDetailsTypeEnum_nimc;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<IdDetailsTypeEnum> _$idDetailsTypeEnumValues =
    BuiltSet<IdDetailsTypeEnum>(const <IdDetailsTypeEnum>[
  _$idDetailsTypeEnum_driversLicense,
  _$idDetailsTypeEnum_internationalPassport,
  _$idDetailsTypeEnum_bvn,
  _$idDetailsTypeEnum_votersCard,
  _$idDetailsTypeEnum_nimc,
]);

Serializer<IdDetailsTypeEnum> _$idDetailsTypeEnumSerializer =
    _$IdDetailsTypeEnumSerializer();

class _$IdDetailsTypeEnumSerializer
    implements PrimitiveSerializer<IdDetailsTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'driversLicense': 'driversLicense',
    'internationalPassport': 'internationalPassport',
    'bvn': 'bvn',
    'votersCard': 'votersCard',
    'nimc': 'nimc',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'driversLicense': 'driversLicense',
    'internationalPassport': 'internationalPassport',
    'bvn': 'bvn',
    'votersCard': 'votersCard',
    'nimc': 'nimc',
  };

  @override
  final Iterable<Type> types = const <Type>[IdDetailsTypeEnum];
  @override
  final String wireName = 'IdDetailsTypeEnum';

  @override
  Object serialize(Serializers serializers, IdDetailsTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  IdDetailsTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      IdDetailsTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$IdDetails extends IdDetails {
  @override
  final String number;
  @override
  final String expiry;
  @override
  final IdDetailsTypeEnum type;

  factory _$IdDetails([void Function(IdDetailsBuilder)? updates]) =>
      (IdDetailsBuilder()..update(updates))._build();

  _$IdDetails._(
      {required this.number, required this.expiry, required this.type})
      : super._();
  @override
  IdDetails rebuild(void Function(IdDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IdDetailsBuilder toBuilder() => IdDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IdDetails &&
        number == other.number &&
        expiry == other.expiry &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, number.hashCode);
    _$hash = $jc(_$hash, expiry.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IdDetails')
          ..add('number', number)
          ..add('expiry', expiry)
          ..add('type', type))
        .toString();
  }
}

class IdDetailsBuilder implements Builder<IdDetails, IdDetailsBuilder> {
  _$IdDetails? _$v;

  String? _number;
  String? get number => _$this._number;
  set number(String? number) => _$this._number = number;

  String? _expiry;
  String? get expiry => _$this._expiry;
  set expiry(String? expiry) => _$this._expiry = expiry;

  IdDetailsTypeEnum? _type;
  IdDetailsTypeEnum? get type => _$this._type;
  set type(IdDetailsTypeEnum? type) => _$this._type = type;

  IdDetailsBuilder() {
    IdDetails._defaults(this);
  }

  IdDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _number = $v.number;
      _expiry = $v.expiry;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IdDetails other) {
    _$v = other as _$IdDetails;
  }

  @override
  void update(void Function(IdDetailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IdDetails build() => _build();

  _$IdDetails _build() {
    final _$result = _$v ??
        _$IdDetails._(
          number: BuiltValueNullFieldError.checkNotNull(
              number, r'IdDetails', 'number'),
          expiry: BuiltValueNullFieldError.checkNotNull(
              expiry, r'IdDetails', 'expiry'),
          type:
              BuiltValueNullFieldError.checkNotNull(type, r'IdDetails', 'type'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
