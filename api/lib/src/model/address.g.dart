// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class AddressBuilder {
  void replace(Address other);
  void update(void Function(AddressBuilder) updates);
  String? get city;
  set city(String? city);

  String? get state;
  set state(String? state);

  String? get address;
  set address(String? address);

  String? get country;
  set country(String? country);

  String? get street;
  set street(String? street);

  String? get streetNumber;
  set streetNumber(String? streetNumber);

  String? get postCode;
  set postCode(String? postCode);
}

class _$$Address extends $Address {
  @override
  final String? city;
  @override
  final String? state;
  @override
  final String? address;
  @override
  final String? country;
  @override
  final String? street;
  @override
  final String? streetNumber;
  @override
  final String? postCode;

  factory _$$Address([void Function($AddressBuilder)? updates]) =>
      ($AddressBuilder()..update(updates))._build();

  _$$Address._(
      {this.city,
      this.state,
      this.address,
      this.country,
      this.street,
      this.streetNumber,
      this.postCode})
      : super._();
  @override
  $Address rebuild(void Function($AddressBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $AddressBuilder toBuilder() => $AddressBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $Address &&
        city == other.city &&
        state == other.state &&
        address == other.address &&
        country == other.country &&
        street == other.street &&
        streetNumber == other.streetNumber &&
        postCode == other.postCode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jc(_$hash, street.hashCode);
    _$hash = $jc(_$hash, streetNumber.hashCode);
    _$hash = $jc(_$hash, postCode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$Address')
          ..add('city', city)
          ..add('state', state)
          ..add('address', address)
          ..add('country', country)
          ..add('street', street)
          ..add('streetNumber', streetNumber)
          ..add('postCode', postCode))
        .toString();
  }
}

class $AddressBuilder
    implements Builder<$Address, $AddressBuilder>, AddressBuilder {
  _$$Address? _$v;

  String? _city;
  String? get city => _$this._city;
  set city(covariant String? city) => _$this._city = city;

  String? _state;
  String? get state => _$this._state;
  set state(covariant String? state) => _$this._state = state;

  String? _address;
  String? get address => _$this._address;
  set address(covariant String? address) => _$this._address = address;

  String? _country;
  String? get country => _$this._country;
  set country(covariant String? country) => _$this._country = country;

  String? _street;
  String? get street => _$this._street;
  set street(covariant String? street) => _$this._street = street;

  String? _streetNumber;
  String? get streetNumber => _$this._streetNumber;
  set streetNumber(covariant String? streetNumber) =>
      _$this._streetNumber = streetNumber;

  String? _postCode;
  String? get postCode => _$this._postCode;
  set postCode(covariant String? postCode) => _$this._postCode = postCode;

  $AddressBuilder() {
    $Address._defaults(this);
  }

  $AddressBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _city = $v.city;
      _state = $v.state;
      _address = $v.address;
      _country = $v.country;
      _street = $v.street;
      _streetNumber = $v.streetNumber;
      _postCode = $v.postCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $Address other) {
    _$v = other as _$$Address;
  }

  @override
  void update(void Function($AddressBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $Address build() => _build();

  _$$Address _build() {
    final _$result = _$v ??
        _$$Address._(
          city: city,
          state: state,
          address: address,
          country: country,
          street: street,
          streetNumber: streetNumber,
          postCode: postCode,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
