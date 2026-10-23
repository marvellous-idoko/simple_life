// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CartItem extends CartItem {
  @override
  final String? cartId;
  @override
  final BuiltList<JsonObject?>? payload;
  @override
  final String? resumePath;

  factory _$CartItem([void Function(CartItemBuilder)? updates]) =>
      (CartItemBuilder()..update(updates))._build();

  _$CartItem._({this.cartId, this.payload, this.resumePath}) : super._();
  @override
  CartItem rebuild(void Function(CartItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CartItemBuilder toBuilder() => CartItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CartItem &&
        cartId == other.cartId &&
        payload == other.payload &&
        resumePath == other.resumePath;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cartId.hashCode);
    _$hash = $jc(_$hash, payload.hashCode);
    _$hash = $jc(_$hash, resumePath.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CartItem')
          ..add('cartId', cartId)
          ..add('payload', payload)
          ..add('resumePath', resumePath))
        .toString();
  }
}

class CartItemBuilder implements Builder<CartItem, CartItemBuilder> {
  _$CartItem? _$v;

  String? _cartId;
  String? get cartId => _$this._cartId;
  set cartId(String? cartId) => _$this._cartId = cartId;

  ListBuilder<JsonObject?>? _payload;
  ListBuilder<JsonObject?> get payload =>
      _$this._payload ??= ListBuilder<JsonObject?>();
  set payload(ListBuilder<JsonObject?>? payload) => _$this._payload = payload;

  String? _resumePath;
  String? get resumePath => _$this._resumePath;
  set resumePath(String? resumePath) => _$this._resumePath = resumePath;

  CartItemBuilder() {
    CartItem._defaults(this);
  }

  CartItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cartId = $v.cartId;
      _payload = $v.payload?.toBuilder();
      _resumePath = $v.resumePath;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CartItem other) {
    _$v = other as _$CartItem;
  }

  @override
  void update(void Function(CartItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CartItem build() => _build();

  _$CartItem _build() {
    _$CartItem _$result;
    try {
      _$result = _$v ??
          _$CartItem._(
            cartId: cartId,
            payload: _payload?.build(),
            resumePath: resumePath,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'payload';
        _payload?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CartItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
