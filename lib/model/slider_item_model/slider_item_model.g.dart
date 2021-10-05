// GENERATED CODE - DO NOT MODIFY BY HAND

part of slider_item_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SliderItemModel> _$sliderItemModelSerializer =
    new _$SliderItemModelSerializer();

class _$SliderItemModelSerializer
    implements StructuredSerializer<SliderItemModel> {
  @override
  final Iterable<Type> types = const [SliderItemModel, _$SliderItemModel];
  @override
  final String wireName = 'SliderItemModel';

  @override
  Iterable<Object> serialize(Serializers serializers, SliderItemModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'subtitle',
      serializers.serialize(object.subtitle,
          specifiedType: const FullType(String)),
    ];
    Object value;
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  SliderItemModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SliderItemModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'subtitle':
          result.subtitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SliderItemModel extends SliderItemModel {
  @override
  final String title;
  @override
  final String subtitle;
  @override
  final String image;
  @override
  final String price;

  factory _$SliderItemModel([void Function(SliderItemModelBuilder) updates]) =>
      (new SliderItemModelBuilder()..update(updates)).build();

  _$SliderItemModel._({this.title, this.subtitle, this.image, this.price})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(title, 'SliderItemModel', 'title');
    BuiltValueNullFieldError.checkNotNull(
        subtitle, 'SliderItemModel', 'subtitle');
  }

  @override
  SliderItemModel rebuild(void Function(SliderItemModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SliderItemModelBuilder toBuilder() =>
      new SliderItemModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SliderItemModel &&
        title == other.title &&
        subtitle == other.subtitle &&
        image == other.image &&
        price == other.price;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, title.hashCode), subtitle.hashCode), image.hashCode),
        price.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SliderItemModel')
          ..add('title', title)
          ..add('subtitle', subtitle)
          ..add('image', image)
          ..add('price', price))
        .toString();
  }
}

class SliderItemModelBuilder
    implements Builder<SliderItemModel, SliderItemModelBuilder> {
  _$SliderItemModel _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _subtitle;
  String get subtitle => _$this._subtitle;
  set subtitle(String subtitle) => _$this._subtitle = subtitle;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  String _price;
  String get price => _$this._price;
  set price(String price) => _$this._price = price;

  SliderItemModelBuilder();

  SliderItemModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _subtitle = $v.subtitle;
      _image = $v.image;
      _price = $v.price;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SliderItemModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SliderItemModel;
  }

  @override
  void update(void Function(SliderItemModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SliderItemModel build() {
    final _$result = _$v ??
        new _$SliderItemModel._(
            title: BuiltValueNullFieldError.checkNotNull(
                title, 'SliderItemModel', 'title'),
            subtitle: BuiltValueNullFieldError.checkNotNull(
                subtitle, 'SliderItemModel', 'subtitle'),
            image: image,
            price: price);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
