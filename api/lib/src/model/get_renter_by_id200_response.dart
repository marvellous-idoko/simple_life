//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/house_item.dart';
import 'package:openapi/src/model/address.dart';
import 'package:openapi/src/model/renter_particulars.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_renter_by_id200_response.g.dart';

/// GetRenterById200Response
///
/// Properties:
/// * [renterId] 
/// * [owner] - Name of Renter
/// * [category] - Business Category
/// * [address] 
/// * [stationary] 
/// * [mobile] 
@BuiltValue()
abstract class GetRenterById200Response implements RenterParticulars, Built<GetRenterById200Response, GetRenterById200ResponseBuilder> {
  @BuiltValueField(wireName: r'stationary')
  BuiltList<HouseItem>? get stationary;

  @BuiltValueField(wireName: r'mobile')
  BuiltList<HouseItem>? get mobile;

  GetRenterById200Response._();

  factory GetRenterById200Response([void updates(GetRenterById200ResponseBuilder b)]) = _$GetRenterById200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetRenterById200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetRenterById200Response> get serializer => _$GetRenterById200ResponseSerializer();
}

class _$GetRenterById200ResponseSerializer implements PrimitiveSerializer<GetRenterById200Response> {
  @override
  final Iterable<Type> types = const [GetRenterById200Response, _$GetRenterById200Response];

  @override
  final String wireName = r'GetRenterById200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetRenterById200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.mobile != null) {
      yield r'mobile';
      yield serializers.serialize(
        object.mobile,
        specifiedType: const FullType(BuiltList, [FullType(HouseItem)]),
      );
    }
    if (object.owner != null) {
      yield r'owner';
      yield serializers.serialize(
        object.owner,
        specifiedType: const FullType(String),
      );
    }
    if (object.renterId != null) {
      yield r'renterId';
      yield serializers.serialize(
        object.renterId,
        specifiedType: const FullType(String),
      );
    }
    if (object.address != null) {
      yield r'address';
      yield serializers.serialize(
        object.address,
        specifiedType: const FullType(Address),
      );
    }
    if (object.category != null) {
      yield r'category';
      yield serializers.serialize(
        object.category,
        specifiedType: const FullType(String),
      );
    }
    if (object.stationary != null) {
      yield r'stationary';
      yield serializers.serialize(
        object.stationary,
        specifiedType: const FullType(BuiltList, [FullType(HouseItem)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetRenterById200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetRenterById200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'mobile':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(HouseItem)]),
          ) as BuiltList<HouseItem>?;
          if (valueDes == null) continue;
          result.mobile.replace(valueDes);
          break;
        case r'owner':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.owner = valueDes;
          break;
        case r'renterId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.renterId = valueDes;
          break;
        case r'address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Address),
          ) as Address?;
          if (valueDes == null) continue;
          result.address.replace(valueDes);
          break;
        case r'category':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.category = valueDes;
          break;
        case r'stationary':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(HouseItem)]),
          ) as BuiltList<HouseItem>?;
          if (valueDes == null) continue;
          result.stationary.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetRenterById200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetRenterById200ResponseBuilder();
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


