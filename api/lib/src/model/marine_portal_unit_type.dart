//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'marine_portal_unit_type.g.dart';

class MarinePortalUnitType extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Credit')
  static const MarinePortalUnitType credit = _$credit;
  @BuiltValueEnumConst(wireName: r'Debit')
  static const MarinePortalUnitType debit = _$debit;

  static Serializer<MarinePortalUnitType> get serializer => _$marinePortalUnitTypeSerializer;

  const MarinePortalUnitType._(String name): super(name);

  static BuiltSet<MarinePortalUnitType> get values => _$values;
  static MarinePortalUnitType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class MarinePortalUnitTypeMixin = Object with _$MarinePortalUnitTypeMixin;

