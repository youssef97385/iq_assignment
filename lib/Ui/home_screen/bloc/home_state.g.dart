// GENERATED CODE - DO NOT MODIFY BY HAND

part of home_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HomeState extends HomeState {
  @override
  final bool isLoading;
  @override
  final SectionModel sliderSection;
  @override
  final SectionModel categoriesSection;
  @override
  final SectionModel storesSection;
  @override
  final SectionModel productsSection;
  @override
  final SectionModel bestProductsSection;

  factory _$HomeState([void Function(HomeStateBuilder) updates]) =>
      (new HomeStateBuilder()..update(updates)).build();

  _$HomeState._(
      {this.isLoading,
      this.sliderSection,
      this.categoriesSection,
      this.storesSection,
      this.productsSection,
      this.bestProductsSection})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(isLoading, 'HomeState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(
        sliderSection, 'HomeState', 'sliderSection');
    BuiltValueNullFieldError.checkNotNull(
        categoriesSection, 'HomeState', 'categoriesSection');
    BuiltValueNullFieldError.checkNotNull(
        storesSection, 'HomeState', 'storesSection');
    BuiltValueNullFieldError.checkNotNull(
        productsSection, 'HomeState', 'productsSection');
    BuiltValueNullFieldError.checkNotNull(
        bestProductsSection, 'HomeState', 'bestProductsSection');
  }

  @override
  HomeState rebuild(void Function(HomeStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HomeStateBuilder toBuilder() => new HomeStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HomeState &&
        isLoading == other.isLoading &&
        sliderSection == other.sliderSection &&
        categoriesSection == other.categoriesSection &&
        storesSection == other.storesSection &&
        productsSection == other.productsSection &&
        bestProductsSection == other.bestProductsSection;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, isLoading.hashCode), sliderSection.hashCode),
                    categoriesSection.hashCode),
                storesSection.hashCode),
            productsSection.hashCode),
        bestProductsSection.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HomeState')
          ..add('isLoading', isLoading)
          ..add('sliderSection', sliderSection)
          ..add('categoriesSection', categoriesSection)
          ..add('storesSection', storesSection)
          ..add('productsSection', productsSection)
          ..add('bestProductsSection', bestProductsSection))
        .toString();
  }
}

class HomeStateBuilder implements Builder<HomeState, HomeStateBuilder> {
  _$HomeState _$v;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  SectionModelBuilder _sliderSection;
  SectionModelBuilder get sliderSection =>
      _$this._sliderSection ??= new SectionModelBuilder();
  set sliderSection(SectionModelBuilder sliderSection) =>
      _$this._sliderSection = sliderSection;

  SectionModelBuilder _categoriesSection;
  SectionModelBuilder get categoriesSection =>
      _$this._categoriesSection ??= new SectionModelBuilder();
  set categoriesSection(SectionModelBuilder categoriesSection) =>
      _$this._categoriesSection = categoriesSection;

  SectionModelBuilder _storesSection;
  SectionModelBuilder get storesSection =>
      _$this._storesSection ??= new SectionModelBuilder();
  set storesSection(SectionModelBuilder storesSection) =>
      _$this._storesSection = storesSection;

  SectionModelBuilder _productsSection;
  SectionModelBuilder get productsSection =>
      _$this._productsSection ??= new SectionModelBuilder();
  set productsSection(SectionModelBuilder productsSection) =>
      _$this._productsSection = productsSection;

  SectionModelBuilder _bestProductsSection;
  SectionModelBuilder get bestProductsSection =>
      _$this._bestProductsSection ??= new SectionModelBuilder();
  set bestProductsSection(SectionModelBuilder bestProductsSection) =>
      _$this._bestProductsSection = bestProductsSection;

  HomeStateBuilder();

  HomeStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isLoading = $v.isLoading;
      _sliderSection = $v.sliderSection.toBuilder();
      _categoriesSection = $v.categoriesSection.toBuilder();
      _storesSection = $v.storesSection.toBuilder();
      _productsSection = $v.productsSection.toBuilder();
      _bestProductsSection = $v.bestProductsSection.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HomeState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HomeState;
  }

  @override
  void update(void Function(HomeStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HomeState build() {
    _$HomeState _$result;
    try {
      _$result = _$v ??
          new _$HomeState._(
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, 'HomeState', 'isLoading'),
              sliderSection: sliderSection.build(),
              categoriesSection: categoriesSection.build(),
              storesSection: storesSection.build(),
              productsSection: productsSection.build(),
              bestProductsSection: bestProductsSection.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'sliderSection';
        sliderSection.build();
        _$failedField = 'categoriesSection';
        categoriesSection.build();
        _$failedField = 'storesSection';
        storesSection.build();
        _$failedField = 'productsSection';
        productsSection.build();
        _$failedField = 'bestProductsSection';
        bestProductsSection.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'HomeState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
