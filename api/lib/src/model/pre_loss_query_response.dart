//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pre_loss_query_response.g.dart';

/// PreLossQueryResponse
///
/// Properties:
/// * [response] 
/// * [queryId] 
@BuiltValue()
abstract class PreLossQueryResponse implements Built<PreLossQueryResponse, PreLossQueryResponseBuilder> {
  @BuiltValueField(wireName: r'response')
  String? get response;

  @BuiltValueField(wireName: r'queryId')
  String? get queryId;

  PreLossQueryResponse._();

  factory PreLossQueryResponse([void updates(PreLossQueryResponseBuilder b)]) = _$PreLossQueryResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PreLossQueryResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PreLossQueryResponse> get serializer => _$PreLossQueryResponseSerializer();
}

class _$PreLossQueryResponseSerializer implements PrimitiveSerializer<PreLossQueryResponse> {
  @override
  final Iterable<Type> types = const [PreLossQueryResponse, _$PreLossQueryResponse];

  @override
  final String wireName = r'PreLossQueryResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PreLossQueryResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.response != null) {
      yield r'response';
      yield serializers.serialize(
        object.response,
        specifiedType: const FullType(String),
      );
    }
    if (object.queryId != null) {
      yield r'queryId';
      yield serializers.serialize(
        object.queryId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PreLossQueryResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PreLossQueryResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'response':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.response = valueDes;
          break;
        case r'queryId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.queryId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PreLossQueryResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PreLossQueryResponseBuilder();
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


