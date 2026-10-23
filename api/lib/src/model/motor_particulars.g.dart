// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'motor_particulars.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MotorParticularsUseEnum _$motorParticularsUseEnum_private =
    const MotorParticularsUseEnum._('private');
const MotorParticularsUseEnum _$motorParticularsUseEnum_commercial =
    const MotorParticularsUseEnum._('commercial');

MotorParticularsUseEnum _$motorParticularsUseEnumValueOf(String name) {
  switch (name) {
    case 'private':
      return _$motorParticularsUseEnum_private;
    case 'commercial':
      return _$motorParticularsUseEnum_commercial;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<MotorParticularsUseEnum> _$motorParticularsUseEnumValues =
    BuiltSet<MotorParticularsUseEnum>(const <MotorParticularsUseEnum>[
  _$motorParticularsUseEnum_private,
  _$motorParticularsUseEnum_commercial,
]);

const MotorParticularsTypeEnum _$motorParticularsTypeEnum_saloon =
    const MotorParticularsTypeEnum._('saloon');
const MotorParticularsTypeEnum _$motorParticularsTypeEnum_SUV =
    const MotorParticularsTypeEnum._('SUV');
const MotorParticularsTypeEnum _$motorParticularsTypeEnum_lightTruck =
    const MotorParticularsTypeEnum._('lightTruck');
const MotorParticularsTypeEnum _$motorParticularsTypeEnum_heavyDutyTruck =
    const MotorParticularsTypeEnum._('heavyDutyTruck');

MotorParticularsTypeEnum _$motorParticularsTypeEnumValueOf(String name) {
  switch (name) {
    case 'saloon':
      return _$motorParticularsTypeEnum_saloon;
    case 'SUV':
      return _$motorParticularsTypeEnum_SUV;
    case 'lightTruck':
      return _$motorParticularsTypeEnum_lightTruck;
    case 'heavyDutyTruck':
      return _$motorParticularsTypeEnum_heavyDutyTruck;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<MotorParticularsTypeEnum> _$motorParticularsTypeEnumValues =
    BuiltSet<MotorParticularsTypeEnum>(const <MotorParticularsTypeEnum>[
  _$motorParticularsTypeEnum_saloon,
  _$motorParticularsTypeEnum_SUV,
  _$motorParticularsTypeEnum_lightTruck,
  _$motorParticularsTypeEnum_heavyDutyTruck,
]);

Serializer<MotorParticularsUseEnum> _$motorParticularsUseEnumSerializer =
    _$MotorParticularsUseEnumSerializer();
Serializer<MotorParticularsTypeEnum> _$motorParticularsTypeEnumSerializer =
    _$MotorParticularsTypeEnumSerializer();

class _$MotorParticularsUseEnumSerializer
    implements PrimitiveSerializer<MotorParticularsUseEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'private': 'Private',
    'commercial': 'Commercial',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Private': 'private',
    'Commercial': 'commercial',
  };

  @override
  final Iterable<Type> types = const <Type>[MotorParticularsUseEnum];
  @override
  final String wireName = 'MotorParticularsUseEnum';

  @override
  Object serialize(Serializers serializers, MotorParticularsUseEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  MotorParticularsUseEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      MotorParticularsUseEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$MotorParticularsTypeEnumSerializer
    implements PrimitiveSerializer<MotorParticularsTypeEnum> {
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
  final Iterable<Type> types = const <Type>[MotorParticularsTypeEnum];
  @override
  final String wireName = 'MotorParticularsTypeEnum';

  @override
  Object serialize(Serializers serializers, MotorParticularsTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  MotorParticularsTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      MotorParticularsTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

abstract class MotorParticularsBuilder {
  void replace(MotorParticulars other);
  void update(void Function(MotorParticularsBuilder) updates);
  String? get motorId;
  set motorId(String? motorId);

  String? get owner;
  set owner(String? owner);

  String? get make;
  set make(String? make);

  String? get model;
  set model(String? model);

  int? get year;
  set year(int? year);

  String? get chassis;
  set chassis(String? chassis);

  String? get registrationNumber;
  set registrationNumber(String? registrationNumber);

  String? get engineNumber;
  set engineNumber(String? engineNumber);

  String? get paymentOption;
  set paymentOption(String? paymentOption);

  num? get motorValue;
  set motorValue(num? motorValue);

  MotorParticularsUseEnum? get use;
  set use(MotorParticularsUseEnum? use);

  MotorParticularsTypeEnum? get type;
  set type(MotorParticularsTypeEnum? type);
}

class _$$MotorParticulars extends $MotorParticulars {
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

  factory _$$MotorParticulars(
          [void Function($MotorParticularsBuilder)? updates]) =>
      ($MotorParticularsBuilder()..update(updates))._build();

  _$$MotorParticulars._(
      {this.motorId,
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
  $MotorParticulars rebuild(void Function($MotorParticularsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $MotorParticularsBuilder toBuilder() =>
      $MotorParticularsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $MotorParticulars &&
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
    return (newBuiltValueToStringHelper(r'$MotorParticulars')
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

class $MotorParticularsBuilder
    implements
        Builder<$MotorParticulars, $MotorParticularsBuilder>,
        MotorParticularsBuilder {
  _$$MotorParticulars? _$v;

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

  $MotorParticularsBuilder() {
    $MotorParticulars._defaults(this);
  }

  $MotorParticularsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
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
  void replace(covariant $MotorParticulars other) {
    _$v = other as _$$MotorParticulars;
  }

  @override
  void update(void Function($MotorParticularsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $MotorParticulars build() => _build();

  _$$MotorParticulars _build() {
    final _$result = _$v ??
        _$$MotorParticulars._(
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
