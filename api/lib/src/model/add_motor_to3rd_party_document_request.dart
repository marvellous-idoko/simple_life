//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'add_motor_to3rd_party_document_request.g.dart';

/// AddMotorTo3rdPartyDocumentRequest
///
/// Properties:
/// * [interestIds] 
@BuiltValue()
abstract class AddMotorTo3rdPartyDocumentRequest implements Built<AddMotorTo3rdPartyDocumentRequest, AddMotorTo3rdPartyDocumentRequestBuilder> {
  @BuiltValueField(wireName: r'interestIds')
  BuiltList<String>? get interestIds;

  AddMotorTo3rdPartyDocumentRequest._();

  factory AddMotorTo3rdPartyDocumentRequest([void updates(AddMotorTo3rdPartyDocumentRequestBuilder b)]) = _$AddMotorTo3rdPartyDocumentRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AddMotorTo3rdPartyDocumentRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AddMotorTo3rdPartyDocumentRequest> get serializer => _$AddMotorTo3rdPartyDocumentRequestSerializer();
}

class _$AddMotorTo3rdPartyDocumentRequestSerializer implements PrimitiveSerializer<AddMotorTo3rdPartyDocumentRequest> {
  @override
  final Iterable<Type> types = const [AddMotorTo3rdPartyDocumentRequest, _$AddMotorTo3rdPartyDocumentRequest];

  @override
  final String wireName = r'AddMotorTo3rdPartyDocumentRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AddMotorTo3rdPartyDocumentRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.interestIds != null) {
      yield r'interestIds';
      yield serializers.serialize(
        object.interestIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AddMotorTo3rdPartyDocumentRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AddMotorTo3rdPartyDocumentRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'interestIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.interestIds.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AddMotorTo3rdPartyDocumentRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AddMotorTo3rdPartyDocumentRequestBuilder();
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


