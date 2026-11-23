// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_renter_by_id200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetRenterById200Response extends GetRenterById200Response {
  @override
  final BuiltList<HouseItem>? stationary;
  @override
  final BuiltList<HouseItem>? mobile;
  @override
  final String? renterId;
  @override
  final String? owner;
  @override
  final String? category;
  @override
  final Address? address;

  factory _$GetRenterById200Response(
          [void Function(GetRenterById200ResponseBuilder)? updates]) =>
      (GetRenterById200ResponseBuilder()..update(updates))._build();

  _$GetRenterById200Response._(
      {this.stationary,
      this.mobile,
      this.renterId,
      this.owner,
      this.category,
      this.address})
      : super._();
  @override
  GetRenterById200Response rebuild(
          void Function(GetRenterById200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetRenterById200ResponseBuilder toBuilder() =>
      GetRenterById200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetRenterById200Response &&
        stationary == other.stationary &&
        mobile == other.mobile &&
        renterId == other.renterId &&
        owner == other.owner &&
        category == other.category &&
        address == other.address;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stationary.hashCode);
    _$hash = $jc(_$hash, mobile.hashCode);
    _$hash = $jc(_$hash, renterId.hashCode);
    _$hash = $jc(_$hash, owner.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetRenterById200Response')
          ..add('stationary', stationary)
          ..add('mobile', mobile)
          ..add('renterId', renterId)
          ..add('owner', owner)
          ..add('category', category)
          ..add('address', address))
        .toString();
  }
}

class GetRenterById200ResponseBuilder
    implements
        Builder<GetRenterById200Response, GetRenterById200ResponseBuilder>,
        RenterParticularsBuilder {
  _$GetRenterById200Response? _$v;

  ListBuilder<HouseItem>? _stationary;
  ListBuilder<HouseItem> get stationary =>
      _$this._stationary ??= ListBuilder<HouseItem>();
  set stationary(covariant ListBuilder<HouseItem>? stationary) =>
      _$this._stationary = stationary;

  ListBuilder<HouseItem>? _mobile;
  ListBuilder<HouseItem> get mobile =>
      _$this._mobile ??= ListBuilder<HouseItem>();
  set mobile(covariant ListBuilder<HouseItem>? mobile) =>
      _$this._mobile = mobile;

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

  GetRenterById200ResponseBuilder() {
    GetRenterById200Response._defaults(this);
  }

  GetRenterById200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stationary = $v.stationary?.toBuilder();
      _mobile = $v.mobile?.toBuilder();
      _renterId = $v.renterId;
      _owner = $v.owner;
      _category = $v.category;
      _address = $v.address?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant GetRenterById200Response other) {
    _$v = other as _$GetRenterById200Response;
  }

  @override
  void update(void Function(GetRenterById200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetRenterById200Response build() => _build();

  _$GetRenterById200Response _build() {
    _$GetRenterById200Response _$result;
    try {
      _$result = _$v ??
          _$GetRenterById200Response._(
            stationary: _stationary?.build(),
            mobile: _mobile?.build(),
            renterId: renterId,
            owner: owner,
            category: category,
            address: _address?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'stationary';
        _stationary?.build();
        _$failedField = 'mobile';
        _mobile?.build();

        _$failedField = 'address';
        _address?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GetRenterById200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
