//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cart_item.g.dart';

/// CartItem
///
/// Properties:
/// * [cartId] 
/// * [payload] 
/// * [resumePath] 
@BuiltValue()
abstract class CartItem implements Built<CartItem, CartItemBuilder> {
  @BuiltValueField(wireName: r'cartId')
  String? get cartId;

  @BuiltValueField(wireName: r'payload')
  BuiltList<JsonObject?>? get payload;

  @BuiltValueField(wireName: r'resumePath')
  String? get resumePath;

  CartItem._();

  factory CartItem([void updates(CartItemBuilder b)]) = _$CartItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CartItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CartItem> get serializer => _$CartItemSerializer();
}

class _$CartItemSerializer implements PrimitiveSerializer<CartItem> {
  @override
  final Iterable<Type> types = const [CartItem, _$CartItem];

  @override
  final String wireName = r'CartItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CartItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.cartId != null) {
      yield r'cartId';
      yield serializers.serialize(
        object.cartId,
        specifiedType: const FullType(String),
      );
    }
    if (object.payload != null) {
      yield r'payload';
      yield serializers.serialize(
        object.payload,
        specifiedType: const FullType(BuiltList, [FullType.nullable(JsonObject)]),
      );
    }
    if (object.resumePath != null) {
      yield r'resumePath';
      yield serializers.serialize(
        object.resumePath,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CartItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CartItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'cartId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.cartId = valueDes;
          break;
        case r'payload':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType.nullable(JsonObject)]),
          ) as BuiltList<JsonObject?>?;
          if (valueDes == null) continue;
          result.payload.replace(valueDes);
          break;
        case r'resumePath':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.resumePath = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CartItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CartItemBuilder();
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


