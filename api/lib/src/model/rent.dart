//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rent.g.dart';

/// Rent
///
/// Properties:
/// * [rent] - annual rent
/// * [dateOfExpiry] 
@BuiltValue()
abstract class Rent implements Built<Rent, RentBuilder> {
  /// annual rent
  @BuiltValueField(wireName: r'rent')
  num? get rent;

  @BuiltValueField(wireName: r'dateOfExpiry')
  Date? get dateOfExpiry;

  Rent._();

  factory Rent([void updates(RentBuilder b)]) = _$Rent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Rent> get serializer => _$RentSerializer();
}

class _$RentSerializer implements PrimitiveSerializer<Rent> {
  @override
  final Iterable<Type> types = const [Rent, _$Rent];

  @override
  final String wireName = r'Rent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Rent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.rent != null) {
      yield r'rent';
      yield serializers.serialize(
        object.rent,
        specifiedType: const FullType(num),
      );
    }
    if (object.dateOfExpiry != null) {
      yield r'dateOfExpiry';
      yield serializers.serialize(
        object.dateOfExpiry,
        specifiedType: const FullType(Date),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Rent object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RentBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'rent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.rent = valueDes;
          break;
        case r'dateOfExpiry':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Date),
          ) as Date?;
          if (valueDes == null) continue;
          result.dateOfExpiry = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Rent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RentBuilder();
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


