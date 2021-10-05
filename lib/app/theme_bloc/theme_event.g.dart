// GENERATED CODE - DO NOT MODIFY BY HAND

part of theme_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChangeTheme extends ChangeTheme {
  @override
  final bool isOn;

  factory _$ChangeTheme([void Function(ChangeThemeBuilder) updates]) =>
      (new ChangeThemeBuilder()..update(updates)).build();

  _$ChangeTheme._({this.isOn}) : super._() {
    BuiltValueNullFieldError.checkNotNull(isOn, 'ChangeTheme', 'isOn');
  }

  @override
  ChangeTheme rebuild(void Function(ChangeThemeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeThemeBuilder toBuilder() => new ChangeThemeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeTheme && isOn == other.isOn;
  }

  @override
  int get hashCode {
    return $jf($jc(0, isOn.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ChangeTheme')..add('isOn', isOn))
        .toString();
  }
}

class ChangeThemeBuilder implements Builder<ChangeTheme, ChangeThemeBuilder> {
  _$ChangeTheme _$v;

  bool _isOn;
  bool get isOn => _$this._isOn;
  set isOn(bool isOn) => _$this._isOn = isOn;

  ChangeThemeBuilder();

  ChangeThemeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isOn = $v.isOn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangeTheme other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangeTheme;
  }

  @override
  void update(void Function(ChangeThemeBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ChangeTheme build() {
    final _$result = _$v ??
        new _$ChangeTheme._(
            isOn: BuiltValueNullFieldError.checkNotNull(
                isOn, 'ChangeTheme', 'isOn'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
