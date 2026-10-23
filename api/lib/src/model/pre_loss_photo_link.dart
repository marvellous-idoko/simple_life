//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pre_loss_photo_link.g.dart';

/// PreLossPhotoLink
///
/// Properties:
/// * [prelossPhotoLinkId] 
/// * [staffId] 
/// * [staffName] 
/// * [agentEmailAddress] 
/// * [customerEmailAddress] 
/// * [otherEmailAddress] 
/// * [generatedPhotoLink] 
@BuiltValue()
abstract class PreLossPhotoLink implements Built<PreLossPhotoLink, PreLossPhotoLinkBuilder> {
  @BuiltValueField(wireName: r'prelossPhotoLinkId')
  String? get prelossPhotoLinkId;

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

  @BuiltValueField(wireName: r'generatedPhotoLink')
  String? get generatedPhotoLink;

  PreLossPhotoLink._();

  factory PreLossPhotoLink([void updates(PreLossPhotoLinkBuilder b)]) = _$PreLossPhotoLink;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PreLossPhotoLinkBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PreLossPhotoLink> get serializer => _$PreLossPhotoLinkSerializer();
}

class _$PreLossPhotoLinkSerializer implements PrimitiveSerializer<PreLossPhotoLink> {
  @override
  final Iterable<Type> types = const [PreLossPhotoLink, _$PreLossPhotoLink];

  @override
  final String wireName = r'PreLossPhotoLink';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PreLossPhotoLink object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.prelossPhotoLinkId != null) {
      yield r'prelossPhotoLinkId';
      yield serializers.serialize(
        object.prelossPhotoLinkId,
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
    if (object.generatedPhotoLink != null) {
      yield r'generatedPhotoLink';
      yield serializers.serialize(
        object.generatedPhotoLink,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PreLossPhotoLink object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PreLossPhotoLinkBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'prelossPhotoLinkId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.prelossPhotoLinkId = valueDes;
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
        case r'generatedPhotoLink':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.generatedPhotoLink = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PreLossPhotoLink deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PreLossPhotoLinkBuilder();
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


