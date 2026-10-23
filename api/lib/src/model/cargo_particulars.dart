//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cargo_particulars.g.dart';

/// CargoParticulars
///
/// Properties:
/// * [cargoId] 
/// * [amount] 
/// * [exchangeRate] 
/// * [sumInsured] - Sum insured calculated from invoice amount time rate plus 10 percent
/// * [currency] 
/// * [bankName] 
/// * [loadingPort] 
/// * [destinationPort] 
/// * [cacNumber] 
/// * [invoiceNumber] 
/// * [tinNumber] 
/// * [lcNumber] 
/// * [cargo] 
/// * [loading] 
@BuiltValue()
abstract class CargoParticulars implements Built<CargoParticulars, CargoParticularsBuilder> {
  @BuiltValueField(wireName: r'cargoId')
  String? get cargoId;

  @BuiltValueField(wireName: r'amount')
  num? get amount;

  @BuiltValueField(wireName: r'exchangeRate')
  num? get exchangeRate;

  /// Sum insured calculated from invoice amount time rate plus 10 percent
  @BuiltValueField(wireName: r'sumInsured')
  num? get sumInsured;

  @BuiltValueField(wireName: r'currency')
  CargoParticularsCurrencyEnum? get currency;
  // enum currencyEnum {  USD,  GPB,  EUR,  };

  @BuiltValueField(wireName: r'bankName')
  String? get bankName;

  @BuiltValueField(wireName: r'loadingPort')
  String? get loadingPort;

  @BuiltValueField(wireName: r'destinationPort')
  String? get destinationPort;

  @BuiltValueField(wireName: r'cacNumber')
  String? get cacNumber;

  @BuiltValueField(wireName: r'invoiceNumber')
  String? get invoiceNumber;

  @BuiltValueField(wireName: r'tinNumber')
  String? get tinNumber;

  @BuiltValueField(wireName: r'lcNumber')
  String? get lcNumber;

  @BuiltValueField(wireName: r'cargo')
  String? get cargo;

  @BuiltValueField(wireName: r'loading')
  num? get loading;

  CargoParticulars._();

  factory CargoParticulars([void updates(CargoParticularsBuilder b)]) = _$CargoParticulars;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CargoParticularsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CargoParticulars> get serializer => _$CargoParticularsSerializer();
}

class _$CargoParticularsSerializer implements PrimitiveSerializer<CargoParticulars> {
  @override
  final Iterable<Type> types = const [CargoParticulars, _$CargoParticulars];

  @override
  final String wireName = r'CargoParticulars';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CargoParticulars object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.cargoId != null) {
      yield r'cargoId';
      yield serializers.serialize(
        object.cargoId,
        specifiedType: const FullType(String),
      );
    }
    if (object.amount != null) {
      yield r'amount';
      yield serializers.serialize(
        object.amount,
        specifiedType: const FullType(num),
      );
    }
    if (object.exchangeRate != null) {
      yield r'exchangeRate';
      yield serializers.serialize(
        object.exchangeRate,
        specifiedType: const FullType(num),
      );
    }
    if (object.sumInsured != null) {
      yield r'sumInsured';
      yield serializers.serialize(
        object.sumInsured,
        specifiedType: const FullType(num),
      );
    }
    if (object.currency != null) {
      yield r'currency';
      yield serializers.serialize(
        object.currency,
        specifiedType: const FullType(CargoParticularsCurrencyEnum),
      );
    }
    if (object.bankName != null) {
      yield r'bankName';
      yield serializers.serialize(
        object.bankName,
        specifiedType: const FullType(String),
      );
    }
    if (object.loadingPort != null) {
      yield r'loadingPort';
      yield serializers.serialize(
        object.loadingPort,
        specifiedType: const FullType(String),
      );
    }
    if (object.destinationPort != null) {
      yield r'destinationPort';
      yield serializers.serialize(
        object.destinationPort,
        specifiedType: const FullType(String),
      );
    }
    if (object.cacNumber != null) {
      yield r'cacNumber';
      yield serializers.serialize(
        object.cacNumber,
        specifiedType: const FullType(String),
      );
    }
    if (object.invoiceNumber != null) {
      yield r'invoiceNumber';
      yield serializers.serialize(
        object.invoiceNumber,
        specifiedType: const FullType(String),
      );
    }
    if (object.tinNumber != null) {
      yield r'tinNumber';
      yield serializers.serialize(
        object.tinNumber,
        specifiedType: const FullType(String),
      );
    }
    if (object.lcNumber != null) {
      yield r'lcNumber';
      yield serializers.serialize(
        object.lcNumber,
        specifiedType: const FullType(String),
      );
    }
    if (object.cargo != null) {
      yield r'cargo';
      yield serializers.serialize(
        object.cargo,
        specifiedType: const FullType(String),
      );
    }
    if (object.loading != null) {
      yield r'loading';
      yield serializers.serialize(
        object.loading,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CargoParticulars object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CargoParticularsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'cargoId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.cargoId = valueDes;
          break;
        case r'amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.amount = valueDes;
          break;
        case r'exchangeRate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.exchangeRate = valueDes;
          break;
        case r'sumInsured':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.sumInsured = valueDes;
          break;
        case r'currency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(CargoParticularsCurrencyEnum),
          ) as CargoParticularsCurrencyEnum?;
          if (valueDes == null) continue;
          result.currency = valueDes;
          break;
        case r'bankName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.bankName = valueDes;
          break;
        case r'loadingPort':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.loadingPort = valueDes;
          break;
        case r'destinationPort':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.destinationPort = valueDes;
          break;
        case r'cacNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.cacNumber = valueDes;
          break;
        case r'invoiceNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.invoiceNumber = valueDes;
          break;
        case r'tinNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tinNumber = valueDes;
          break;
        case r'lcNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lcNumber = valueDes;
          break;
        case r'cargo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.cargo = valueDes;
          break;
        case r'loading':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.loading = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CargoParticulars deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CargoParticularsBuilder();
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


class CargoParticularsCurrencyEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'USD')
  static const CargoParticularsCurrencyEnum USD = _$cargoParticularsCurrencyEnum_USD;
  @BuiltValueEnumConst(wireName: r'GPB')
  static const CargoParticularsCurrencyEnum GPB = _$cargoParticularsCurrencyEnum_GPB;
  @BuiltValueEnumConst(wireName: r'EUR')
  static const CargoParticularsCurrencyEnum EUR = _$cargoParticularsCurrencyEnum_EUR;

  static Serializer<CargoParticularsCurrencyEnum> get serializer => _$cargoParticularsCurrencyEnumSerializer;

  const CargoParticularsCurrencyEnum._(String name): super(name);

  static BuiltSet<CargoParticularsCurrencyEnum> get values => _$cargoParticularsCurrencyEnumValues;
  static CargoParticularsCurrencyEnum valueOf(String name) => _$cargoParticularsCurrencyEnumValueOf(name);
}

