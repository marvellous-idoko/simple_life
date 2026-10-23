//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'customer_personal.g.dart';

/// CustomerPersonal
///
/// Properties:
/// * [firstName] 
/// * [lastName] 
/// * [dateOfBirth] 
/// * [gender] 
/// * [phone] 
/// * [occupation] 
@BuiltValue(instantiable: false)
abstract class CustomerPersonal  {
  @BuiltValueField(wireName: r'firstName')
  String? get firstName;

  @BuiltValueField(wireName: r'lastName')
  String? get lastName;

  @BuiltValueField(wireName: r'dateOfBirth')
  Date? get dateOfBirth;

  @BuiltValueField(wireName: r'gender')
  CustomerPersonalGenderEnum? get gender;
  // enum genderEnum {  male,  female,  };

  @BuiltValueField(wireName: r'phone')
  String? get phone;

  @BuiltValueField(wireName: r'occupation')
  String? get occupation;

  @BuiltValueSerializer(custom: true)
  static Serializer<CustomerPersonal> get serializer => _$CustomerPersonalSerializer();
}

class _$CustomerPersonalSerializer implements PrimitiveSerializer<CustomerPersonal> {
  @override
  final Iterable<Type> types = const [CustomerPersonal];

  @override
  final String wireName = r'CustomerPersonal';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CustomerPersonal object, {
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
    if (object.dateOfBirth != null) {
      yield r'dateOfBirth';
      yield serializers.serialize(
        object.dateOfBirth,
        specifiedType: const FullType(Date),
      );
    }
    if (object.gender != null) {
      yield r'gender';
      yield serializers.serialize(
        object.gender,
        specifiedType: const FullType(CustomerPersonalGenderEnum),
      );
    }
    if (object.phone != null) {
      yield r'phone';
      yield serializers.serialize(
        object.phone,
        specifiedType: const FullType(String),
      );
    }
    if (object.occupation != null) {
      yield r'occupation';
      yield serializers.serialize(
        object.occupation,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CustomerPersonal object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  CustomerPersonal deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($CustomerPersonal)) as $CustomerPersonal;
  }
}


/// a concrete implementation of [CustomerPersonal], since [CustomerPersonal] is not instantiable
@BuiltValue(instantiable: true)
abstract class $CustomerPersonal implements CustomerPersonal, Built<$CustomerPersonal, $CustomerPersonalBuilder> {
  $CustomerPersonal._();

  factory $CustomerPersonal([void Function($CustomerPersonalBuilder)? updates]) = _$$CustomerPersonal;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($CustomerPersonalBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$CustomerPersonal> get serializer => _$$CustomerPersonalSerializer();
}

class _$$CustomerPersonalSerializer implements PrimitiveSerializer<$CustomerPersonal> {
  @override
  final Iterable<Type> types = const [$CustomerPersonal, _$$CustomerPersonal];

  @override
  final String wireName = r'$CustomerPersonal';

  @override
  Object serialize(
    Serializers serializers,
    $CustomerPersonal object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(CustomerPersonal))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CustomerPersonalBuilder result,
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
        case r'dateOfBirth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Date),
          ) as Date?;
          if (valueDes == null) continue;
          result.dateOfBirth = valueDes;
          break;
        case r'gender':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(CustomerPersonalGenderEnum),
          ) as CustomerPersonalGenderEnum?;
          if (valueDes == null) continue;
          result.gender = valueDes;
          break;
        case r'phone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.phone = valueDes;
          break;
        case r'occupation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.occupation = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $CustomerPersonal deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $CustomerPersonalBuilder();
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

class CustomerPersonalGenderEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'male')
  static const CustomerPersonalGenderEnum male = _$customerPersonalGenderEnum_male;
  @BuiltValueEnumConst(wireName: r'female')
  static const CustomerPersonalGenderEnum female = _$customerPersonalGenderEnum_female;

  static Serializer<CustomerPersonalGenderEnum> get serializer => _$customerPersonalGenderEnumSerializer;

  const CustomerPersonalGenderEnum._(String name): super(name);

  static BuiltSet<CustomerPersonalGenderEnum> get values => _$customerPersonalGenderEnumValues;
  static CustomerPersonalGenderEnum valueOf(String name) => _$customerPersonalGenderEnumValueOf(name);
}

