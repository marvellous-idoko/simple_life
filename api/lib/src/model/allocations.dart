//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/allocations_allocation_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'allocations.g.dart';

/// Allocations
///
/// Properties:
/// * [allocation] 
@BuiltValue()
abstract class Allocations implements Built<Allocations, AllocationsBuilder> {
  @BuiltValueField(wireName: r'allocation')
  BuiltList<AllocationsAllocationInner>? get allocation;

  Allocations._();

  factory Allocations([void updates(AllocationsBuilder b)]) = _$Allocations;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AllocationsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Allocations> get serializer => _$AllocationsSerializer();
}

class _$AllocationsSerializer implements PrimitiveSerializer<Allocations> {
  @override
  final Iterable<Type> types = const [Allocations, _$Allocations];

  @override
  final String wireName = r'Allocations';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Allocations object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.allocation != null) {
      yield r'allocation';
      yield serializers.serialize(
        object.allocation,
        specifiedType: const FullType(BuiltList, [FullType(AllocationsAllocationInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Allocations object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AllocationsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'allocation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(AllocationsAllocationInner)]),
          ) as BuiltList<AllocationsAllocationInner>?;
          if (valueDes == null) continue;
          result.allocation.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Allocations deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AllocationsBuilder();
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


