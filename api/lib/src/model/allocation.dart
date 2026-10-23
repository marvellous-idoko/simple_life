//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'allocation.g.dart';

/// Allocation
///
/// Properties:
/// * [policyNumber] 
/// * [allocationId] 
/// * [amount] 
@BuiltValue()
abstract class Allocation implements Built<Allocation, AllocationBuilder> {
  @BuiltValueField(wireName: r'policyNumber')
  String? get policyNumber;

  @BuiltValueField(wireName: r'allocationId')
  String? get allocationId;

  @BuiltValueField(wireName: r'amount')
  num? get amount;

  Allocation._();

  factory Allocation([void updates(AllocationBuilder b)]) = _$Allocation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AllocationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Allocation> get serializer => _$AllocationSerializer();
}

class _$AllocationSerializer implements PrimitiveSerializer<Allocation> {
  @override
  final Iterable<Type> types = const [Allocation, _$Allocation];

  @override
  final String wireName = r'Allocation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Allocation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.policyNumber != null) {
      yield r'policyNumber';
      yield serializers.serialize(
        object.policyNumber,
        specifiedType: const FullType(String),
      );
    }
    if (object.allocationId != null) {
      yield r'allocationId';
      yield serializers.serialize(
        object.allocationId,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    Allocation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AllocationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'policyNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.policyNumber = valueDes;
          break;
        case r'allocationId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.allocationId = valueDes;
          break;
        case r'amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.amount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Allocation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AllocationBuilder();
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


