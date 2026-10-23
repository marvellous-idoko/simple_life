//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create3rd_party_document_request.g.dart';

/// Create3rdPartyDocumentRequest
///
/// Properties:
/// * [businessType] 
/// * [businessChannel] 
@BuiltValue()
abstract class Create3rdPartyDocumentRequest implements Built<Create3rdPartyDocumentRequest, Create3rdPartyDocumentRequestBuilder> {
  @BuiltValueField(wireName: r'businessType')
  String? get businessType;

  @BuiltValueField(wireName: r'businessChannel')
  String? get businessChannel;

  Create3rdPartyDocumentRequest._();

  factory Create3rdPartyDocumentRequest([void updates(Create3rdPartyDocumentRequestBuilder b)]) = _$Create3rdPartyDocumentRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(Create3rdPartyDocumentRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Create3rdPartyDocumentRequest> get serializer => _$Create3rdPartyDocumentRequestSerializer();
}

class _$Create3rdPartyDocumentRequestSerializer implements PrimitiveSerializer<Create3rdPartyDocumentRequest> {
  @override
  final Iterable<Type> types = const [Create3rdPartyDocumentRequest, _$Create3rdPartyDocumentRequest];

  @override
  final String wireName = r'Create3rdPartyDocumentRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Create3rdPartyDocumentRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.businessType != null) {
      yield r'businessType';
      yield serializers.serialize(
        object.businessType,
        specifiedType: const FullType(String),
      );
    }
    if (object.businessChannel != null) {
      yield r'businessChannel';
      yield serializers.serialize(
        object.businessChannel,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Create3rdPartyDocumentRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required Create3rdPartyDocumentRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'businessType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.businessType = valueDes;
          break;
        case r'businessChannel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.businessChannel = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Create3rdPartyDocumentRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Create3rdPartyDocumentRequestBuilder();
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


