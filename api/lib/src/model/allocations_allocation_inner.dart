//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'allocations_allocation_inner.g.dart';

/// AllocationsAllocationInner
///
/// Properties:
/// * [policyNumber] 
/// * [amount] 
@BuiltValue()
abstract class AllocationsAllocationInner implements Built<AllocationsAllocationInner, AllocationsAllocationInnerBuilder> {
  @BuiltValueField(wireName: r'policyNumber')
  String? get policyNumber;

  @BuiltValueField(wireName: r'amount')
  num? get amount;

  AllocationsAllocationInner._();

  factory AllocationsAllocationInner([void updates(AllocationsAllocationInnerBuilder b)]) = _$AllocationsAllocationInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AllocationsAllocationInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AllocationsAllocationInner> get serializer => _$AllocationsAllocationInnerSerializer();
}

class _$AllocationsAllocationInnerSerializer implements PrimitiveSerializer<AllocationsAllocationInner> {
  @override
  final Iterable<Type> types = const [AllocationsAllocationInner, _$AllocationsAllocationInner];

  @override
  final String wireName = r'AllocationsAllocationInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AllocationsAllocationInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.policyNumber != null) {
      yield r'policyNumber';
      yield serializers.serialize(
        object.policyNumber,
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
    AllocationsAllocationInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AllocationsAllocationInnerBuilder result,
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
  AllocationsAllocationInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AllocationsAllocationInnerBuilder();
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


