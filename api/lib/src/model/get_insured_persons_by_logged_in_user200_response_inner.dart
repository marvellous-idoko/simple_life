//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/health_form.dart';
import 'package:openapi/src/model/customer_personal.dart';
import 'package:openapi/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_insured_persons_by_logged_in_user200_response_inner.g.dart';

/// GetInsuredPersonsByLoggedInUser200ResponseInner
///
/// Properties:
/// * [firstName] 
/// * [lastName] 
/// * [dateOfBirth] 
/// * [gender] 
/// * [phone] 
/// * [occupation] 
/// * [height] 
/// * [weight] 
/// * [stateOfHealth] 
/// * [neuralIssues] 
/// * [respiratoryIssues] 
/// * [renalIssues] 
/// * [heartIssues] 
/// * [preExistingIssues] 
/// * [stiIssues] 
/// * [engageInSport] 
/// * [generalBodyWeakness] 
/// * [pregnant] 
/// * [alcoholQty] 
/// * [smokingQty] 
/// * [disabilityIssues] 
/// * [comment] 
@BuiltValue()
abstract class GetInsuredPersonsByLoggedInUser200ResponseInner implements CustomerPersonal, HealthForm, Built<GetInsuredPersonsByLoggedInUser200ResponseInner, GetInsuredPersonsByLoggedInUser200ResponseInnerBuilder> {
  GetInsuredPersonsByLoggedInUser200ResponseInner._();

  factory GetInsuredPersonsByLoggedInUser200ResponseInner([void updates(GetInsuredPersonsByLoggedInUser200ResponseInnerBuilder b)]) = _$GetInsuredPersonsByLoggedInUser200ResponseInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetInsuredPersonsByLoggedInUser200ResponseInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetInsuredPersonsByLoggedInUser200ResponseInner> get serializer => _$GetInsuredPersonsByLoggedInUser200ResponseInnerSerializer();
}

class _$GetInsuredPersonsByLoggedInUser200ResponseInnerSerializer implements PrimitiveSerializer<GetInsuredPersonsByLoggedInUser200ResponseInner> {
  @override
  final Iterable<Type> types = const [GetInsuredPersonsByLoggedInUser200ResponseInner, _$GetInsuredPersonsByLoggedInUser200ResponseInner];

  @override
  final String wireName = r'GetInsuredPersonsByLoggedInUser200ResponseInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetInsuredPersonsByLoggedInUser200ResponseInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.lastName != null) {
      yield r'lastName';
      yield serializers.serialize(
        object.lastName,
        specifiedType: const FullType(String),
      );
    }
    if (object.smokingQty != null) {
      yield r'smokingQty';
      yield serializers.serialize(
        object.smokingQty,
        specifiedType: const FullType(num),
      );
    }
    if (object.occupation != null) {
      yield r'occupation';
      yield serializers.serialize(
        object.occupation,
        specifiedType: const FullType(String),
      );
    }
    if (object.disabilityIssues != null) {
      yield r'disabilityIssues';
      yield serializers.serialize(
        object.disabilityIssues,
        specifiedType: const FullType(HealthFormDisabilityIssuesEnum),
      );
    }
    if (object.gender != null) {
      yield r'gender';
      yield serializers.serialize(
        object.gender,
        specifiedType: const FullType(CustomerPersonalGenderEnum),
      );
    }
    if (object.heartIssues != null) {
      yield r'heartIssues';
      yield serializers.serialize(
        object.heartIssues,
        specifiedType: const FullType(HealthFormHeartIssuesEnum),
      );
    }
    if (object.renalIssues != null) {
      yield r'renalIssues';
      yield serializers.serialize(
        object.renalIssues,
        specifiedType: const FullType(HealthFormRenalIssuesEnum),
      );
    }
    if (object.weight != null) {
      yield r'weight';
      yield serializers.serialize(
        object.weight,
        specifiedType: const FullType(num),
      );
    }
    if (object.alcoholQty != null) {
      yield r'alcoholQty';
      yield serializers.serialize(
        object.alcoholQty,
        specifiedType: const FullType(num),
      );
    }
    if (object.dateOfBirth != null) {
      yield r'dateOfBirth';
      yield serializers.serialize(
        object.dateOfBirth,
        specifiedType: const FullType(Date),
      );
    }
    if (object.neuralIssues != null) {
      yield r'neuralIssues';
      yield serializers.serialize(
        object.neuralIssues,
        specifiedType: const FullType(HealthFormNeuralIssuesEnum),
      );
    }
    if (object.engageInSport != null) {
      yield r'engageInSport';
      yield serializers.serialize(
        object.engageInSport,
        specifiedType: const FullType(HealthFormEngageInSportEnum),
      );
    }
    if (object.firstName != null) {
      yield r'firstName';
      yield serializers.serialize(
        object.firstName,
        specifiedType: const FullType(String),
      );
    }
    if (object.preExistingIssues != null) {
      yield r'preExistingIssues';
      yield serializers.serialize(
        object.preExistingIssues,
        specifiedType: const FullType(HealthFormPreExistingIssuesEnum),
      );
    }
    if (object.stiIssues != null) {
      yield r'stiIssues';
      yield serializers.serialize(
        object.stiIssues,
        specifiedType: const FullType(HealthFormStiIssuesEnum),
      );
    }
    if (object.phone != null) {
      yield r'phone';
      yield serializers.serialize(
        object.phone,
        specifiedType: const FullType(String),
      );
    }
    if (object.respiratoryIssues != null) {
      yield r'respiratoryIssues';
      yield serializers.serialize(
        object.respiratoryIssues,
        specifiedType: const FullType(HealthFormRespiratoryIssuesEnum),
      );
    }
    if (object.stateOfHealth != null) {
      yield r'stateOfHealth';
      yield serializers.serialize(
        object.stateOfHealth,
        specifiedType: const FullType(HealthFormStateOfHealthEnum),
      );
    }
    if (object.comment != null) {
      yield r'comment';
      yield serializers.serialize(
        object.comment,
        specifiedType: const FullType(String),
      );
    }
    if (object.generalBodyWeakness != null) {
      yield r'generalBodyWeakness';
      yield serializers.serialize(
        object.generalBodyWeakness,
        specifiedType: const FullType(HealthFormGeneralBodyWeaknessEnum),
      );
    }
    if (object.height != null) {
      yield r'height';
      yield serializers.serialize(
        object.height,
        specifiedType: const FullType(num),
      );
    }
    if (object.pregnant != null) {
      yield r'pregnant';
      yield serializers.serialize(
        object.pregnant,
        specifiedType: const FullType(HealthFormPregnantEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetInsuredPersonsByLoggedInUser200ResponseInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetInsuredPersonsByLoggedInUser200ResponseInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'lastName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lastName = valueDes;
          break;
        case r'smokingQty':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.smokingQty = valueDes;
          break;
        case r'occupation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.occupation = valueDes;
          break;
        case r'disabilityIssues':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(HealthFormDisabilityIssuesEnum),
          ) as HealthFormDisabilityIssuesEnum?;
          if (valueDes == null) continue;
          result.disabilityIssues = valueDes;
          break;
        case r'gender':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(CustomerPersonalGenderEnum),
          ) as CustomerPersonalGenderEnum?;
          if (valueDes == null) continue;
          result.gender = valueDes;
          break;
        case r'heartIssues':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(HealthFormHeartIssuesEnum),
          ) as HealthFormHeartIssuesEnum?;
          if (valueDes == null) continue;
          result.heartIssues = valueDes;
          break;
        case r'renalIssues':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(HealthFormRenalIssuesEnum),
          ) as HealthFormRenalIssuesEnum?;
          if (valueDes == null) continue;
          result.renalIssues = valueDes;
          break;
        case r'weight':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.weight = valueDes;
          break;
        case r'alcoholQty':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.alcoholQty = valueDes;
          break;
        case r'dateOfBirth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Date),
          ) as Date?;
          if (valueDes == null) continue;
          result.dateOfBirth = valueDes;
          break;
        case r'neuralIssues':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(HealthFormNeuralIssuesEnum),
          ) as HealthFormNeuralIssuesEnum?;
          if (valueDes == null) continue;
          result.neuralIssues = valueDes;
          break;
        case r'engageInSport':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(HealthFormEngageInSportEnum),
          ) as HealthFormEngageInSportEnum?;
          if (valueDes == null) continue;
          result.engageInSport = valueDes;
          break;
        case r'firstName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.firstName = valueDes;
          break;
        case r'preExistingIssues':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(HealthFormPreExistingIssuesEnum),
          ) as HealthFormPreExistingIssuesEnum?;
          if (valueDes == null) continue;
          result.preExistingIssues = valueDes;
          break;
        case r'stiIssues':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(HealthFormStiIssuesEnum),
          ) as HealthFormStiIssuesEnum?;
          if (valueDes == null) continue;
          result.stiIssues = valueDes;
          break;
        case r'phone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.phone = valueDes;
          break;
        case r'respiratoryIssues':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(HealthFormRespiratoryIssuesEnum),
          ) as HealthFormRespiratoryIssuesEnum?;
          if (valueDes == null) continue;
          result.respiratoryIssues = valueDes;
          break;
        case r'stateOfHealth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(HealthFormStateOfHealthEnum),
          ) as HealthFormStateOfHealthEnum?;
          if (valueDes == null) continue;
          result.stateOfHealth = valueDes;
          break;
        case r'comment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.comment = valueDes;
          break;
        case r'generalBodyWeakness':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(HealthFormGeneralBodyWeaknessEnum),
          ) as HealthFormGeneralBodyWeaknessEnum?;
          if (valueDes == null) continue;
          result.generalBodyWeakness = valueDes;
          break;
        case r'height':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.height = valueDes;
          break;
        case r'pregnant':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(HealthFormPregnantEnum),
          ) as HealthFormPregnantEnum?;
          if (valueDes == null) continue;
          result.pregnant = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetInsuredPersonsByLoggedInUser200ResponseInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetInsuredPersonsByLoggedInUser200ResponseInnerBuilder();
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


class GetInsuredPersonsByLoggedInUser200ResponseInnerGenderEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'male')
  static const GetInsuredPersonsByLoggedInUser200ResponseInnerGenderEnum male = _$getInsuredPersonsByLoggedInUser200ResponseInnerGenderEnum_male;
  @BuiltValueEnumConst(wireName: r'female')
  static const GetInsuredPersonsByLoggedInUser200ResponseInnerGenderEnum female = _$getInsuredPersonsByLoggedInUser200ResponseInnerGenderEnum_female;

  static Serializer<GetInsuredPersonsByLoggedInUser200ResponseInnerGenderEnum> get serializer => _$getInsuredPersonsByLoggedInUser200ResponseInnerGenderEnumSerializer;

  const GetInsuredPersonsByLoggedInUser200ResponseInnerGenderEnum._(String name): super(name);

  static BuiltSet<GetInsuredPersonsByLoggedInUser200ResponseInnerGenderEnum> get values => _$getInsuredPersonsByLoggedInUser200ResponseInnerGenderEnumValues;
  static GetInsuredPersonsByLoggedInUser200ResponseInnerGenderEnum valueOf(String name) => _$getInsuredPersonsByLoggedInUser200ResponseInnerGenderEnumValueOf(name);
}

class GetInsuredPersonsByLoggedInUser200ResponseInnerStateOfHealthEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Excellent')
  static const GetInsuredPersonsByLoggedInUser200ResponseInnerStateOfHealthEnum excellent = _$getInsuredPersonsByLoggedInUser200ResponseInnerStateOfHealthEnum_excellent;
  @BuiltValueEnumConst(wireName: r'Satisfactory')
  static const GetInsuredPersonsByLoggedInUser200ResponseInnerStateOfHealthEnum satisfactory = _$getInsuredPersonsByLoggedInUser200ResponseInnerStateOfHealthEnum_satisfactory;
  @BuiltValueEnumConst(wireName: r'Poor')
  static const GetInsuredPersonsByLoggedInUser200ResponseInnerStateOfHealthEnum poor = _$getInsuredPersonsByLoggedInUser200ResponseInnerStateOfHealthEnum_poor;

  static Serializer<GetInsuredPersonsByLoggedInUser200ResponseInnerStateOfHealthEnum> get serializer => _$getInsuredPersonsByLoggedInUser200ResponseInnerStateOfHealthEnumSerializer;

  const GetInsuredPersonsByLoggedInUser200ResponseInnerStateOfHealthEnum._(String name): super(name);

  static BuiltSet<GetInsuredPersonsByLoggedInUser200ResponseInnerStateOfHealthEnum> get values => _$getInsuredPersonsByLoggedInUser200ResponseInnerStateOfHealthEnumValues;
  static GetInsuredPersonsByLoggedInUser200ResponseInnerStateOfHealthEnum valueOf(String name) => _$getInsuredPersonsByLoggedInUser200ResponseInnerStateOfHealthEnumValueOf(name);
}

class GetInsuredPersonsByLoggedInUser200ResponseInnerNeuralIssuesEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'true')
  static const GetInsuredPersonsByLoggedInUser200ResponseInnerNeuralIssuesEnum true_ = _$getInsuredPersonsByLoggedInUser200ResponseInnerNeuralIssuesEnum_true_;
  @BuiltValueEnumConst(wireName: r'false')
  static const GetInsuredPersonsByLoggedInUser200ResponseInnerNeuralIssuesEnum false_ = _$getInsuredPersonsByLoggedInUser200ResponseInnerNeuralIssuesEnum_false_;

  static Serializer<GetInsuredPersonsByLoggedInUser200ResponseInnerNeuralIssuesEnum> get serializer => _$getInsuredPersonsByLoggedInUser200ResponseInnerNeuralIssuesEnumSerializer;

  const GetInsuredPersonsByLoggedInUser200ResponseInnerNeuralIssuesEnum._(String name): super(name);

  static BuiltSet<GetInsuredPersonsByLoggedInUser200ResponseInnerNeuralIssuesEnum> get values => _$getInsuredPersonsByLoggedInUser200ResponseInnerNeuralIssuesEnumValues;
  static GetInsuredPersonsByLoggedInUser200ResponseInnerNeuralIssuesEnum valueOf(String name) => _$getInsuredPersonsByLoggedInUser200ResponseInnerNeuralIssuesEnumValueOf(name);
}

class GetInsuredPersonsByLoggedInUser200ResponseInnerRespiratoryIssuesEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'true')
  static const GetInsuredPersonsByLoggedInUser200ResponseInnerRespiratoryIssuesEnum true_ = _$getInsuredPersonsByLoggedInUser200ResponseInnerRespiratoryIssuesEnum_true_;
  @BuiltValueEnumConst(wireName: r'false')
  static const GetInsuredPersonsByLoggedInUser200ResponseInnerRespiratoryIssuesEnum false_ = _$getInsuredPersonsByLoggedInUser200ResponseInnerRespiratoryIssuesEnum_false_;

  static Serializer<GetInsuredPersonsByLoggedInUser200ResponseInnerRespiratoryIssuesEnum> get serializer => _$getInsuredPersonsByLoggedInUser200ResponseInnerRespiratoryIssuesEnumSerializer;

  const GetInsuredPersonsByLoggedInUser200ResponseInnerRespiratoryIssuesEnum._(String name): super(name);

  static BuiltSet<GetInsuredPersonsByLoggedInUser200ResponseInnerRespiratoryIssuesEnum> get values => _$getInsuredPersonsByLoggedInUser200ResponseInnerRespiratoryIssuesEnumValues;
  static GetInsuredPersonsByLoggedInUser200ResponseInnerRespiratoryIssuesEnum valueOf(String name) => _$getInsuredPersonsByLoggedInUser200ResponseInnerRespiratoryIssuesEnumValueOf(name);
}

class GetInsuredPersonsByLoggedInUser200ResponseInnerRenalIssuesEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'true')
  static const GetInsuredPersonsByLoggedInUser200ResponseInnerRenalIssuesEnum true_ = _$getInsuredPersonsByLoggedInUser200ResponseInnerRenalIssuesEnum_true_;
  @BuiltValueEnumConst(wireName: r'false')
  static const GetInsuredPersonsByLoggedInUser200ResponseInnerRenalIssuesEnum false_ = _$getInsuredPersonsByLoggedInUser200ResponseInnerRenalIssuesEnum_false_;

  static Serializer<GetInsuredPersonsByLoggedInUser200ResponseInnerRenalIssuesEnum> get serializer => _$getInsuredPersonsByLoggedInUser200ResponseInnerRenalIssuesEnumSerializer;

  const GetInsuredPersonsByLoggedInUser200ResponseInnerRenalIssuesEnum._(String name): super(name);

  static BuiltSet<GetInsuredPersonsByLoggedInUser200ResponseInnerRenalIssuesEnum> get values => _$getInsuredPersonsByLoggedInUser200ResponseInnerRenalIssuesEnumValues;
  static GetInsuredPersonsByLoggedInUser200ResponseInnerRenalIssuesEnum valueOf(String name) => _$getInsuredPersonsByLoggedInUser200ResponseInnerRenalIssuesEnumValueOf(name);
}

class GetInsuredPersonsByLoggedInUser200ResponseInnerHeartIssuesEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'true')
  static const GetInsuredPersonsByLoggedInUser200ResponseInnerHeartIssuesEnum true_ = _$getInsuredPersonsByLoggedInUser200ResponseInnerHeartIssuesEnum_true_;
  @BuiltValueEnumConst(wireName: r'false')
  static const GetInsuredPersonsByLoggedInUser200ResponseInnerHeartIssuesEnum false_ = _$getInsuredPersonsByLoggedInUser200ResponseInnerHeartIssuesEnum_false_;

  static Serializer<GetInsuredPersonsByLoggedInUser200ResponseInnerHeartIssuesEnum> get serializer => _$getInsuredPersonsByLoggedInUser200ResponseInnerHeartIssuesEnumSerializer;

  const GetInsuredPersonsByLoggedInUser200ResponseInnerHeartIssuesEnum._(String name): super(name);

  static BuiltSet<GetInsuredPersonsByLoggedInUser200ResponseInnerHeartIssuesEnum> get values => _$getInsuredPersonsByLoggedInUser200ResponseInnerHeartIssuesEnumValues;
  static GetInsuredPersonsByLoggedInUser200ResponseInnerHeartIssuesEnum valueOf(String name) => _$getInsuredPersonsByLoggedInUser200ResponseInnerHeartIssuesEnumValueOf(name);
}

class GetInsuredPersonsByLoggedInUser200ResponseInnerPreExistingIssuesEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'true')
  static const GetInsuredPersonsByLoggedInUser200ResponseInnerPreExistingIssuesEnum true_ = _$getInsuredPersonsByLoggedInUser200ResponseInnerPreExistingIssuesEnum_true_;
  @BuiltValueEnumConst(wireName: r'false')
  static const GetInsuredPersonsByLoggedInUser200ResponseInnerPreExistingIssuesEnum false_ = _$getInsuredPersonsByLoggedInUser200ResponseInnerPreExistingIssuesEnum_false_;

  static Serializer<GetInsuredPersonsByLoggedInUser200ResponseInnerPreExistingIssuesEnum> get serializer => _$getInsuredPersonsByLoggedInUser200ResponseInnerPreExistingIssuesEnumSerializer;

  const GetInsuredPersonsByLoggedInUser200ResponseInnerPreExistingIssuesEnum._(String name): super(name);

  static BuiltSet<GetInsuredPersonsByLoggedInUser200ResponseInnerPreExistingIssuesEnum> get values => _$getInsuredPersonsByLoggedInUser200ResponseInnerPreExistingIssuesEnumValues;
  static GetInsuredPersonsByLoggedInUser200ResponseInnerPreExistingIssuesEnum valueOf(String name) => _$getInsuredPersonsByLoggedInUser200ResponseInnerPreExistingIssuesEnumValueOf(name);
}

class GetInsuredPersonsByLoggedInUser200ResponseInnerStiIssuesEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'true')
  static const GetInsuredPersonsByLoggedInUser200ResponseInnerStiIssuesEnum true_ = _$getInsuredPersonsByLoggedInUser200ResponseInnerStiIssuesEnum_true_;
  @BuiltValueEnumConst(wireName: r'false')
  static const GetInsuredPersonsByLoggedInUser200ResponseInnerStiIssuesEnum false_ = _$getInsuredPersonsByLoggedInUser200ResponseInnerStiIssuesEnum_false_;

  static Serializer<GetInsuredPersonsByLoggedInUser200ResponseInnerStiIssuesEnum> get serializer => _$getInsuredPersonsByLoggedInUser200ResponseInnerStiIssuesEnumSerializer;

  const GetInsuredPersonsByLoggedInUser200ResponseInnerStiIssuesEnum._(String name): super(name);

  static BuiltSet<GetInsuredPersonsByLoggedInUser200ResponseInnerStiIssuesEnum> get values => _$getInsuredPersonsByLoggedInUser200ResponseInnerStiIssuesEnumValues;
  static GetInsuredPersonsByLoggedInUser200ResponseInnerStiIssuesEnum valueOf(String name) => _$getInsuredPersonsByLoggedInUser200ResponseInnerStiIssuesEnumValueOf(name);
}

class GetInsuredPersonsByLoggedInUser200ResponseInnerEngageInSportEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'true')
  static const GetInsuredPersonsByLoggedInUser200ResponseInnerEngageInSportEnum true_ = _$getInsuredPersonsByLoggedInUser200ResponseInnerEngageInSportEnum_true_;
  @BuiltValueEnumConst(wireName: r'false')
  static const GetInsuredPersonsByLoggedInUser200ResponseInnerEngageInSportEnum false_ = _$getInsuredPersonsByLoggedInUser200ResponseInnerEngageInSportEnum_false_;
  @BuiltValueEnumConst(wireName: r'na')
  static const GetInsuredPersonsByLoggedInUser200ResponseInnerEngageInSportEnum na = _$getInsuredPersonsByLoggedInUser200ResponseInnerEngageInSportEnum_na;

  static Serializer<GetInsuredPersonsByLoggedInUser200ResponseInnerEngageInSportEnum> get serializer => _$getInsuredPersonsByLoggedInUser200ResponseInnerEngageInSportEnumSerializer;

  const GetInsuredPersonsByLoggedInUser200ResponseInnerEngageInSportEnum._(String name): super(name);

  static BuiltSet<GetInsuredPersonsByLoggedInUser200ResponseInnerEngageInSportEnum> get values => _$getInsuredPersonsByLoggedInUser200ResponseInnerEngageInSportEnumValues;
  static GetInsuredPersonsByLoggedInUser200ResponseInnerEngageInSportEnum valueOf(String name) => _$getInsuredPersonsByLoggedInUser200ResponseInnerEngageInSportEnumValueOf(name);
}

class GetInsuredPersonsByLoggedInUser200ResponseInnerGeneralBodyWeaknessEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'true')
  static const GetInsuredPersonsByLoggedInUser200ResponseInnerGeneralBodyWeaknessEnum true_ = _$getInsuredPersonsByLoggedInUser200ResponseInnerGeneralBodyWeaknessEnum_true_;
  @BuiltValueEnumConst(wireName: r'false')
  static const GetInsuredPersonsByLoggedInUser200ResponseInnerGeneralBodyWeaknessEnum false_ = _$getInsuredPersonsByLoggedInUser200ResponseInnerGeneralBodyWeaknessEnum_false_;
  @BuiltValueEnumConst(wireName: r'na')
  static const GetInsuredPersonsByLoggedInUser200ResponseInnerGeneralBodyWeaknessEnum na = _$getInsuredPersonsByLoggedInUser200ResponseInnerGeneralBodyWeaknessEnum_na;

  static Serializer<GetInsuredPersonsByLoggedInUser200ResponseInnerGeneralBodyWeaknessEnum> get serializer => _$getInsuredPersonsByLoggedInUser200ResponseInnerGeneralBodyWeaknessEnumSerializer;

  const GetInsuredPersonsByLoggedInUser200ResponseInnerGeneralBodyWeaknessEnum._(String name): super(name);

  static BuiltSet<GetInsuredPersonsByLoggedInUser200ResponseInnerGeneralBodyWeaknessEnum> get values => _$getInsuredPersonsByLoggedInUser200ResponseInnerGeneralBodyWeaknessEnumValues;
  static GetInsuredPersonsByLoggedInUser200ResponseInnerGeneralBodyWeaknessEnum valueOf(String name) => _$getInsuredPersonsByLoggedInUser200ResponseInnerGeneralBodyWeaknessEnumValueOf(name);
}

class GetInsuredPersonsByLoggedInUser200ResponseInnerPregnantEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'true')
  static const GetInsuredPersonsByLoggedInUser200ResponseInnerPregnantEnum true_ = _$getInsuredPersonsByLoggedInUser200ResponseInnerPregnantEnum_true_;
  @BuiltValueEnumConst(wireName: r'false')
  static const GetInsuredPersonsByLoggedInUser200ResponseInnerPregnantEnum false_ = _$getInsuredPersonsByLoggedInUser200ResponseInnerPregnantEnum_false_;
  @BuiltValueEnumConst(wireName: r'na')
  static const GetInsuredPersonsByLoggedInUser200ResponseInnerPregnantEnum na = _$getInsuredPersonsByLoggedInUser200ResponseInnerPregnantEnum_na;

  static Serializer<GetInsuredPersonsByLoggedInUser200ResponseInnerPregnantEnum> get serializer => _$getInsuredPersonsByLoggedInUser200ResponseInnerPregnantEnumSerializer;

  const GetInsuredPersonsByLoggedInUser200ResponseInnerPregnantEnum._(String name): super(name);

  static BuiltSet<GetInsuredPersonsByLoggedInUser200ResponseInnerPregnantEnum> get values => _$getInsuredPersonsByLoggedInUser200ResponseInnerPregnantEnumValues;
  static GetInsuredPersonsByLoggedInUser200ResponseInnerPregnantEnum valueOf(String name) => _$getInsuredPersonsByLoggedInUser200ResponseInnerPregnantEnumValueOf(name);
}

class GetInsuredPersonsByLoggedInUser200ResponseInnerDisabilityIssuesEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'true')
  static const GetInsuredPersonsByLoggedInUser200ResponseInnerDisabilityIssuesEnum true_ = _$getInsuredPersonsByLoggedInUser200ResponseInnerDisabilityIssuesEnum_true_;
  @BuiltValueEnumConst(wireName: r'false')
  static const GetInsuredPersonsByLoggedInUser200ResponseInnerDisabilityIssuesEnum false_ = _$getInsuredPersonsByLoggedInUser200ResponseInnerDisabilityIssuesEnum_false_;

  static Serializer<GetInsuredPersonsByLoggedInUser200ResponseInnerDisabilityIssuesEnum> get serializer => _$getInsuredPersonsByLoggedInUser200ResponseInnerDisabilityIssuesEnumSerializer;

  const GetInsuredPersonsByLoggedInUser200ResponseInnerDisabilityIssuesEnum._(String name): super(name);

  static BuiltSet<GetInsuredPersonsByLoggedInUser200ResponseInnerDisabilityIssuesEnum> get values => _$getInsuredPersonsByLoggedInUser200ResponseInnerDisabilityIssuesEnumValues;
  static GetInsuredPersonsByLoggedInUser200ResponseInnerDisabilityIssuesEnum valueOf(String name) => _$getInsuredPersonsByLoggedInUser200ResponseInnerDisabilityIssuesEnumValueOf(name);
}

