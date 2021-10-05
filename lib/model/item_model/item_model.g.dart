// GENERATED CODE - DO NOT MODIFY BY HAND

part of item_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ItemModel> _$itemModelSerializer = new _$ItemModelSerializer();

class _$ItemModelSerializer implements StructuredSerializer<ItemModel> {
  @override
  final Iterable<Type> types = const [ItemModel, _$ItemModel];
  @override
  final String wireName = 'ItemModel';

  @override
  Iterable<Object> serialize(Serializers serializers, ItemModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.subtitle;
    if (value != null) {
      result
        ..add('subtitle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
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
    value = object.currency;
    if (value != null) {
      result
        ..add('currency')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.attributes;
    if (value != null) {
      result
        ..add('attributes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isWarranty;
    if (value != null) {
      result
        ..add('is_warranty')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.warrantyLength;
    if (value != null) {
      result
        ..add('warranty_length')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.warrantyDuration;
    if (value != null) {
      result
        ..add('warranty_duration')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.galleries;
    if (value != null) {
      result
        ..add('galleries')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.monthsOfDeduction;
    if (value != null) {
      result
        ..add('months_of_deduction')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.storeInfo;
    if (value != null) {
      result
        ..add('store_info')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(StoreInfoModel)));
    }
    return result;
  }

  @override
  ItemModel deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ItemModelBuilder();

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
        case 'currency':
          result.currency = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'attributes':
          result.attributes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_warranty':
          result.isWarranty = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'warranty_length':
          result.warrantyLength = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'warranty_duration':
          result.warrantyDuration = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'galleries':
          result.galleries = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'months_of_deduction':
          result.monthsOfDeduction = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'store_info':
          result.storeInfo.replace(serializers.deserialize(value,
              specifiedType: const FullType(StoreInfoModel)) as StoreInfoModel);
          break;
      }
    }

    return result.build();
  }
}

class _$ItemModel extends ItemModel {
  @override
  final String title;
  @override
  final String subtitle;
  @override
  final String image;
  @override
  final String price;
  @override
  final String currency;
  @override
  final String attributes;
  @override
  final bool isWarranty;
  @override
  final String warrantyLength;
  @override
  final int warrantyDuration;
  @override
  final String galleries;
  @override
  final int monthsOfDeduction;
  @override
  final StoreInfoModel storeInfo;

  factory _$ItemModel([void Function(ItemModelBuilder) updates]) =>
      (new ItemModelBuilder()..update(updates)).build();

  _$ItemModel._(
      {this.title,
      this.subtitle,
      this.image,
      this.price,
      this.currency,
      this.attributes,
      this.isWarranty,
      this.warrantyLength,
      this.warrantyDuration,
      this.galleries,
      this.monthsOfDeduction,
      this.storeInfo})
      : super._();

  @override
  ItemModel rebuild(void Function(ItemModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ItemModelBuilder toBuilder() => new ItemModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ItemModel &&
        title == other.title &&
        subtitle == other.subtitle &&
        image == other.image &&
        price == other.price &&
        currency == other.currency &&
        attributes == other.attributes &&
        isWarranty == other.isWarranty &&
        warrantyLength == other.warrantyLength &&
        warrantyDuration == other.warrantyDuration &&
        galleries == other.galleries &&
        monthsOfDeduction == other.monthsOfDeduction &&
        storeInfo == other.storeInfo;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc($jc(0, title.hashCode),
                                                subtitle.hashCode),
                                            image.hashCode),
                                        price.hashCode),
                                    currency.hashCode),
                                attributes.hashCode),
                            isWarranty.hashCode),
                        warrantyLength.hashCode),
                    warrantyDuration.hashCode),
                galleries.hashCode),
            monthsOfDeduction.hashCode),
        storeInfo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ItemModel')
          ..add('title', title)
          ..add('subtitle', subtitle)
          ..add('image', image)
          ..add('price', price)
          ..add('currency', currency)
          ..add('attributes', attributes)
          ..add('isWarranty', isWarranty)
          ..add('warrantyLength', warrantyLength)
          ..add('warrantyDuration', warrantyDuration)
          ..add('galleries', galleries)
          ..add('monthsOfDeduction', monthsOfDeduction)
          ..add('storeInfo', storeInfo))
        .toString();
  }
}

class ItemModelBuilder implements Builder<ItemModel, ItemModelBuilder> {
  _$ItemModel _$v;

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

  String _currency;
  String get currency => _$this._currency;
  set currency(String currency) => _$this._currency = currency;

  String _attributes;
  String get attributes => _$this._attributes;
  set attributes(String attributes) => _$this._attributes = attributes;

  bool _isWarranty;
  bool get isWarranty => _$this._isWarranty;
  set isWarranty(bool isWarranty) => _$this._isWarranty = isWarranty;

  String _warrantyLength;
  String get warrantyLength => _$this._warrantyLength;
  set warrantyLength(String warrantyLength) =>
      _$this._warrantyLength = warrantyLength;

  int _warrantyDuration;
  int get warrantyDuration => _$this._warrantyDuration;
  set warrantyDuration(int warrantyDuration) =>
      _$this._warrantyDuration = warrantyDuration;

  String _galleries;
  String get galleries => _$this._galleries;
  set galleries(String galleries) => _$this._galleries = galleries;

  int _monthsOfDeduction;
  int get monthsOfDeduction => _$this._monthsOfDeduction;
  set monthsOfDeduction(int monthsOfDeduction) =>
      _$this._monthsOfDeduction = monthsOfDeduction;

  StoreInfoModelBuilder _storeInfo;
  StoreInfoModelBuilder get storeInfo =>
      _$this._storeInfo ??= new StoreInfoModelBuilder();
  set storeInfo(StoreInfoModelBuilder storeInfo) =>
      _$this._storeInfo = storeInfo;

  ItemModelBuilder();

  ItemModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _subtitle = $v.subtitle;
      _image = $v.image;
      _price = $v.price;
      _currency = $v.currency;
      _attributes = $v.attributes;
      _isWarranty = $v.isWarranty;
      _warrantyLength = $v.warrantyLength;
      _warrantyDuration = $v.warrantyDuration;
      _galleries = $v.galleries;
      _monthsOfDeduction = $v.monthsOfDeduction;
      _storeInfo = $v.storeInfo?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ItemModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ItemModel;
  }

  @override
  void update(void Function(ItemModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ItemModel build() {
    _$ItemModel _$result;
    try {
      _$result = _$v ??
          new _$ItemModel._(
              title: title,
              subtitle: subtitle,
              image: image,
              price: price,
              currency: currency,
              attributes: attributes,
              isWarranty: isWarranty,
              warrantyLength: warrantyLength,
              warrantyDuration: warrantyDuration,
              galleries: galleries,
              monthsOfDeduction: monthsOfDeduction,
              storeInfo: _storeInfo?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'storeInfo';
        _storeInfo?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ItemModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
