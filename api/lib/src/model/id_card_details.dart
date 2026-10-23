//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'id_card_details.g.dart';

/// IdCardDetails
///
/// Properties:
/// * [number] 
/// * [type] 
/// * [expiry] 
@BuiltValue()
abstract class IdCardDetails implements Built<IdCardDetails, IdCardDetailsBuilder> {
  @BuiltValueField(wireName: r'number')
  String? get number;

  @BuiltValueField(wireName: r'type')
  String? get type;

  @BuiltValueField(wireName: r'expiry')
  String? get expiry;

  IdCardDetails._();

  factory IdCardDetails([void updates(IdCardDetailsBuilder b)]) = _$IdCardDetails;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IdCardDetailsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IdCardDetails> get serializer => _$IdCardDetailsSerializer();
}

class _$IdCardDetailsSerializer implements PrimitiveSerializer<IdCardDetails> {
  @override
  final Iterable<Type> types = const [IdCardDetails, _$IdCardDetails];

  @override
  final String wireName = r'IdCardDetails';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IdCardDetails object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.number != null) {
      yield r'number';
      yield serializers.serialize(
        object.number,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    if (object.expiry != null) {
      yield r'expiry';
      yield serializers.serialize(
        object.expiry,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IdCardDetails object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IdCardDetailsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.number = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'expiry':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.expiry = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IdCardDetails deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IdCardDetailsBuilder();
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


