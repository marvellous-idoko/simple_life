//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pre_loss_video_link.g.dart';

/// PreLossVideoLink
///
/// Properties:
/// * [prelossVideoLinkId] 
/// * [staffId] 
/// * [staffName] 
/// * [agentEmailAddress] 
/// * [customerEmailAddress] 
/// * [otherEmailAddress] 
/// * [generatedVideoLink] 
@BuiltValue()
abstract class PreLossVideoLink implements Built<PreLossVideoLink, PreLossVideoLinkBuilder> {
  @BuiltValueField(wireName: r'prelossVideoLinkId')
  String? get prelossVideoLinkId;

  @BuiltValueField(wireName: r'staffId')
  String? get staffId;

  @BuiltValueField(wireName: r'staffName')
  String? get staffName;

  @BuiltValueField(wireName: r'agentEmailAddress')
  String? get agentEmailAddress;

  @BuiltValueField(wireName: r'customerEmailAddress')
  String? get customerEmailAddress;

  @BuiltValueField(wireName: r'otherEmailAddress')
  String? get otherEmailAddress;

  @BuiltValueField(wireName: r'generatedVideoLink')
  String? get generatedVideoLink;

  PreLossVideoLink._();

  factory PreLossVideoLink([void updates(PreLossVideoLinkBuilder b)]) = _$PreLossVideoLink;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PreLossVideoLinkBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PreLossVideoLink> get serializer => _$PreLossVideoLinkSerializer();
}

class _$PreLossVideoLinkSerializer implements PrimitiveSerializer<PreLossVideoLink> {
  @override
  final Iterable<Type> types = const [PreLossVideoLink, _$PreLossVideoLink];

  @override
  final String wireName = r'PreLossVideoLink';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PreLossVideoLink object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.prelossVideoLinkId != null) {
      yield r'prelossVideoLinkId';
      yield serializers.serialize(
        object.prelossVideoLinkId,
        specifiedType: const FullType(String),
      );
    }
    if (object.staffId != null) {
      yield r'staffId';
      yield serializers.serialize(
        object.staffId,
        specifiedType: const FullType(String),
      );
    }
    if (object.staffName != null) {
      yield r'staffName';
      yield serializers.serialize(
        object.staffName,
        specifiedType: const FullType(String),
      );
    }
    if (object.agentEmailAddress != null) {
      yield r'agentEmailAddress';
      yield serializers.serialize(
        object.agentEmailAddress,
        specifiedType: const FullType(String),
      );
    }
    if (object.customerEmailAddress != null) {
      yield r'customerEmailAddress';
      yield serializers.serialize(
        object.customerEmailAddress,
        specifiedType: const FullType(String),
      );
    }
    if (object.otherEmailAddress != null) {
      yield r'otherEmailAddress';
      yield serializers.serialize(
        object.otherEmailAddress,
        specifiedType: const FullType(String),
      );
    }
    if (object.generatedVideoLink != null) {
      yield r'generatedVideoLink';
      yield serializers.serialize(
        object.generatedVideoLink,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PreLossVideoLink object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PreLossVideoLinkBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'prelossVideoLinkId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.prelossVideoLinkId = valueDes;
          break;
        case r'staffId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.staffId = valueDes;
          break;
        case r'staffName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.staffName = valueDes;
          break;
        case r'agentEmailAddress':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.agentEmailAddress = valueDes;
          break;
        case r'customerEmailAddress':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.customerEmailAddress = valueDes;
          break;
        case r'otherEmailAddress':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.otherEmailAddress = valueDes;
          break;
        case r'generatedVideoLink':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.generatedVideoLink = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PreLossVideoLink deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PreLossVideoLinkBuilder();
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


