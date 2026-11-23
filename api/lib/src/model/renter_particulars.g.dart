// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'renter_particulars.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class RenterParticularsBuilder {
  void replace(RenterParticulars other);
  void update(void Function(RenterParticularsBuilder) updates);
  String? get renterId;
  set renterId(String? renterId);

  String? get owner;
  set owner(String? owner);

  String? get category;
  set category(String? category);

  AddressBuilder get address;
  set address(AddressBuilder? address);
}

class _$$RenterParticulars extends $RenterParticulars {
  @override
  final String? renterId;
  @override
  final String? owner;
  @override
  final String? category;
  @override
  final Address? address;

  factory _$$RenterParticulars(
          [void Function($RenterParticularsBuilder)? updates]) =>
      ($RenterParticularsBuilder()..update(updates))._build();

  _$$RenterParticulars._(
      {this.renterId, this.owner, this.category, this.address})
      : super._();
  @override
  $RenterParticulars rebuild(
          void Function($RenterParticularsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $RenterParticularsBuilder toBuilder() =>
      $RenterParticularsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $RenterParticulars &&
        renterId == other.renterId &&
        owner == other.owner &&
        category == other.category &&
        address == other.address;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, renterId.hashCode);
    _$hash = $jc(_$hash, owner.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$RenterParticulars')
          ..add('renterId', renterId)
          ..add('owner', owner)
          ..add('category', category)
          ..add('address', address))
        .toString();
  }
}

class $RenterParticularsBuilder
    implements
        Builder<$RenterParticulars, $RenterParticularsBuilder>,
        RenterParticularsBuilder {
  _$$RenterParticulars? _$v;

  String? _renterId;
  String? get renterId => _$this._renterId;
  set renterId(covariant String? renterId) => _$this._renterId = renterId;

  String? _owner;
  String? get owner => _$this._owner;
  set owner(covariant String? owner) => _$this._owner = owner;

  String? _category;
  String? get category => _$this._category;
  set category(covariant String? category) => _$this._category = category;

  AddressBuilder? _address;
  AddressBuilder get address => _$this._address ??= AddressBuilder();
  set address(covariant AddressBuilder? address) => _$this._address = address;

  $RenterParticularsBuilder() {
    $RenterParticulars._defaults(this);
  }

  $RenterParticularsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _renterId = $v.renterId;
      _owner = $v.owner;
      _category = $v.category;
      _address = $v.address?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $RenterParticulars other) {
    _$v = other as _$$RenterParticulars;
  }

  @override
  void update(void Function($RenterParticularsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $RenterParticulars build() => _build();

  _$$RenterParticulars _build() {
    _$$RenterParticulars _$result;
    try {
      _$result = _$v ??
          _$$RenterParticulars._(
            renterId: renterId,
            owner: owner,
            category: category,
            address: _address?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'address';
        _address?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'$RenterParticulars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
