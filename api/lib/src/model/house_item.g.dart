// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'house_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HouseItem extends HouseItem {
  @override
  final String? itemId;
  @override
  final String? name;
  @override
  final String? value;
  @override
  final String? qty;

  factory _$HouseItem([void Function(HouseItemBuilder)? updates]) =>
      (HouseItemBuilder()..update(updates))._build();

  _$HouseItem._({this.itemId, this.name, this.value, this.qty}) : super._();
  @override
  HouseItem rebuild(void Function(HouseItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HouseItemBuilder toBuilder() => HouseItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HouseItem &&
        itemId == other.itemId &&
        name == other.name &&
        value == other.value &&
        qty == other.qty;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, itemId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, qty.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HouseItem')
          ..add('itemId', itemId)
          ..add('name', name)
          ..add('value', value)
          ..add('qty', qty))
        .toString();
  }
}

class HouseItemBuilder implements Builder<HouseItem, HouseItemBuilder> {
  _$HouseItem? _$v;

  String? _itemId;
  String? get itemId => _$this._itemId;
  set itemId(String? itemId) => _$this._itemId = itemId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  String? _qty;
  String? get qty => _$this._qty;
  set qty(String? qty) => _$this._qty = qty;

  HouseItemBuilder() {
    HouseItem._defaults(this);
  }

  HouseItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _itemId = $v.itemId;
      _name = $v.name;
      _value = $v.value;
      _qty = $v.qty;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HouseItem other) {
    _$v = other as _$HouseItem;
  }

  @override
  void update(void Function(HouseItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HouseItem build() => _build();

  _$HouseItem _build() {
    final _$result = _$v ??
        _$HouseItem._(
          itemId: itemId,
          name: name,
          value: value,
          qty: qty,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
