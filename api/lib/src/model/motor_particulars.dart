//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'motor_particulars.g.dart';

/// MotorParticulars
///
/// Properties:
/// * [motorId] - The name of the  car owner
/// * [owner] - The name of the  car owner
/// * [make] - The make of the  car
/// * [model] - The model of the car
/// * [year] - The year of the car
/// * [chassis] - The Chassis number
/// * [registrationNumber] - The Registration number
/// * [engineNumber] - The Engine number
/// * [paymentOption] - The motor payment selected
/// * [motorValue] 
/// * [use] 
/// * [type] 
@BuiltValue(instantiable: false)
abstract class MotorParticulars  {
  /// The name of the  car owner
  @BuiltValueField(wireName: r'motorId')
  String? get motorId;

  /// The name of the  car owner
  @BuiltValueField(wireName: r'owner')
  String? get owner;

  /// The make of the  car
  @BuiltValueField(wireName: r'make')
  String? get make;

  /// The model of the car
  @BuiltValueField(wireName: r'model')
  String? get model;

  /// The year of the car
  @BuiltValueField(wireName: r'year')
  int? get year;

  /// The Chassis number
  @BuiltValueField(wireName: r'chassis')
  String? get chassis;

  /// The Registration number
  @BuiltValueField(wireName: r'registrationNumber')
  String? get registrationNumber;

  /// The Engine number
  @BuiltValueField(wireName: r'engineNumber')
  String? get engineNumber;

  /// The motor payment selected
  @BuiltValueField(wireName: r'paymentOption')
  String? get paymentOption;

  @BuiltValueField(wireName: r'motorValue')
  num? get motorValue;

  @BuiltValueField(wireName: r'use')
  MotorParticularsUseEnum? get use;
  // enum useEnum {  Private,  Commercial,  };

  @BuiltValueField(wireName: r'type')
  MotorParticularsTypeEnum? get type;
  // enum typeEnum {  Saloon,  SUV,  Light Truck,  Heavy Duty Truck,  };

  @BuiltValueSerializer(custom: true)
  static Serializer<MotorParticulars> get serializer => _$MotorParticularsSerializer();
}

class _$MotorParticularsSerializer implements PrimitiveSerializer<MotorParticulars> {
  @override
  final Iterable<Type> types = const [MotorParticulars];

  @override
  final String wireName = r'MotorParticulars';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MotorParticulars object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.motorId != null) {
      yield r'motorId';
      yield serializers.serialize(
        object.motorId,
        specifiedType: const FullType(String),
      );
    }
    if (object.owner != null) {
      yield r'owner';
      yield serializers.serialize(
        object.owner,
        specifiedType: const FullType(String),
      );
    }
    if (object.make != null) {
      yield r'make';
      yield serializers.serialize(
        object.make,
        specifiedType: const FullType(String),
      );
    }
    if (object.model != null) {
      yield r'model';
      yield serializers.serialize(
        object.model,
        specifiedType: const FullType(String),
      );
    }
    if (object.year != null) {
      yield r'year';
      yield serializers.serialize(
        object.year,
        specifiedType: const FullType(int),
      );
    }
    if (object.chassis != null) {
      yield r'chassis';
      yield serializers.serialize(
        object.chassis,
        specifiedType: const FullType(String),
      );
    }
    if (object.registrationNumber != null) {
      yield r'registrationNumber';
      yield serializers.serialize(
        object.registrationNumber,
        specifiedType: const FullType(String),
      );
    }
    if (object.engineNumber != null) {
      yield r'engineNumber';
      yield serializers.serialize(
        object.engineNumber,
        specifiedType: const FullType(String),
      );
    }
    if (object.paymentOption != null) {
      yield r'paymentOption';
      yield serializers.serialize(
        object.paymentOption,
        specifiedType: const FullType(String),
      );
    }
    if (object.motorValue != null) {
      yield r'motorValue';
      yield serializers.serialize(
        object.motorValue,
        specifiedType: const FullType(num),
      );
    }
    if (object.use != null) {
      yield r'use';
      yield serializers.serialize(
        object.use,
        specifiedType: const FullType(MotorParticularsUseEnum),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(MotorParticularsTypeEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MotorParticulars object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  MotorParticulars deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($MotorParticulars)) as $MotorParticulars;
  }
}


/// a concrete implementation of [MotorParticulars], since [MotorParticulars] is not instantiable
@BuiltValue(instantiable: true)
abstract class $MotorParticulars implements MotorParticulars, Built<$MotorParticulars, $MotorParticularsBuilder> {
  $MotorParticulars._();

  factory $MotorParticulars([void Function($MotorParticularsBuilder)? updates]) = _$$MotorParticulars;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($MotorParticularsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$MotorParticulars> get serializer => _$$MotorParticularsSerializer();
}

class _$$MotorParticularsSerializer implements PrimitiveSerializer<$MotorParticulars> {
  @override
  final Iterable<Type> types = const [$MotorParticulars, _$$MotorParticulars];

  @override
  final String wireName = r'$MotorParticulars';

  @override
  Object serialize(
    Serializers serializers,
    $MotorParticulars object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(MotorParticulars))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MotorParticularsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'motorId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.motorId = valueDes;
          break;
        case r'owner':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.owner = valueDes;
          break;
        case r'make':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.make = valueDes;
          break;
        case r'model':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.model = valueDes;
          break;
        case r'year':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.year = valueDes;
          break;
        case r'chassis':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.chassis = valueDes;
          break;
        case r'registrationNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.registrationNumber = valueDes;
          break;
        case r'engineNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.engineNumber = valueDes;
          break;
        case r'paymentOption':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.paymentOption = valueDes;
          break;
        case r'motorValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.motorValue = valueDes;
          break;
        case r'use':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(MotorParticularsUseEnum),
          ) as MotorParticularsUseEnum?;
          if (valueDes == null) continue;
          result.use = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(MotorParticularsTypeEnum),
          ) as MotorParticularsTypeEnum?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $MotorParticulars deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $MotorParticularsBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

class MotorParticularsUseEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Private')
  static const MotorParticularsUseEnum private = _$motorParticularsUseEnum_private;
  @BuiltValueEnumConst(wireName: r'Commercial')
  static const MotorParticularsUseEnum commercial = _$motorParticularsUseEnum_commercial;

  static Serializer<MotorParticularsUseEnum> get serializer => _$motorParticularsUseEnumSerializer;

  const MotorParticularsUseEnum._(String name): super(name);

  static BuiltSet<MotorParticularsUseEnum> get values => _$motorParticularsUseEnumValues;
  static MotorParticularsUseEnum valueOf(String name) => _$motorParticularsUseEnumValueOf(name);
}

class MotorParticularsTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Saloon')
  static const MotorParticularsTypeEnum saloon = _$motorParticularsTypeEnum_saloon;
  @BuiltValueEnumConst(wireName: r'SUV')
  static const MotorParticularsTypeEnum SUV = _$motorParticularsTypeEnum_SUV;
  @BuiltValueEnumConst(wireName: r'Light Truck')
  static const MotorParticularsTypeEnum lightTruck = _$motorParticularsTypeEnum_lightTruck;
  @BuiltValueEnumConst(wireName: r'Heavy Duty Truck')
  static const MotorParticularsTypeEnum heavyDutyTruck = _$motorParticularsTypeEnum_heavyDutyTruck;

  static Serializer<MotorParticularsTypeEnum> get serializer => _$motorParticularsTypeEnumSerializer;

  const MotorParticularsTypeEnum._(String name): super(name);

  static BuiltSet<MotorParticularsTypeEnum> get values => _$motorParticularsTypeEnumValues;
  static MotorParticularsTypeEnum valueOf(String name) => _$motorParticularsTypeEnumValueOf(name);
}

