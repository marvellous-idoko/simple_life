//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_motor_installments200_response.g.dart';

/// GetMotorInstallments200Response
///
/// Properties:
/// * [id] 
/// * [premium] 
/// * [status] 
/// * [customerId] 
/// * [eskaPolicyId] 
/// * [dueAt] 
/// * [createdAt] 
@BuiltValue()
abstract class GetMotorInstallments200Response implements Built<GetMotorInstallments200Response, GetMotorInstallments200ResponseBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'premium')
  num? get premium;

  @BuiltValueField(wireName: r'status')
  String? get status;

  @BuiltValueField(wireName: r'customerId')
  String? get customerId;

  @BuiltValueField(wireName: r'eskaPolicyId')
  num? get eskaPolicyId;

  @BuiltValueField(wireName: r'dueAt')
  Date? get dueAt;

  @BuiltValueField(wireName: r'createdAt')
  Date? get createdAt;

  GetMotorInstallments200Response._();

  factory GetMotorInstallments200Response([void updates(GetMotorInstallments200ResponseBuilder b)]) = _$GetMotorInstallments200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetMotorInstallments200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetMotorInstallments200Response> get serializer => _$GetMotorInstallments200ResponseSerializer();
}

class _$GetMotorInstallments200ResponseSerializer implements PrimitiveSerializer<GetMotorInstallments200Response> {
  @override
  final Iterable<Type> types = const [GetMotorInstallments200Response, _$GetMotorInstallments200Response];

  @override
  final String wireName = r'GetMotorInstallments200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetMotorInstallments200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.premium != null) {
      yield r'premium';
      yield serializers.serialize(
        object.premium,
        specifiedType: const FullType(num),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(String),
      );
    }
    if (object.customerId != null) {
      yield r'customerId';
      yield serializers.serialize(
        object.customerId,
        specifiedType: const FullType(String),
      );
    }
    if (object.eskaPolicyId != null) {
      yield r'eskaPolicyId';
      yield serializers.serialize(
        object.eskaPolicyId,
        specifiedType: const FullType(num),
      );
    }
    if (object.dueAt != null) {
      yield r'dueAt';
      yield serializers.serialize(
        object.dueAt,
        specifiedType: const FullType(Date),
      );
    }
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(Date),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetMotorInstallments200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetMotorInstallments200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'premium':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.premium = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'customerId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.customerId = valueDes;
          break;
        case r'eskaPolicyId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.eskaPolicyId = valueDes;
          break;
        case r'dueAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Date),
          ) as Date?;
          if (valueDes == null) continue;
          result.dueAt = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Date),
          ) as Date?;
          if (valueDes == null) continue;
          result.createdAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetMotorInstallments200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetMotorInstallments200ResponseBuilder();
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


