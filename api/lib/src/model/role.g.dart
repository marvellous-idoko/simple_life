// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RoleStatusEnum _$roleStatusEnum_pending =
    const RoleStatusEnum._('pending');
const RoleStatusEnum _$roleStatusEnum_active = const RoleStatusEnum._('active');
const RoleStatusEnum _$roleStatusEnum_inactive =
    const RoleStatusEnum._('inactive');

RoleStatusEnum _$roleStatusEnumValueOf(String name) {
  switch (name) {
    case 'pending':
      return _$roleStatusEnum_pending;
    case 'active':
      return _$roleStatusEnum_active;
    case 'inactive':
      return _$roleStatusEnum_inactive;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RoleStatusEnum> _$roleStatusEnumValues =
    BuiltSet<RoleStatusEnum>(const <RoleStatusEnum>[
  _$roleStatusEnum_pending,
  _$roleStatusEnum_active,
  _$roleStatusEnum_inactive,
]);

Serializer<RoleStatusEnum> _$roleStatusEnumSerializer =
    _$RoleStatusEnumSerializer();

class _$RoleStatusEnumSerializer
    implements PrimitiveSerializer<RoleStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pending': 'pending',
    'active': 'active',
    'inactive': 'inactive',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'pending': 'pending',
    'active': 'active',
    'inactive': 'inactive',
  };

  @override
  final Iterable<Type> types = const <Type>[RoleStatusEnum];
  @override
  final String wireName = 'RoleStatusEnum';

  @override
  Object serialize(Serializers serializers, RoleStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  RoleStatusEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RoleStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Role extends Role {
  @override
  final String? name;
  @override
  final BuiltList<String>? permissions;
  @override
  final RoleStatusEnum? status;

  factory _$Role([void Function(RoleBuilder)? updates]) =>
      (RoleBuilder()..update(updates))._build();

  _$Role._({this.name, this.permissions, this.status}) : super._();
  @override
  Role rebuild(void Function(RoleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RoleBuilder toBuilder() => RoleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Role &&
        name == other.name &&
        permissions == other.permissions &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, permissions.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Role')
          ..add('name', name)
          ..add('permissions', permissions)
          ..add('status', status))
        .toString();
  }
}

class RoleBuilder implements Builder<Role, RoleBuilder> {
  _$Role? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<String>? _permissions;
  ListBuilder<String> get permissions =>
      _$this._permissions ??= ListBuilder<String>();
  set permissions(ListBuilder<String>? permissions) =>
      _$this._permissions = permissions;

  RoleStatusEnum? _status;
  RoleStatusEnum? get status => _$this._status;
  set status(RoleStatusEnum? status) => _$this._status = status;

  RoleBuilder() {
    Role._defaults(this);
  }

  RoleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _permissions = $v.permissions?.toBuilder();
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Role other) {
    _$v = other as _$Role;
  }

  @override
  void update(void Function(RoleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Role build() => _build();

  _$Role _build() {
    _$Role _$result;
    try {
      _$result = _$v ??
          _$Role._(
            name: name,
            permissions: _permissions?.build(),
            status: status,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'permissions';
        _permissions?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'Role', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
