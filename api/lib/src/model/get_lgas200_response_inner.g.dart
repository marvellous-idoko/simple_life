// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_lgas200_response_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetLgas200ResponseInner extends GetLgas200ResponseInner {
  @override
  final String? lga;
  @override
  final String? lgaId;

  factory _$GetLgas200ResponseInner(
          [void Function(GetLgas200ResponseInnerBuilder)? updates]) =>
      (GetLgas200ResponseInnerBuilder()..update(updates))._build();

  _$GetLgas200ResponseInner._({this.lga, this.lgaId}) : super._();
  @override
  GetLgas200ResponseInner rebuild(
          void Function(GetLgas200ResponseInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetLgas200ResponseInnerBuilder toBuilder() =>
      GetLgas200ResponseInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetLgas200ResponseInner &&
        lga == other.lga &&
        lgaId == other.lgaId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, lga.hashCode);
    _$hash = $jc(_$hash, lgaId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetLgas200ResponseInner')
          ..add('lga', lga)
          ..add('lgaId', lgaId))
        .toString();
  }
}

class GetLgas200ResponseInnerBuilder
    implements
        Builder<GetLgas200ResponseInner, GetLgas200ResponseInnerBuilder> {
  _$GetLgas200ResponseInner? _$v;

  String? _lga;
  String? get lga => _$this._lga;
  set lga(String? lga) => _$this._lga = lga;

  String? _lgaId;
  String? get lgaId => _$this._lgaId;
  set lgaId(String? lgaId) => _$this._lgaId = lgaId;

  GetLgas200ResponseInnerBuilder() {
    GetLgas200ResponseInner._defaults(this);
  }

  GetLgas200ResponseInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _lga = $v.lga;
      _lgaId = $v.lgaId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetLgas200ResponseInner other) {
    _$v = other as _$GetLgas200ResponseInner;
  }

  @override
  void update(void Function(GetLgas200ResponseInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetLgas200ResponseInner build() => _build();

  _$GetLgas200ResponseInner _build() {
    final _$result = _$v ??
        _$GetLgas200ResponseInner._(
          lga: lga,
          lgaId: lgaId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
