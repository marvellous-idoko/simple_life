// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'claimant_details_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ClaimantDetailsInner extends ClaimantDetailsInner {
  @override
  final String? key;
  @override
  final String? value;

  factory _$ClaimantDetailsInner(
          [void Function(ClaimantDetailsInnerBuilder)? updates]) =>
      (ClaimantDetailsInnerBuilder()..update(updates))._build();

  _$ClaimantDetailsInner._({this.key, this.value}) : super._();
  @override
  ClaimantDetailsInner rebuild(
          void Function(ClaimantDetailsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClaimantDetailsInnerBuilder toBuilder() =>
      ClaimantDetailsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClaimantDetailsInner &&
        key == other.key &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ClaimantDetailsInner')
          ..add('key', key)
          ..add('value', value))
        .toString();
  }
}

class ClaimantDetailsInnerBuilder
    implements Builder<ClaimantDetailsInner, ClaimantDetailsInnerBuilder> {
  _$ClaimantDetailsInner? _$v;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  ClaimantDetailsInnerBuilder() {
    ClaimantDetailsInner._defaults(this);
  }

  ClaimantDetailsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _key = $v.key;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClaimantDetailsInner other) {
    _$v = other as _$ClaimantDetailsInner;
  }

  @override
  void update(void Function(ClaimantDetailsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClaimantDetailsInner build() => _build();

  _$ClaimantDetailsInner _build() {
    final _$result = _$v ??
        _$ClaimantDetailsInner._(
          key: key,
          value: value,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
