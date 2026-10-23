// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'renter_particulars_any_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RenterParticularsAnyOf extends RenterParticularsAnyOf {
  @override
  final String? renterId;
  @override
  final String? owner;
  @override
  final String? category;

  factory _$RenterParticularsAnyOf(
          [void Function(RenterParticularsAnyOfBuilder)? updates]) =>
      (RenterParticularsAnyOfBuilder()..update(updates))._build();

  _$RenterParticularsAnyOf._({this.renterId, this.owner, this.category})
      : super._();
  @override
  RenterParticularsAnyOf rebuild(
          void Function(RenterParticularsAnyOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RenterParticularsAnyOfBuilder toBuilder() =>
      RenterParticularsAnyOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RenterParticularsAnyOf &&
        renterId == other.renterId &&
        owner == other.owner &&
        category == other.category;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, renterId.hashCode);
    _$hash = $jc(_$hash, owner.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RenterParticularsAnyOf')
          ..add('renterId', renterId)
          ..add('owner', owner)
          ..add('category', category))
        .toString();
  }
}

class RenterParticularsAnyOfBuilder
    implements Builder<RenterParticularsAnyOf, RenterParticularsAnyOfBuilder> {
  _$RenterParticularsAnyOf? _$v;

  String? _renterId;
  String? get renterId => _$this._renterId;
  set renterId(String? renterId) => _$this._renterId = renterId;

  String? _owner;
  String? get owner => _$this._owner;
  set owner(String? owner) => _$this._owner = owner;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  RenterParticularsAnyOfBuilder() {
    RenterParticularsAnyOf._defaults(this);
  }

  RenterParticularsAnyOfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _renterId = $v.renterId;
      _owner = $v.owner;
      _category = $v.category;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RenterParticularsAnyOf other) {
    _$v = other as _$RenterParticularsAnyOf;
  }

  @override
  void update(void Function(RenterParticularsAnyOfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RenterParticularsAnyOf build() => _build();

  _$RenterParticularsAnyOf _build() {
    final _$result = _$v ??
        _$RenterParticularsAnyOf._(
          renterId: renterId,
          owner: owner,
          category: category,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
