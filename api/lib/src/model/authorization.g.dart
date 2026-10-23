// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authorization.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Authorization extends Authorization {
  @override
  final String? id;
  @override
  final String? expiry;
  @override
  final String? bank;
  @override
  final String? cardType;
  @override
  final num? last4;
  @override
  final String? authorizer;

  factory _$Authorization([void Function(AuthorizationBuilder)? updates]) =>
      (AuthorizationBuilder()..update(updates))._build();

  _$Authorization._(
      {this.id,
      this.expiry,
      this.bank,
      this.cardType,
      this.last4,
      this.authorizer})
      : super._();
  @override
  Authorization rebuild(void Function(AuthorizationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthorizationBuilder toBuilder() => AuthorizationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Authorization &&
        id == other.id &&
        expiry == other.expiry &&
        bank == other.bank &&
        cardType == other.cardType &&
        last4 == other.last4 &&
        authorizer == other.authorizer;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, expiry.hashCode);
    _$hash = $jc(_$hash, bank.hashCode);
    _$hash = $jc(_$hash, cardType.hashCode);
    _$hash = $jc(_$hash, last4.hashCode);
    _$hash = $jc(_$hash, authorizer.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Authorization')
          ..add('id', id)
          ..add('expiry', expiry)
          ..add('bank', bank)
          ..add('cardType', cardType)
          ..add('last4', last4)
          ..add('authorizer', authorizer))
        .toString();
  }
}

class AuthorizationBuilder
    implements Builder<Authorization, AuthorizationBuilder> {
  _$Authorization? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _expiry;
  String? get expiry => _$this._expiry;
  set expiry(String? expiry) => _$this._expiry = expiry;

  String? _bank;
  String? get bank => _$this._bank;
  set bank(String? bank) => _$this._bank = bank;

  String? _cardType;
  String? get cardType => _$this._cardType;
  set cardType(String? cardType) => _$this._cardType = cardType;

  num? _last4;
  num? get last4 => _$this._last4;
  set last4(num? last4) => _$this._last4 = last4;

  String? _authorizer;
  String? get authorizer => _$this._authorizer;
  set authorizer(String? authorizer) => _$this._authorizer = authorizer;

  AuthorizationBuilder() {
    Authorization._defaults(this);
  }

  AuthorizationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _expiry = $v.expiry;
      _bank = $v.bank;
      _cardType = $v.cardType;
      _last4 = $v.last4;
      _authorizer = $v.authorizer;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Authorization other) {
    _$v = other as _$Authorization;
  }

  @override
  void update(void Function(AuthorizationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Authorization build() => _build();

  _$Authorization _build() {
    final _$result = _$v ??
        _$Authorization._(
          id: id,
          expiry: expiry,
          bank: bank,
          cardType: cardType,
          last4: last4,
          authorizer: authorizer,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
