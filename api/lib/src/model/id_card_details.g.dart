// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'id_card_details.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IdCardDetails extends IdCardDetails {
  @override
  final String? number;
  @override
  final String? type;
  @override
  final String? expiry;

  factory _$IdCardDetails([void Function(IdCardDetailsBuilder)? updates]) =>
      (IdCardDetailsBuilder()..update(updates))._build();

  _$IdCardDetails._({this.number, this.type, this.expiry}) : super._();
  @override
  IdCardDetails rebuild(void Function(IdCardDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IdCardDetailsBuilder toBuilder() => IdCardDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IdCardDetails &&
        number == other.number &&
        type == other.type &&
        expiry == other.expiry;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, number.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, expiry.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IdCardDetails')
          ..add('number', number)
          ..add('type', type)
          ..add('expiry', expiry))
        .toString();
  }
}

class IdCardDetailsBuilder
    implements Builder<IdCardDetails, IdCardDetailsBuilder> {
  _$IdCardDetails? _$v;

  String? _number;
  String? get number => _$this._number;
  set number(String? number) => _$this._number = number;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _expiry;
  String? get expiry => _$this._expiry;
  set expiry(String? expiry) => _$this._expiry = expiry;

  IdCardDetailsBuilder() {
    IdCardDetails._defaults(this);
  }

  IdCardDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _number = $v.number;
      _type = $v.type;
      _expiry = $v.expiry;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IdCardDetails other) {
    _$v = other as _$IdCardDetails;
  }

  @override
  void update(void Function(IdCardDetailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IdCardDetails build() => _build();

  _$IdCardDetails _build() {
    final _$result = _$v ??
        _$IdCardDetails._(
          number: number,
          type: type,
          expiry: expiry,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
