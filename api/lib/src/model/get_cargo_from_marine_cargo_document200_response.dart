//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/cargo_particulars.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_cargo_from_marine_cargo_document200_response.g.dart';

/// GetCargoFromMarineCargoDocument200Response
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
/// * [premium] - Premium to pay
@BuiltValue()
abstract class GetCargoFromMarineCargoDocument200Response implements CargoParticulars, Built<GetCargoFromMarineCargoDocument200Response, GetCargoFromMarineCargoDocument200ResponseBuilder> {
  /// Premium to pay
  @BuiltValueField(wireName: r'premium')
  num? get premium;

  GetCargoFromMarineCargoDocument200Response._();

  factory GetCargoFromMarineCargoDocument200Response([void updates(GetCargoFromMarineCargoDocument200ResponseBuilder b)]) = _$GetCargoFromMarineCargoDocument200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetCargoFromMarineCargoDocument200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetCargoFromMarineCargoDocument200Response> get serializer => _$GetCargoFromMarineCargoDocument200ResponseSerializer();
}

class _$GetCargoFromMarineCargoDocument200ResponseSerializer implements PrimitiveSerializer<GetCargoFromMarineCargoDocument200Response> {
  @override
  final Iterable<Type> types = const [GetCargoFromMarineCargoDocument200Response, _$GetCargoFromMarineCargoDocument200Response];

  @override
  final String wireName = r'GetCargoFromMarineCargoDocument200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetCargoFromMarineCargoDocument200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    if (object.amount != null) {
      yield r'amount';
      yield serializers.serialize(
        object.amount,
        specifiedType: const FullType(num),
      );
    }
    if (object.lcNumber != null) {
      yield r'lcNumber';
      yield serializers.serialize(
        object.lcNumber,
        specifiedType: const FullType(String),
      );
    }
    if (object.bankName != null) {
      yield r'bankName';
      yield serializers.serialize(
        object.bankName,
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
    if (object.loading != null) {
      yield r'loading';
      yield serializers.serialize(
        object.loading,
        specifiedType: const FullType(num),
      );
    }
    if (object.cargoId != null) {
      yield r'cargoId';
      yield serializers.serialize(
        object.cargoId,
        specifiedType: const FullType(String),
      );
    }
    if (object.premium != null) {
      yield r'premium';
      yield serializers.serialize(
        object.premium,
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
    if (object.exchangeRate != null) {
      yield r'exchangeRate';
      yield serializers.serialize(
        object.exchangeRate,
        specifiedType: const FullType(num),
      );
    }
    if (object.loadingPort != null) {
      yield r'loadingPort';
      yield serializers.serialize(
        object.loadingPort,
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
    if (object.currency != null) {
      yield r'currency';
      yield serializers.serialize(
        object.currency,
        specifiedType: const FullType(CargoParticularsCurrencyEnum),
      );
    }
    if (object.cargo != null) {
      yield r'cargo';
      yield serializers.serialize(
        object.cargo,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetCargoFromMarineCargoDocument200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetCargoFromMarineCargoDocument200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.amount = valueDes;
          break;
        case r'lcNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lcNumber = valueDes;
          break;
        case r'bankName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.bankName = valueDes;
          break;
        case r'tinNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tinNumber = valueDes;
          break;
        case r'loading':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.loading = valueDes;
          break;
        case r'cargoId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.cargoId = valueDes;
          break;
        case r'premium':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.premium = valueDes;
          break;
        case r'sumInsured':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.sumInsured = valueDes;
          break;
        case r'exchangeRate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.exchangeRate = valueDes;
          break;
        case r'loadingPort':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.loadingPort = valueDes;
          break;
        case r'invoiceNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.invoiceNumber = valueDes;
          break;
        case r'currency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(CargoParticularsCurrencyEnum),
          ) as CargoParticularsCurrencyEnum?;
          if (valueDes == null) continue;
          result.currency = valueDes;
          break;
        case r'cargo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.cargo = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetCargoFromMarineCargoDocument200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetCargoFromMarineCargoDocument200ResponseBuilder();
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


class GetCargoFromMarineCargoDocument200ResponseCurrencyEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'USD')
  static const GetCargoFromMarineCargoDocument200ResponseCurrencyEnum USD = _$getCargoFromMarineCargoDocument200ResponseCurrencyEnum_USD;
  @BuiltValueEnumConst(wireName: r'GPB')
  static const GetCargoFromMarineCargoDocument200ResponseCurrencyEnum GPB = _$getCargoFromMarineCargoDocument200ResponseCurrencyEnum_GPB;
  @BuiltValueEnumConst(wireName: r'EUR')
  static const GetCargoFromMarineCargoDocument200ResponseCurrencyEnum EUR = _$getCargoFromMarineCargoDocument200ResponseCurrencyEnum_EUR;

  static Serializer<GetCargoFromMarineCargoDocument200ResponseCurrencyEnum> get serializer => _$getCargoFromMarineCargoDocument200ResponseCurrencyEnumSerializer;

  const GetCargoFromMarineCargoDocument200ResponseCurrencyEnum._(String name): super(name);

  static BuiltSet<GetCargoFromMarineCargoDocument200ResponseCurrencyEnum> get values => _$getCargoFromMarineCargoDocument200ResponseCurrencyEnumValues;
  static GetCargoFromMarineCargoDocument200ResponseCurrencyEnum valueOf(String name) => _$getCargoFromMarineCargoDocument200ResponseCurrencyEnumValueOf(name);
}

