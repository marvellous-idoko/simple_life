// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'motor_class.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MotorClassCategoryEnum _$motorClassCategoryEnum_private =
    const MotorClassCategoryEnum._('private');
const MotorClassCategoryEnum _$motorClassCategoryEnum_commercial =
    const MotorClassCategoryEnum._('commercial');

MotorClassCategoryEnum _$motorClassCategoryEnumValueOf(String name) {
  switch (name) {
    case 'private':
      return _$motorClassCategoryEnum_private;
    case 'commercial':
      return _$motorClassCategoryEnum_commercial;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<MotorClassCategoryEnum> _$motorClassCategoryEnumValues =
    BuiltSet<MotorClassCategoryEnum>(const <MotorClassCategoryEnum>[
  _$motorClassCategoryEnum_private,
  _$motorClassCategoryEnum_commercial,
]);

Serializer<MotorClassCategoryEnum> _$motorClassCategoryEnumSerializer =
    _$MotorClassCategoryEnumSerializer();

class _$MotorClassCategoryEnumSerializer
    implements PrimitiveSerializer<MotorClassCategoryEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'private': 'Private',
    'commercial': 'Commercial',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Private': 'private',
    'Commercial': 'commercial',
  };

  @override
  final Iterable<Type> types = const <Type>[MotorClassCategoryEnum];
  @override
  final String wireName = 'MotorClassCategoryEnum';

  @override
  Object serialize(Serializers serializers, MotorClassCategoryEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  MotorClassCategoryEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      MotorClassCategoryEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$MotorClass extends MotorClass {
  @override
  final MotorClassCategoryEnum? category;

  factory _$MotorClass([void Function(MotorClassBuilder)? updates]) =>
      (MotorClassBuilder()..update(updates))._build();

  _$MotorClass._({this.category}) : super._();
  @override
  MotorClass rebuild(void Function(MotorClassBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MotorClassBuilder toBuilder() => MotorClassBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MotorClass && category == other.category;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MotorClass')
          ..add('category', category))
        .toString();
  }
}

class MotorClassBuilder implements Builder<MotorClass, MotorClassBuilder> {
  _$MotorClass? _$v;

  MotorClassCategoryEnum? _category;
  MotorClassCategoryEnum? get category => _$this._category;
  set category(MotorClassCategoryEnum? category) => _$this._category = category;

  MotorClassBuilder() {
    MotorClass._defaults(this);
  }

  MotorClassBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _category = $v.category;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MotorClass other) {
    _$v = other as _$MotorClass;
  }

  @override
  void update(void Function(MotorClassBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MotorClass build() => _build();

  _$MotorClass _build() {
    final _$result = _$v ??
        _$MotorClass._(
          category: category,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
