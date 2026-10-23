//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'annuity_setting.g.dart';

/// AnnuitySetting
///
/// Properties:
/// * [standingOrderDay] - day of standing order (between 1 - 28)
@BuiltValue()
abstract class AnnuitySetting implements Built<AnnuitySetting, AnnuitySettingBuilder> {
  /// day of standing order (between 1 - 28)
  @BuiltValueField(wireName: r'standingOrderDay')
  num? get standingOrderDay;

  AnnuitySetting._();

  factory AnnuitySetting([void updates(AnnuitySettingBuilder b)]) = _$AnnuitySetting;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnnuitySettingBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnnuitySetting> get serializer => _$AnnuitySettingSerializer();
}

class _$AnnuitySettingSerializer implements PrimitiveSerializer<AnnuitySetting> {
  @override
  final Iterable<Type> types = const [AnnuitySetting, _$AnnuitySetting];

  @override
  final String wireName = r'AnnuitySetting';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnnuitySetting object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.standingOrderDay != null) {
      yield r'standingOrderDay';
      yield serializers.serialize(
        object.standingOrderDay,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AnnuitySetting object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AnnuitySettingBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'standingOrderDay':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.standingOrderDay = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnnuitySetting deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnnuitySettingBuilder();
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


