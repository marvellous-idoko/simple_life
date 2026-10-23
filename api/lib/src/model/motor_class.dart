//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'motor_class.g.dart';

/// MotorClass
///
/// Properties:
/// * [category] 
@BuiltValue()
abstract class MotorClass implements Built<MotorClass, MotorClassBuilder> {
  @BuiltValueField(wireName: r'category')
  MotorClassCategoryEnum? get category;
  // enum categoryEnum {  Private,  Commercial,  };

  MotorClass._();

  factory MotorClass([void updates(MotorClassBuilder b)]) = _$MotorClass;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MotorClassBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MotorClass> get serializer => _$MotorClassSerializer();
}

class _$MotorClassSerializer implements PrimitiveSerializer<MotorClass> {
  @override
  final Iterable<Type> types = const [MotorClass, _$MotorClass];

  @override
  final String wireName = r'MotorClass';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MotorClass object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.category != null) {
      yield r'category';
      yield serializers.serialize(
        object.category,
        specifiedType: const FullType(MotorClassCategoryEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MotorClass object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MotorClassBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'category':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(MotorClassCategoryEnum),
          ) as MotorClassCategoryEnum?;
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
  MotorClass deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MotorClassBuilder();
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


class MotorClassCategoryEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Private')
  static const MotorClassCategoryEnum private = _$motorClassCategoryEnum_private;
  @BuiltValueEnumConst(wireName: r'Commercial')
  static const MotorClassCategoryEnum commercial = _$motorClassCategoryEnum_commercial;

  static Serializer<MotorClassCategoryEnum> get serializer => _$motorClassCategoryEnumSerializer;

  const MotorClassCategoryEnum._(String name): super(name);

  static BuiltSet<MotorClassCategoryEnum> get values => _$motorClassCategoryEnumValues;
  static MotorClassCategoryEnum valueOf(String name) => _$motorClassCategoryEnumValueOf(name);
}

