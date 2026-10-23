// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_id_verification_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomerIDVerificationData extends CustomerIDVerificationData {
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? nin;
  @override
  final String? issuedDate;
  @override
  final String? licenseNo;
  @override
  final String? dateOfBirth;
  @override
  final String? expiryDate;
  @override
  final String? stateOfOrigin;
  @override
  final String? photo;

  factory _$CustomerIDVerificationData(
          [void Function(CustomerIDVerificationDataBuilder)? updates]) =>
      (CustomerIDVerificationDataBuilder()..update(updates))._build();

  _$CustomerIDVerificationData._(
      {this.firstName,
      this.lastName,
      this.nin,
      this.issuedDate,
      this.licenseNo,
      this.dateOfBirth,
      this.expiryDate,
      this.stateOfOrigin,
      this.photo})
      : super._();
  @override
  CustomerIDVerificationData rebuild(
          void Function(CustomerIDVerificationDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomerIDVerificationDataBuilder toBuilder() =>
      CustomerIDVerificationDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomerIDVerificationData &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        nin == other.nin &&
        issuedDate == other.issuedDate &&
        licenseNo == other.licenseNo &&
        dateOfBirth == other.dateOfBirth &&
        expiryDate == other.expiryDate &&
        stateOfOrigin == other.stateOfOrigin &&
        photo == other.photo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, nin.hashCode);
    _$hash = $jc(_$hash, issuedDate.hashCode);
    _$hash = $jc(_$hash, licenseNo.hashCode);
    _$hash = $jc(_$hash, dateOfBirth.hashCode);
    _$hash = $jc(_$hash, expiryDate.hashCode);
    _$hash = $jc(_$hash, stateOfOrigin.hashCode);
    _$hash = $jc(_$hash, photo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomerIDVerificationData')
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('nin', nin)
          ..add('issuedDate', issuedDate)
          ..add('licenseNo', licenseNo)
          ..add('dateOfBirth', dateOfBirth)
          ..add('expiryDate', expiryDate)
          ..add('stateOfOrigin', stateOfOrigin)
          ..add('photo', photo))
        .toString();
  }
}

class CustomerIDVerificationDataBuilder
    implements
        Builder<CustomerIDVerificationData, CustomerIDVerificationDataBuilder> {
  _$CustomerIDVerificationData? _$v;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _nin;
  String? get nin => _$this._nin;
  set nin(String? nin) => _$this._nin = nin;

  String? _issuedDate;
  String? get issuedDate => _$this._issuedDate;
  set issuedDate(String? issuedDate) => _$this._issuedDate = issuedDate;

  String? _licenseNo;
  String? get licenseNo => _$this._licenseNo;
  set licenseNo(String? licenseNo) => _$this._licenseNo = licenseNo;

  String? _dateOfBirth;
  String? get dateOfBirth => _$this._dateOfBirth;
  set dateOfBirth(String? dateOfBirth) => _$this._dateOfBirth = dateOfBirth;

  String? _expiryDate;
  String? get expiryDate => _$this._expiryDate;
  set expiryDate(String? expiryDate) => _$this._expiryDate = expiryDate;

  String? _stateOfOrigin;
  String? get stateOfOrigin => _$this._stateOfOrigin;
  set stateOfOrigin(String? stateOfOrigin) =>
      _$this._stateOfOrigin = stateOfOrigin;

  String? _photo;
  String? get photo => _$this._photo;
  set photo(String? photo) => _$this._photo = photo;

  CustomerIDVerificationDataBuilder() {
    CustomerIDVerificationData._defaults(this);
  }

  CustomerIDVerificationDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _nin = $v.nin;
      _issuedDate = $v.issuedDate;
      _licenseNo = $v.licenseNo;
      _dateOfBirth = $v.dateOfBirth;
      _expiryDate = $v.expiryDate;
      _stateOfOrigin = $v.stateOfOrigin;
      _photo = $v.photo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomerIDVerificationData other) {
    _$v = other as _$CustomerIDVerificationData;
  }

  @override
  void update(void Function(CustomerIDVerificationDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomerIDVerificationData build() => _build();

  _$CustomerIDVerificationData _build() {
    final _$result = _$v ??
        _$CustomerIDVerificationData._(
          firstName: firstName,
          lastName: lastName,
          nin: nin,
          issuedDate: issuedDate,
          licenseNo: licenseNo,
          dateOfBirth: dateOfBirth,
          expiryDate: expiryDate,
          stateOfOrigin: stateOfOrigin,
          photo: photo,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
