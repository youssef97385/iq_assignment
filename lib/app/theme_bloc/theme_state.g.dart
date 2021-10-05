// GENERATED CODE - DO NOT MODIFY BY HAND

part of theme_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ThemeState extends ThemeState {
  @override
  final material.ThemeData themeData;

  factory _$ThemeState([void Function(ThemeStateBuilder) updates]) =>
      (new ThemeStateBuilder()..update(updates)).build();

  _$ThemeState._({this.themeData}) : super._() {
    BuiltValueNullFieldError.checkNotNull(themeData, 'ThemeState', 'themeData');
  }

  @override
  ThemeState rebuild(void Function(ThemeStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ThemeStateBuilder toBuilder() => new ThemeStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ThemeState && themeData == other.themeData;
  }

  @override
  int get hashCode {
    return $jf($jc(0, themeData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ThemeState')
          ..add('themeData', themeData))
        .toString();
  }
}

class ThemeStateBuilder implements Builder<ThemeState, ThemeStateBuilder> {
  _$ThemeState _$v;

  material.ThemeData _themeData;
  material.ThemeData get themeData => _$this._themeData;
  set themeData(material.ThemeData themeData) => _$this._themeData = themeData;

  ThemeStateBuilder();

  ThemeStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _themeData = $v.themeData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ThemeState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ThemeState;
  }

  @override
  void update(void Function(ThemeStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ThemeState build() {
    final _$result = _$v ??
        new _$ThemeState._(
            themeData: BuiltValueNullFieldError.checkNotNull(
                themeData, 'ThemeState', 'themeData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
