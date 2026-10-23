//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/date.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'customer_sanction_list_verification.g.dart';

/// CustomerSanctionListVerification
///
/// Properties:
/// * [customerId] 
/// * [date] 
/// * [nameSearched] 
/// * [profileUrl] 
/// * [searchId] 
/// * [searchedOn] 
/// * [details] 
@BuiltValue()
abstract class CustomerSanctionListVerification implements Built<CustomerSanctionListVerification, CustomerSanctionListVerificationBuilder> {
  @BuiltValueField(wireName: r'customerId')
  String? get customerId;

  @BuiltValueField(wireName: r'date')
  Date? get date;

  @BuiltValueField(wireName: r'nameSearched')
  String? get nameSearched;

  @BuiltValueField(wireName: r'profileUrl')
  String? get profileUrl;

  @BuiltValueField(wireName: r'searchId')
  num? get searchId;

  @BuiltValueField(wireName: r'searchedOn')
  String? get searchedOn;

  @BuiltValueField(wireName: r'details')
  JsonObject? get details;

  CustomerSanctionListVerification._();

  factory CustomerSanctionListVerification([void updates(CustomerSanctionListVerificationBuilder b)]) = _$CustomerSanctionListVerification;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CustomerSanctionListVerificationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CustomerSanctionListVerification> get serializer => _$CustomerSanctionListVerificationSerializer();
}

class _$CustomerSanctionListVerificationSerializer implements PrimitiveSerializer<CustomerSanctionListVerification> {
  @override
  final Iterable<Type> types = const [CustomerSanctionListVerification, _$CustomerSanctionListVerification];

  @override
  final String wireName = r'CustomerSanctionListVerification';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CustomerSanctionListVerification object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.customerId != null) {
      yield r'customerId';
      yield serializers.serialize(
        object.customerId,
        specifiedType: const FullType(String),
      );
    }
    if (object.date != null) {
      yield r'date';
      yield serializers.serialize(
        object.date,
        specifiedType: const FullType(Date),
      );
    }
    if (object.nameSearched != null) {
      yield r'nameSearched';
      yield serializers.serialize(
        object.nameSearched,
        specifiedType: const FullType(String),
      );
    }
    if (object.profileUrl != null) {
      yield r'profileUrl';
      yield serializers.serialize(
        object.profileUrl,
        specifiedType: const FullType(String),
      );
    }
    if (object.searchId != null) {
      yield r'searchId';
      yield serializers.serialize(
        object.searchId,
        specifiedType: const FullType(num),
      );
    }
    if (object.searchedOn != null) {
      yield r'searchedOn';
      yield serializers.serialize(
        object.searchedOn,
        specifiedType: const FullType(String),
      );
    }
    if (object.details != null) {
      yield r'details';
      yield serializers.serialize(
        object.details,
        specifiedType: const FullType(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CustomerSanctionListVerification object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CustomerSanctionListVerificationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'customerId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.customerId = valueDes;
          break;
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Date),
          ) as Date?;
          if (valueDes == null) continue;
          result.date = valueDes;
          break;
        case r'nameSearched':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.nameSearched = valueDes;
          break;
        case r'profileUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.profileUrl = valueDes;
          break;
        case r'searchId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.searchId = valueDes;
          break;
        case r'searchedOn':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.searchedOn = valueDes;
          break;
        case r'details':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.details = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CustomerSanctionListVerification deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomerSanctionListVerificationBuilder();
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


