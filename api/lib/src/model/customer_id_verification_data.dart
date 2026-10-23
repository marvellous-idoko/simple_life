//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'customer_id_verification_data.g.dart';

/// CustomerIDVerificationData
///
/// Properties:
/// * [firstName] 
/// * [lastName] 
/// * [nin] 
/// * [issuedDate] 
/// * [licenseNo] 
/// * [dateOfBirth] 
/// * [expiryDate] 
/// * [stateOfOrigin] 
/// * [photo] 
@BuiltValue()
abstract class CustomerIDVerificationData implements Built<CustomerIDVerificationData, CustomerIDVerificationDataBuilder> {
  @BuiltValueField(wireName: r'firstName')
  String? get firstName;

  @BuiltValueField(wireName: r'lastName')
  String? get lastName;

  @BuiltValueField(wireName: r'nin')
  String? get nin;

  @BuiltValueField(wireName: r'issuedDate')
  String? get issuedDate;

  @BuiltValueField(wireName: r'licenseNo')
  String? get licenseNo;

  @BuiltValueField(wireName: r'dateOfBirth')
  String? get dateOfBirth;

  @BuiltValueField(wireName: r'expiryDate')
  String? get expiryDate;

  @BuiltValueField(wireName: r'stateOfOrigin')
  String? get stateOfOrigin;

  @BuiltValueField(wireName: r'Photo')
  String? get photo;

  CustomerIDVerificationData._();

  factory CustomerIDVerificationData([void updates(CustomerIDVerificationDataBuilder b)]) = _$CustomerIDVerificationData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CustomerIDVerificationDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CustomerIDVerificationData> get serializer => _$CustomerIDVerificationDataSerializer();
}

class _$CustomerIDVerificationDataSerializer implements PrimitiveSerializer<CustomerIDVerificationData> {
  @override
  final Iterable<Type> types = const [CustomerIDVerificationData, _$CustomerIDVerificationData];

  @override
  final String wireName = r'CustomerIDVerificationData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CustomerIDVerificationData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.firstName != null) {
      yield r'firstName';
      yield serializers.serialize(
        object.firstName,
        specifiedType: const FullType(String),
      );
    }
    if (object.lastName != null) {
      yield r'lastName';
      yield serializers.serialize(
        object.lastName,
        specifiedType: const FullType(String),
      );
    }
    if (object.nin != null) {
      yield r'nin';
      yield serializers.serialize(
        object.nin,
        specifiedType: const FullType(String),
      );
    }
    if (object.issuedDate != null) {
      yield r'issuedDate';
      yield serializers.serialize(
        object.issuedDate,
        specifiedType: const FullType(String),
      );
    }
    if (object.licenseNo != null) {
      yield r'licenseNo';
      yield serializers.serialize(
        object.licenseNo,
        specifiedType: const FullType(String),
      );
    }
    if (object.dateOfBirth != null) {
      yield r'dateOfBirth';
      yield serializers.serialize(
        object.dateOfBirth,
        specifiedType: const FullType(String),
      );
    }
    if (object.expiryDate != null) {
      yield r'expiryDate';
      yield serializers.serialize(
        object.expiryDate,
        specifiedType: const FullType(String),
      );
    }
    if (object.stateOfOrigin != null) {
      yield r'stateOfOrigin';
      yield serializers.serialize(
        object.stateOfOrigin,
        specifiedType: const FullType(String),
      );
    }
    if (object.photo != null) {
      yield r'Photo';
      yield serializers.serialize(
        object.photo,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CustomerIDVerificationData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CustomerIDVerificationDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'firstName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.firstName = valueDes;
          break;
        case r'lastName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lastName = valueDes;
          break;
        case r'nin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.nin = valueDes;
          break;
        case r'issuedDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.issuedDate = valueDes;
          break;
        case r'licenseNo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.licenseNo = valueDes;
          break;
        case r'dateOfBirth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.dateOfBirth = valueDes;
          break;
        case r'expiryDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.expiryDate = valueDes;
          break;
        case r'stateOfOrigin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.stateOfOrigin = valueDes;
          break;
        case r'Photo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.photo = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CustomerIDVerificationData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomerIDVerificationDataBuilder();
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


