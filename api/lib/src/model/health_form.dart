//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'health_form.g.dart';

/// HealthForm
///
/// Properties:
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
abstract class HealthForm implements Built<HealthForm, HealthFormBuilder> {
  @BuiltValueField(wireName: r'height')
  num? get height;

  @BuiltValueField(wireName: r'weight')
  num? get weight;

  @BuiltValueField(wireName: r'stateOfHealth')
  HealthFormStateOfHealthEnum? get stateOfHealth;
  // enum stateOfHealthEnum {  Excellent,  Satisfactory,  Poor,  };

  @BuiltValueField(wireName: r'neuralIssues')
  HealthFormNeuralIssuesEnum? get neuralIssues;
  // enum neuralIssuesEnum {  yes,  no,  };

  @BuiltValueField(wireName: r'respiratoryIssues')
  HealthFormRespiratoryIssuesEnum? get respiratoryIssues;
  // enum respiratoryIssuesEnum {  yes,  no,  };

  @BuiltValueField(wireName: r'renalIssues')
  HealthFormRenalIssuesEnum? get renalIssues;
  // enum renalIssuesEnum {  yes,  no,  };

  @BuiltValueField(wireName: r'heartIssues')
  HealthFormHeartIssuesEnum? get heartIssues;
  // enum heartIssuesEnum {  yes,  no,  };

  @BuiltValueField(wireName: r'preExistingIssues')
  HealthFormPreExistingIssuesEnum? get preExistingIssues;
  // enum preExistingIssuesEnum {  yes,  no,  };

  @BuiltValueField(wireName: r'stiIssues')
  HealthFormStiIssuesEnum? get stiIssues;
  // enum stiIssuesEnum {  yes,  no,  };

  @BuiltValueField(wireName: r'engageInSport')
  HealthFormEngageInSportEnum? get engageInSport;
  // enum engageInSportEnum {  yes,  no,  na,  };

  @BuiltValueField(wireName: r'generalBodyWeakness')
  HealthFormGeneralBodyWeaknessEnum? get generalBodyWeakness;
  // enum generalBodyWeaknessEnum {  yes,  no,  na,  };

  @BuiltValueField(wireName: r'pregnant')
  HealthFormPregnantEnum? get pregnant;
  // enum pregnantEnum {  yes,  no,  na,  };

  @BuiltValueField(wireName: r'alcoholQty')
  num? get alcoholQty;

  @BuiltValueField(wireName: r'smokingQty')
  num? get smokingQty;

  @BuiltValueField(wireName: r'disabilityIssues')
  HealthFormDisabilityIssuesEnum? get disabilityIssues;
  // enum disabilityIssuesEnum {  yes,  no,  };

  @BuiltValueField(wireName: r'comment')
  String? get comment;

  HealthForm._();

  factory HealthForm([void updates(HealthFormBuilder b)]) = _$HealthForm;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HealthFormBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HealthForm> get serializer => _$HealthFormSerializer();
}

class _$HealthFormSerializer implements PrimitiveSerializer<HealthForm> {
  @override
  final Iterable<Type> types = const [HealthForm, _$HealthForm];

  @override
  final String wireName = r'HealthForm';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HealthForm object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.height != null) {
      yield r'height';
      yield serializers.serialize(
        object.height,
        specifiedType: const FullType(num),
      );
    }
    if (object.weight != null) {
      yield r'weight';
      yield serializers.serialize(
        object.weight,
        specifiedType: const FullType(num),
      );
    }
    if (object.stateOfHealth != null) {
      yield r'stateOfHealth';
      yield serializers.serialize(
        object.stateOfHealth,
        specifiedType: const FullType(HealthFormStateOfHealthEnum),
      );
    }
    if (object.neuralIssues != null) {
      yield r'neuralIssues';
      yield serializers.serialize(
        object.neuralIssues,
        specifiedType: const FullType(HealthFormNeuralIssuesEnum),
      );
    }
    if (object.respiratoryIssues != null) {
      yield r'respiratoryIssues';
      yield serializers.serialize(
        object.respiratoryIssues,
        specifiedType: const FullType(HealthFormRespiratoryIssuesEnum),
      );
    }
    if (object.renalIssues != null) {
      yield r'renalIssues';
      yield serializers.serialize(
        object.renalIssues,
        specifiedType: const FullType(HealthFormRenalIssuesEnum),
      );
    }
    if (object.heartIssues != null) {
      yield r'heartIssues';
      yield serializers.serialize(
        object.heartIssues,
        specifiedType: const FullType(HealthFormHeartIssuesEnum),
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
    if (object.engageInSport != null) {
      yield r'engageInSport';
      yield serializers.serialize(
        object.engageInSport,
        specifiedType: const FullType(HealthFormEngageInSportEnum),
      );
    }
    if (object.generalBodyWeakness != null) {
      yield r'generalBodyWeakness';
      yield serializers.serialize(
        object.generalBodyWeakness,
        specifiedType: const FullType(HealthFormGeneralBodyWeaknessEnum),
      );
    }
    if (object.pregnant != null) {
      yield r'pregnant';
      yield serializers.serialize(
        object.pregnant,
        specifiedType: const FullType(HealthFormPregnantEnum),
      );
    }
    if (object.alcoholQty != null) {
      yield r'alcoholQty';
      yield serializers.serialize(
        object.alcoholQty,
        specifiedType: const FullType(num),
      );
    }
    if (object.smokingQty != null) {
      yield r'smokingQty';
      yield serializers.serialize(
        object.smokingQty,
        specifiedType: const FullType(num),
      );
    }
    if (object.disabilityIssues != null) {
      yield r'disabilityIssues';
      yield serializers.serialize(
        object.disabilityIssues,
        specifiedType: const FullType(HealthFormDisabilityIssuesEnum),
      );
    }
    if (object.comment != null) {
      yield r'comment';
      yield serializers.serialize(
        object.comment,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HealthForm object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HealthFormBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'height':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.height = valueDes;
          break;
        case r'weight':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.weight = valueDes;
          break;
        case r'stateOfHealth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(HealthFormStateOfHealthEnum),
          ) as HealthFormStateOfHealthEnum?;
          if (valueDes == null) continue;
          result.stateOfHealth = valueDes;
          break;
        case r'neuralIssues':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(HealthFormNeuralIssuesEnum),
          ) as HealthFormNeuralIssuesEnum?;
          if (valueDes == null) continue;
          result.neuralIssues = valueDes;
          break;
        case r'respiratoryIssues':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(HealthFormRespiratoryIssuesEnum),
          ) as HealthFormRespiratoryIssuesEnum?;
          if (valueDes == null) continue;
          result.respiratoryIssues = valueDes;
          break;
        case r'renalIssues':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(HealthFormRenalIssuesEnum),
          ) as HealthFormRenalIssuesEnum?;
          if (valueDes == null) continue;
          result.renalIssues = valueDes;
          break;
        case r'heartIssues':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(HealthFormHeartIssuesEnum),
          ) as HealthFormHeartIssuesEnum?;
          if (valueDes == null) continue;
          result.heartIssues = valueDes;
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
        case r'engageInSport':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(HealthFormEngageInSportEnum),
          ) as HealthFormEngageInSportEnum?;
          if (valueDes == null) continue;
          result.engageInSport = valueDes;
          break;
        case r'generalBodyWeakness':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(HealthFormGeneralBodyWeaknessEnum),
          ) as HealthFormGeneralBodyWeaknessEnum?;
          if (valueDes == null) continue;
          result.generalBodyWeakness = valueDes;
          break;
        case r'pregnant':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(HealthFormPregnantEnum),
          ) as HealthFormPregnantEnum?;
          if (valueDes == null) continue;
          result.pregnant = valueDes;
          break;
        case r'alcoholQty':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.alcoholQty = valueDes;
          break;
        case r'smokingQty':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.smokingQty = valueDes;
          break;
        case r'disabilityIssues':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(HealthFormDisabilityIssuesEnum),
          ) as HealthFormDisabilityIssuesEnum?;
          if (valueDes == null) continue;
          result.disabilityIssues = valueDes;
          break;
        case r'comment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.comment = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HealthForm deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HealthFormBuilder();
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


class HealthFormStateOfHealthEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Excellent')
  static const HealthFormStateOfHealthEnum excellent = _$healthFormStateOfHealthEnum_excellent;
  @BuiltValueEnumConst(wireName: r'Satisfactory')
  static const HealthFormStateOfHealthEnum satisfactory = _$healthFormStateOfHealthEnum_satisfactory;
  @BuiltValueEnumConst(wireName: r'Poor')
  static const HealthFormStateOfHealthEnum poor = _$healthFormStateOfHealthEnum_poor;

  static Serializer<HealthFormStateOfHealthEnum> get serializer => _$healthFormStateOfHealthEnumSerializer;

  const HealthFormStateOfHealthEnum._(String name): super(name);

  static BuiltSet<HealthFormStateOfHealthEnum> get values => _$healthFormStateOfHealthEnumValues;
  static HealthFormStateOfHealthEnum valueOf(String name) => _$healthFormStateOfHealthEnumValueOf(name);
}

class HealthFormNeuralIssuesEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'yes')
  static const HealthFormNeuralIssuesEnum yes = _$healthFormNeuralIssuesEnum_yes;
  @BuiltValueEnumConst(wireName: r'no')
  static const HealthFormNeuralIssuesEnum no = _$healthFormNeuralIssuesEnum_no;

  static Serializer<HealthFormNeuralIssuesEnum> get serializer => _$healthFormNeuralIssuesEnumSerializer;

  const HealthFormNeuralIssuesEnum._(String name): super(name);

  static BuiltSet<HealthFormNeuralIssuesEnum> get values => _$healthFormNeuralIssuesEnumValues;
  static HealthFormNeuralIssuesEnum valueOf(String name) => _$healthFormNeuralIssuesEnumValueOf(name);
}

class HealthFormRespiratoryIssuesEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'yes')
  static const HealthFormRespiratoryIssuesEnum yes = _$healthFormRespiratoryIssuesEnum_yes;
  @BuiltValueEnumConst(wireName: r'no')
  static const HealthFormRespiratoryIssuesEnum no = _$healthFormRespiratoryIssuesEnum_no;

  static Serializer<HealthFormRespiratoryIssuesEnum> get serializer => _$healthFormRespiratoryIssuesEnumSerializer;

  const HealthFormRespiratoryIssuesEnum._(String name): super(name);

  static BuiltSet<HealthFormRespiratoryIssuesEnum> get values => _$healthFormRespiratoryIssuesEnumValues;
  static HealthFormRespiratoryIssuesEnum valueOf(String name) => _$healthFormRespiratoryIssuesEnumValueOf(name);
}

class HealthFormRenalIssuesEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'yes')
  static const HealthFormRenalIssuesEnum yes = _$healthFormRenalIssuesEnum_yes;
  @BuiltValueEnumConst(wireName: r'no')
  static const HealthFormRenalIssuesEnum no = _$healthFormRenalIssuesEnum_no;

  static Serializer<HealthFormRenalIssuesEnum> get serializer => _$healthFormRenalIssuesEnumSerializer;

  const HealthFormRenalIssuesEnum._(String name): super(name);

  static BuiltSet<HealthFormRenalIssuesEnum> get values => _$healthFormRenalIssuesEnumValues;
  static HealthFormRenalIssuesEnum valueOf(String name) => _$healthFormRenalIssuesEnumValueOf(name);
}

class HealthFormHeartIssuesEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'yes')
  static const HealthFormHeartIssuesEnum yes = _$healthFormHeartIssuesEnum_yes;
  @BuiltValueEnumConst(wireName: r'no')
  static const HealthFormHeartIssuesEnum no = _$healthFormHeartIssuesEnum_no;

  static Serializer<HealthFormHeartIssuesEnum> get serializer => _$healthFormHeartIssuesEnumSerializer;

  const HealthFormHeartIssuesEnum._(String name): super(name);

  static BuiltSet<HealthFormHeartIssuesEnum> get values => _$healthFormHeartIssuesEnumValues;
  static HealthFormHeartIssuesEnum valueOf(String name) => _$healthFormHeartIssuesEnumValueOf(name);
}

class HealthFormPreExistingIssuesEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'yes')
  static const HealthFormPreExistingIssuesEnum yes = _$healthFormPreExistingIssuesEnum_yes;
  @BuiltValueEnumConst(wireName: r'no')
  static const HealthFormPreExistingIssuesEnum no = _$healthFormPreExistingIssuesEnum_no;

  static Serializer<HealthFormPreExistingIssuesEnum> get serializer => _$healthFormPreExistingIssuesEnumSerializer;

  const HealthFormPreExistingIssuesEnum._(String name): super(name);

  static BuiltSet<HealthFormPreExistingIssuesEnum> get values => _$healthFormPreExistingIssuesEnumValues;
  static HealthFormPreExistingIssuesEnum valueOf(String name) => _$healthFormPreExistingIssuesEnumValueOf(name);
}

class HealthFormStiIssuesEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'yes')
  static const HealthFormStiIssuesEnum yes = _$healthFormStiIssuesEnum_yes;
  @BuiltValueEnumConst(wireName: r'no')
  static const HealthFormStiIssuesEnum no = _$healthFormStiIssuesEnum_no;

  static Serializer<HealthFormStiIssuesEnum> get serializer => _$healthFormStiIssuesEnumSerializer;

  const HealthFormStiIssuesEnum._(String name): super(name);

  static BuiltSet<HealthFormStiIssuesEnum> get values => _$healthFormStiIssuesEnumValues;
  static HealthFormStiIssuesEnum valueOf(String name) => _$healthFormStiIssuesEnumValueOf(name);
}

class HealthFormEngageInSportEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'yes')
  static const HealthFormEngageInSportEnum yes = _$healthFormEngageInSportEnum_yes;
  @BuiltValueEnumConst(wireName: r'no')
  static const HealthFormEngageInSportEnum no = _$healthFormEngageInSportEnum_no;
  @BuiltValueEnumConst(wireName: r'na')
  static const HealthFormEngageInSportEnum na = _$healthFormEngageInSportEnum_na;

  static Serializer<HealthFormEngageInSportEnum> get serializer => _$healthFormEngageInSportEnumSerializer;

  const HealthFormEngageInSportEnum._(String name): super(name);

  static BuiltSet<HealthFormEngageInSportEnum> get values => _$healthFormEngageInSportEnumValues;
  static HealthFormEngageInSportEnum valueOf(String name) => _$healthFormEngageInSportEnumValueOf(name);
}

class HealthFormGeneralBodyWeaknessEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'yes')
  static const HealthFormGeneralBodyWeaknessEnum yes = _$healthFormGeneralBodyWeaknessEnum_yes;
  @BuiltValueEnumConst(wireName: r'no')
  static const HealthFormGeneralBodyWeaknessEnum no = _$healthFormGeneralBodyWeaknessEnum_no;
  @BuiltValueEnumConst(wireName: r'na')
  static const HealthFormGeneralBodyWeaknessEnum na = _$healthFormGeneralBodyWeaknessEnum_na;

  static Serializer<HealthFormGeneralBodyWeaknessEnum> get serializer => _$healthFormGeneralBodyWeaknessEnumSerializer;

  const HealthFormGeneralBodyWeaknessEnum._(String name): super(name);

  static BuiltSet<HealthFormGeneralBodyWeaknessEnum> get values => _$healthFormGeneralBodyWeaknessEnumValues;
  static HealthFormGeneralBodyWeaknessEnum valueOf(String name) => _$healthFormGeneralBodyWeaknessEnumValueOf(name);
}

class HealthFormPregnantEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'yes')
  static const HealthFormPregnantEnum yes = _$healthFormPregnantEnum_yes;
  @BuiltValueEnumConst(wireName: r'no')
  static const HealthFormPregnantEnum no = _$healthFormPregnantEnum_no;
  @BuiltValueEnumConst(wireName: r'na')
  static const HealthFormPregnantEnum na = _$healthFormPregnantEnum_na;

  static Serializer<HealthFormPregnantEnum> get serializer => _$healthFormPregnantEnumSerializer;

  const HealthFormPregnantEnum._(String name): super(name);

  static BuiltSet<HealthFormPregnantEnum> get values => _$healthFormPregnantEnumValues;
  static HealthFormPregnantEnum valueOf(String name) => _$healthFormPregnantEnumValueOf(name);
}

class HealthFormDisabilityIssuesEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'yes')
  static const HealthFormDisabilityIssuesEnum yes = _$healthFormDisabilityIssuesEnum_yes;
  @BuiltValueEnumConst(wireName: r'no')
  static const HealthFormDisabilityIssuesEnum no = _$healthFormDisabilityIssuesEnum_no;

  static Serializer<HealthFormDisabilityIssuesEnum> get serializer => _$healthFormDisabilityIssuesEnumSerializer;

  const HealthFormDisabilityIssuesEnum._(String name): super(name);

  static BuiltSet<HealthFormDisabilityIssuesEnum> get values => _$healthFormDisabilityIssuesEnumValues;
  static HealthFormDisabilityIssuesEnum valueOf(String name) => _$healthFormDisabilityIssuesEnumValueOf(name);
}

