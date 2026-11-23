//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/address.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'renter_particulars.g.dart';

/// RenterParticulars
///
/// Properties:
/// * [renterId] 
/// * [owner] - Name of Renter
/// * [category] - Business Category
/// * [address] 
@BuiltValue(instantiable: false)
abstract class RenterParticulars  {
  @BuiltValueField(wireName: r'renterId')
  String? get renterId;

  /// Name of Renter
  @BuiltValueField(wireName: r'owner')
  String? get owner;

  /// Business Category
  @BuiltValueField(wireName: r'category')
  String? get category;

  @BuiltValueField(wireName: r'address')
  Address? get address;

  @BuiltValueSerializer(custom: true)
  static Serializer<RenterParticulars> get serializer => _$RenterParticularsSerializer();
}

class _$RenterParticularsSerializer implements PrimitiveSerializer<RenterParticulars> {
  @override
  final Iterable<Type> types = const [RenterParticulars];

  @override
  final String wireName = r'RenterParticulars';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RenterParticulars object, {
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
    if (object.address != null) {
      yield r'address';
      yield serializers.serialize(
        object.address,
        specifiedType: const FullType(Address),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RenterParticulars object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  RenterParticulars deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($RenterParticulars)) as $RenterParticulars;
  }
}


/// a concrete implementation of [RenterParticulars], since [RenterParticulars] is not instantiable
@BuiltValue(instantiable: true)
abstract class $RenterParticulars implements RenterParticulars, Built<$RenterParticulars, $RenterParticularsBuilder> {
  $RenterParticulars._();

  factory $RenterParticulars([void Function($RenterParticularsBuilder)? updates]) = _$$RenterParticulars;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($RenterParticularsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$RenterParticulars> get serializer => _$$RenterParticularsSerializer();
}

class _$$RenterParticularsSerializer implements PrimitiveSerializer<$RenterParticulars> {
  @override
  final Iterable<Type> types = const [$RenterParticulars, _$$RenterParticulars];

  @override
  final String wireName = r'$RenterParticulars';

  @override
  Object serialize(
    Serializers serializers,
    $RenterParticulars object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(RenterParticulars))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RenterParticularsBuilder result,
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
        case r'address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Address),
          ) as Address?;
          if (valueDes == null) continue;
          result.address.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $RenterParticulars deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $RenterParticularsBuilder();
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

