// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Rating extends Rating {
  @override
  final String? payId;
  @override
  final num? rating;

  factory _$Rating([void Function(RatingBuilder)? updates]) =>
      (RatingBuilder()..update(updates))._build();

  _$Rating._({this.payId, this.rating}) : super._();
  @override
  Rating rebuild(void Function(RatingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RatingBuilder toBuilder() => RatingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Rating && payId == other.payId && rating == other.rating;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, payId.hashCode);
    _$hash = $jc(_$hash, rating.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Rating')
          ..add('payId', payId)
          ..add('rating', rating))
        .toString();
  }
}

class RatingBuilder implements Builder<Rating, RatingBuilder> {
  _$Rating? _$v;

  String? _payId;
  String? get payId => _$this._payId;
  set payId(String? payId) => _$this._payId = payId;

  num? _rating;
  num? get rating => _$this._rating;
  set rating(num? rating) => _$this._rating = rating;

  RatingBuilder() {
    Rating._defaults(this);
  }

  RatingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _payId = $v.payId;
      _rating = $v.rating;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Rating other) {
    _$v = other as _$Rating;
  }

  @override
  void update(void Function(RatingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Rating build() => _build();

  _$Rating _build() {
    final _$result = _$v ??
        _$Rating._(
          payId: payId,
          rating: rating,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
