// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobile_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MobileItem extends MobileItem {
  @override
  final String? itemId;
  @override
  final String? name;
  @override
  final String? value;
  @override
  final String? qty;

  factory _$MobileItem([void Function(MobileItemBuilder)? updates]) =>
      (MobileItemBuilder()..update(updates))._build();

  _$MobileItem._({this.itemId, this.name, this.value, this.qty}) : super._();
  @override
  MobileItem rebuild(void Function(MobileItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MobileItemBuilder toBuilder() => MobileItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MobileItem &&
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
    return (newBuiltValueToStringHelper(r'MobileItem')
          ..add('itemId', itemId)
          ..add('name', name)
          ..add('value', value)
          ..add('qty', qty))
        .toString();
  }
}

class MobileItemBuilder implements Builder<MobileItem, MobileItemBuilder> {
  _$MobileItem? _$v;

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

  MobileItemBuilder() {
    MobileItem._defaults(this);
  }

  MobileItemBuilder get _$this {
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
  void replace(MobileItem other) {
    _$v = other as _$MobileItem;
  }

  @override
  void update(void Function(MobileItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MobileItem build() => _build();

  _$MobileItem _build() {
    final _$result = _$v ??
        _$MobileItem._(
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
