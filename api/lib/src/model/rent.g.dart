// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rent.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Rent extends Rent {
  @override
  final num? rent;
  @override
  final Date? dateOfExpiry;

  factory _$Rent([void Function(RentBuilder)? updates]) =>
      (RentBuilder()..update(updates))._build();

  _$Rent._({this.rent, this.dateOfExpiry}) : super._();
  @override
  Rent rebuild(void Function(RentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RentBuilder toBuilder() => RentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Rent &&
        rent == other.rent &&
        dateOfExpiry == other.dateOfExpiry;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, rent.hashCode);
    _$hash = $jc(_$hash, dateOfExpiry.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Rent')
          ..add('rent', rent)
          ..add('dateOfExpiry', dateOfExpiry))
        .toString();
  }
}

class RentBuilder implements Builder<Rent, RentBuilder> {
  _$Rent? _$v;

  num? _rent;
  num? get rent => _$this._rent;
  set rent(num? rent) => _$this._rent = rent;

  Date? _dateOfExpiry;
  Date? get dateOfExpiry => _$this._dateOfExpiry;
  set dateOfExpiry(Date? dateOfExpiry) => _$this._dateOfExpiry = dateOfExpiry;

  RentBuilder() {
    Rent._defaults(this);
  }

  RentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rent = $v.rent;
      _dateOfExpiry = $v.dateOfExpiry;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Rent other) {
    _$v = other as _$Rent;
  }

  @override
  void update(void Function(RentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Rent build() => _build();

  _$Rent _build() {
    final _$result = _$v ??
        _$Rent._(
          rent: rent,
          dateOfExpiry: dateOfExpiry,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
