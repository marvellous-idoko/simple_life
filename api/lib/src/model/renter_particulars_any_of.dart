//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'renter_particulars_any_of.g.dart';

/// RenterParticularsAnyOf
///
/// Properties:
/// * [renterId] 
/// * [owner] - Name of Renter
/// * [category] - Business Category
@BuiltValue()
abstract class RenterParticularsAnyOf implements Built<RenterParticularsAnyOf, RenterParticularsAnyOfBuilder> {
  @BuiltValueField(wireName: r'renterId')
  String? get renterId;

  /// Name of Renter
  @BuiltValueField(wireName: r'owner')
  String? get owner;

  /// Business Category
  @BuiltValueField(wireName: r'category')
  String? get category;

  RenterParticularsAnyOf._();

  factory RenterParticularsAnyOf([void updates(RenterParticularsAnyOfBuilder b)]) = _$RenterParticularsAnyOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RenterParticularsAnyOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RenterParticularsAnyOf> get serializer => _$RenterParticularsAnyOfSerializer();
}

class _$RenterParticularsAnyOfSerializer implements PrimitiveSerializer<RenterParticularsAnyOf> {
  @override
  final Iterable<Type> types = const [RenterParticularsAnyOf, _$RenterParticularsAnyOf];

  @override
  final String wireName = r'RenterParticularsAnyOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RenterParticularsAnyOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.renterId != null) {
      yield r'renterId';
      yield serializers.serialize(
        object.renterId,
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
    if (object.category != null) {
      yield r'category';
      yield serializers.serialize(
        object.category,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RenterParticularsAnyOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RenterParticularsAnyOfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'renterId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.renterId = valueDes;
          break;
        case r'owner':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.owner = valueDes;
          break;
        case r'category':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.category = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RenterParticularsAnyOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RenterParticularsAnyOfBuilder();
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


