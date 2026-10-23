// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_motor_from3rd_party_document200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GetMotorFrom3rdPartyDocument200ResponseUseEnum
    _$getMotorFrom3rdPartyDocument200ResponseUseEnum_private =
    const GetMotorFrom3rdPartyDocument200ResponseUseEnum._('private');
const GetMotorFrom3rdPartyDocument200ResponseUseEnum
    _$getMotorFrom3rdPartyDocument200ResponseUseEnum_commercial =
    const GetMotorFrom3rdPartyDocument200ResponseUseEnum._('commercial');

GetMotorFrom3rdPartyDocument200ResponseUseEnum
    _$getMotorFrom3rdPartyDocument200ResponseUseEnumValueOf(String name) {
  switch (name) {
    case 'private':
      return _$getMotorFrom3rdPartyDocument200ResponseUseEnum_private;
    case 'commercial':
      return _$getMotorFrom3rdPartyDocument200ResponseUseEnum_commercial;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<GetMotorFrom3rdPartyDocument200ResponseUseEnum>
    _$getMotorFrom3rdPartyDocument200ResponseUseEnumValues = BuiltSet<
        GetMotorFrom3rdPartyDocument200ResponseUseEnum>(const <GetMotorFrom3rdPartyDocument200ResponseUseEnum>[
  _$getMotorFrom3rdPartyDocument200ResponseUseEnum_private,
  _$getMotorFrom3rdPartyDocument200ResponseUseEnum_commercial,
]);

const GetMotorFrom3rdPartyDocument200ResponseTypeEnum
    _$getMotorFrom3rdPartyDocument200ResponseTypeEnum_saloon =
    const GetMotorFrom3rdPartyDocument200ResponseTypeEnum._('saloon');
const GetMotorFrom3rdPartyDocument200ResponseTypeEnum
    _$getMotorFrom3rdPartyDocument200ResponseTypeEnum_SUV =
    const GetMotorFrom3rdPartyDocument200ResponseTypeEnum._('SUV');
const GetMotorFrom3rdPartyDocument200ResponseTypeEnum
    _$getMotorFrom3rdPartyDocument200ResponseTypeEnum_lightTruck =
    const GetMotorFrom3rdPartyDocument200ResponseTypeEnum._('lightTruck');
const GetMotorFrom3rdPartyDocument200ResponseTypeEnum
    _$getMotorFrom3rdPartyDocument200ResponseTypeEnum_heavyDutyTruck =
    const GetMotorFrom3rdPartyDocument200ResponseTypeEnum._('heavyDutyTruck');

GetMotorFrom3rdPartyDocument200ResponseTypeEnum
    _$getMotorFrom3rdPartyDocument200ResponseTypeEnumValueOf(String name) {
  switch (name) {
    case 'saloon':
      return _$getMotorFrom3rdPartyDocument200ResponseTypeEnum_saloon;
    case 'SUV':
      return _$getMotorFrom3rdPartyDocument200ResponseTypeEnum_SUV;
    case 'lightTruck':
      return _$getMotorFrom3rdPartyDocument200ResponseTypeEnum_lightTruck;
    case 'heavyDutyTruck':
      return _$getMotorFrom3rdPartyDocument200ResponseTypeEnum_heavyDutyTruck;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<GetMotorFrom3rdPartyDocument200ResponseTypeEnum>
    _$getMotorFrom3rdPartyDocument200ResponseTypeEnumValues = BuiltSet<
        GetMotorFrom3rdPartyDocument200ResponseTypeEnum>(const <GetMotorFrom3rdPartyDocument200ResponseTypeEnum>[
  _$getMotorFrom3rdPartyDocument200ResponseTypeEnum_saloon,
  _$getMotorFrom3rdPartyDocument200ResponseTypeEnum_SUV,
  _$getMotorFrom3rdPartyDocument200ResponseTypeEnum_lightTruck,
  _$getMotorFrom3rdPartyDocument200ResponseTypeEnum_heavyDutyTruck,
]);

Serializer<GetMotorFrom3rdPartyDocument200ResponseUseEnum>
    _$getMotorFrom3rdPartyDocument200ResponseUseEnumSerializer =
    _$GetMotorFrom3rdPartyDocument200ResponseUseEnumSerializer();
Serializer<GetMotorFrom3rdPartyDocument200ResponseTypeEnum>
    _$getMotorFrom3rdPartyDocument200ResponseTypeEnumSerializer =
    _$GetMotorFrom3rdPartyDocument200ResponseTypeEnumSerializer();

class _$GetMotorFrom3rdPartyDocument200ResponseUseEnumSerializer
    implements
        PrimitiveSerializer<GetMotorFrom3rdPartyDocument200ResponseUseEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'private': 'Private',
    'commercial': 'Commercial',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Private': 'private',
    'Commercial': 'commercial',
  };

  @override
  final Iterable<Type> types = const <Type>[
    GetMotorFrom3rdPartyDocument200ResponseUseEnum
  ];
  @override
  final String wireName = 'GetMotorFrom3rdPartyDocument200ResponseUseEnum';

  @override
  Object serialize(Serializers serializers,
          GetMotorFrom3rdPartyDocument200ResponseUseEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  GetMotorFrom3rdPartyDocument200ResponseUseEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GetMotorFrom3rdPartyDocument200ResponseUseEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$GetMotorFrom3rdPartyDocument200ResponseTypeEnumSerializer
    implements
        PrimitiveSerializer<GetMotorFrom3rdPartyDocument200ResponseTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'saloon': 'Saloon',
    'SUV': 'SUV',
    'lightTruck': 'Light Truck',
    'heavyDutyTruck': 'Heavy Duty Truck',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Saloon': 'saloon',
    'SUV': 'SUV',
    'Light Truck': 'lightTruck',
    'Heavy Duty Truck': 'heavyDutyTruck',
  };

  @override
  final Iterable<Type> types = const <Type>[
    GetMotorFrom3rdPartyDocument200ResponseTypeEnum
  ];
  @override
  final String wireName = 'GetMotorFrom3rdPartyDocument200ResponseTypeEnum';

  @override
  Object serialize(Serializers serializers,
          GetMotorFrom3rdPartyDocument200ResponseTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  GetMotorFrom3rdPartyDocument200ResponseTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GetMotorFrom3rdPartyDocument200ResponseTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$GetMotorFrom3rdPartyDocument200Response
    extends GetMotorFrom3rdPartyDocument200Response {
  @override
  final num? premium;
  @override
  final String? motorId;
  @override
  final String? owner;
  @override
  final String? make;
  @override
  final String? model;
  @override
  final int? year;
  @override
  final String? chassis;
  @override
  final String? registrationNumber;
  @override
  final String? engineNumber;
  @override
  final String? paymentOption;
  @override
  final num? motorValue;
  @override
  final MotorParticularsUseEnum? use;
  @override
  final MotorParticularsTypeEnum? type;

  factory _$GetMotorFrom3rdPartyDocument200Response(
          [void Function(GetMotorFrom3rdPartyDocument200ResponseBuilder)?
              updates]) =>
      (GetMotorFrom3rdPartyDocument200ResponseBuilder()..update(updates))
          ._build();

  _$GetMotorFrom3rdPartyDocument200Response._(
      {this.premium,
      this.motorId,
      this.owner,
      this.make,
      this.model,
      this.year,
      this.chassis,
      this.registrationNumber,
      this.engineNumber,
      this.paymentOption,
      this.motorValue,
      this.use,
      this.type})
      : super._();
  @override
  GetMotorFrom3rdPartyDocument200Response rebuild(
          void Function(GetMotorFrom3rdPartyDocument200ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetMotorFrom3rdPartyDocument200ResponseBuilder toBuilder() =>
      GetMotorFrom3rdPartyDocument200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetMotorFrom3rdPartyDocument200Response &&
        premium == other.premium &&
        motorId == other.motorId &&
        owner == other.owner &&
        make == other.make &&
        model == other.model &&
        year == other.year &&
        chassis == other.chassis &&
        registrationNumber == other.registrationNumber &&
        engineNumber == other.engineNumber &&
        paymentOption == other.paymentOption &&
        motorValue == other.motorValue &&
        use == other.use &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, premium.hashCode);
    _$hash = $jc(_$hash, motorId.hashCode);
    _$hash = $jc(_$hash, owner.hashCode);
    _$hash = $jc(_$hash, make.hashCode);
    _$hash = $jc(_$hash, model.hashCode);
    _$hash = $jc(_$hash, year.hashCode);
    _$hash = $jc(_$hash, chassis.hashCode);
    _$hash = $jc(_$hash, registrationNumber.hashCode);
    _$hash = $jc(_$hash, engineNumber.hashCode);
    _$hash = $jc(_$hash, paymentOption.hashCode);
    _$hash = $jc(_$hash, motorValue.hashCode);
    _$hash = $jc(_$hash, use.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GetMotorFrom3rdPartyDocument200Response')
          ..add('premium', premium)
          ..add('motorId', motorId)
          ..add('owner', owner)
          ..add('make', make)
          ..add('model', model)
          ..add('year', year)
          ..add('chassis', chassis)
          ..add('registrationNumber', registrationNumber)
          ..add('engineNumber', engineNumber)
          ..add('paymentOption', paymentOption)
          ..add('motorValue', motorValue)
          ..add('use', use)
          ..add('type', type))
        .toString();
  }
}

class GetMotorFrom3rdPartyDocument200ResponseBuilder
    implements
        Builder<GetMotorFrom3rdPartyDocument200Response,
            GetMotorFrom3rdPartyDocument200ResponseBuilder>,
        MotorParticularsBuilder {
  _$GetMotorFrom3rdPartyDocument200Response? _$v;

  num? _premium;
  num? get premium => _$this._premium;
  set premium(covariant num? premium) => _$this._premium = premium;

  String? _motorId;
  String? get motorId => _$this._motorId;
  set motorId(covariant String? motorId) => _$this._motorId = motorId;

  String? _owner;
  String? get owner => _$this._owner;
  set owner(covariant String? owner) => _$this._owner = owner;

  String? _make;
  String? get make => _$this._make;
  set make(covariant String? make) => _$this._make = make;

  String? _model;
  String? get model => _$this._model;
  set model(covariant String? model) => _$this._model = model;

  int? _year;
  int? get year => _$this._year;
  set year(covariant int? year) => _$this._year = year;

  String? _chassis;
  String? get chassis => _$this._chassis;
  set chassis(covariant String? chassis) => _$this._chassis = chassis;

  String? _registrationNumber;
  String? get registrationNumber => _$this._registrationNumber;
  set registrationNumber(covariant String? registrationNumber) =>
      _$this._registrationNumber = registrationNumber;

  String? _engineNumber;
  String? get engineNumber => _$this._engineNumber;
  set engineNumber(covariant String? engineNumber) =>
      _$this._engineNumber = engineNumber;

  String? _paymentOption;
  String? get paymentOption => _$this._paymentOption;
  set paymentOption(covariant String? paymentOption) =>
      _$this._paymentOption = paymentOption;

  num? _motorValue;
  num? get motorValue => _$this._motorValue;
  set motorValue(covariant num? motorValue) => _$this._motorValue = motorValue;

  MotorParticularsUseEnum? _use;
  MotorParticularsUseEnum? get use => _$this._use;
  set use(covariant MotorParticularsUseEnum? use) => _$this._use = use;

  MotorParticularsTypeEnum? _type;
  MotorParticularsTypeEnum? get type => _$this._type;
  set type(covariant MotorParticularsTypeEnum? type) => _$this._type = type;

  GetMotorFrom3rdPartyDocument200ResponseBuilder() {
    GetMotorFrom3rdPartyDocument200Response._defaults(this);
  }

  GetMotorFrom3rdPartyDocument200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _premium = $v.premium;
      _motorId = $v.motorId;
      _owner = $v.owner;
      _make = $v.make;
      _model = $v.model;
      _year = $v.year;
      _chassis = $v.chassis;
      _registrationNumber = $v.registrationNumber;
      _engineNumber = $v.engineNumber;
      _paymentOption = $v.paymentOption;
      _motorValue = $v.motorValue;
      _use = $v.use;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant GetMotorFrom3rdPartyDocument200Response other) {
    _$v = other as _$GetMotorFrom3rdPartyDocument200Response;
  }

  @override
  void update(
      void Function(GetMotorFrom3rdPartyDocument200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetMotorFrom3rdPartyDocument200Response build() => _build();

  _$GetMotorFrom3rdPartyDocument200Response _build() {
    final _$result = _$v ??
        _$GetMotorFrom3rdPartyDocument200Response._(
          premium: premium,
          motorId: motorId,
          owner: owner,
          make: make,
          model: model,
          year: year,
          chassis: chassis,
          registrationNumber: registrationNumber,
          engineNumber: engineNumber,
          paymentOption: paymentOption,
          motorValue: motorValue,
          use: use,
          type: type,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
