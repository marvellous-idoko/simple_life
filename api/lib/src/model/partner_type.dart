//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'partner_type.g.dart';

class PartnerType extends EnumClass {

  @BuiltValueEnumConst(wireName: r'companyPartner')
  static const PartnerType companyPartner = _$companyPartner;
  @BuiltValueEnumConst(wireName: r'individualPartner')
  static const PartnerType individualPartner = _$individualPartner;
  @BuiltValueEnumConst(wireName: r'broker')
  static const PartnerType broker = _$broker;
  @BuiltValueEnumConst(wireName: r'aggregatorPartner')
  static const PartnerType aggregatorPartner = _$aggregatorPartner;

  static Serializer<PartnerType> get serializer => _$partnerTypeSerializer;

  const PartnerType._(String name): super(name);

  static BuiltSet<PartnerType> get values => _$values;
  static PartnerType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class PartnerTypeMixin = Object with _$PartnerTypeMixin;

