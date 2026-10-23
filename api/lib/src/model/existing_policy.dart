//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'existing_policy.g.dart';

/// ExistingPolicy
///
/// Properties:
/// * [company] 
/// * [sumAssured] 
/// * [policyNumber] 
@BuiltValue()
abstract class ExistingPolicy implements Built<ExistingPolicy, ExistingPolicyBuilder> {
  @BuiltValueField(wireName: r'company')
  String? get company;

  @BuiltValueField(wireName: r'sumAssured')
  num? get sumAssured;

  @BuiltValueField(wireName: r'policyNumber')
  String? get policyNumber;

  ExistingPolicy._();

  factory ExistingPolicy([void updates(ExistingPolicyBuilder b)]) = _$ExistingPolicy;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExistingPolicyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExistingPolicy> get serializer => _$ExistingPolicySerializer();
}

class _$ExistingPolicySerializer implements PrimitiveSerializer<ExistingPolicy> {
  @override
  final Iterable<Type> types = const [ExistingPolicy, _$ExistingPolicy];

  @override
  final String wireName = r'ExistingPolicy';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExistingPolicy object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.company != null) {
      yield r'company';
      yield serializers.serialize(
        object.company,
        specifiedType: const FullType(String),
      );
    }
    if (object.sumAssured != null) {
      yield r'sumAssured';
      yield serializers.serialize(
        object.sumAssured,
        specifiedType: const FullType(num),
      );
    }
    if (object.policyNumber != null) {
      yield r'policyNumber';
      yield serializers.serialize(
        object.policyNumber,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExistingPolicy object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExistingPolicyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'company':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.company = valueDes;
          break;
        case r'sumAssured':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.sumAssured = valueDes;
          break;
        case r'policyNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.policyNumber = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExistingPolicy deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExistingPolicyBuilder();
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


