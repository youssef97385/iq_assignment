// GENERATED CODE - DO NOT MODIFY BY HAND

part of store_info_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StoreInfoModel> _$storeInfoModelSerializer =
    new _$StoreInfoModelSerializer();

class _$StoreInfoModelSerializer
    implements StructuredSerializer<StoreInfoModel> {
  @override
  final Iterable<Type> types = const [StoreInfoModel, _$StoreInfoModel];
  @override
  final String wireName = 'StoreInfoModel';

  @override
  Iterable<Object> serialize(Serializers serializers, StoreInfoModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'contact',
      serializers.serialize(object.contact,
          specifiedType: const FullType(ContactModel)),
    ];
    Object value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.picture;
    if (value != null) {
      result
        ..add('picture')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cover;
    if (value != null) {
      result
        ..add('cover')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.website;
    if (value != null) {
      result
        ..add('website')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bio;
    if (value != null) {
      result
        ..add('bio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  StoreInfoModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StoreInfoModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'picture':
          result.picture = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cover':
          result.cover = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'website':
          result.website = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'bio':
          result.bio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'contact':
          result.contact.replace(serializers.deserialize(value,
              specifiedType: const FullType(ContactModel)) as ContactModel);
          break;
      }
    }

    return result.build();
  }
}

class _$StoreInfoModel extends StoreInfoModel {
  @override
  final String name;
  @override
  final String picture;
  @override
  final String cover;
  @override
  final String website;
  @override
  final String email;
  @override
  final String phoneNumber;
  @override
  final String bio;
  @override
  final ContactModel contact;

  factory _$StoreInfoModel([void Function(StoreInfoModelBuilder) updates]) =>
      (new StoreInfoModelBuilder()..update(updates)).build();

  _$StoreInfoModel._(
      {this.name,
      this.picture,
      this.cover,
      this.website,
      this.email,
      this.phoneNumber,
      this.bio,
      this.contact})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(contact, 'StoreInfoModel', 'contact');
  }

  @override
  StoreInfoModel rebuild(void Function(StoreInfoModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StoreInfoModelBuilder toBuilder() =>
      new StoreInfoModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StoreInfoModel &&
        name == other.name &&
        picture == other.picture &&
        cover == other.cover &&
        website == other.website &&
        email == other.email &&
        phoneNumber == other.phoneNumber &&
        bio == other.bio &&
        contact == other.contact;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, name.hashCode), picture.hashCode),
                            cover.hashCode),
                        website.hashCode),
                    email.hashCode),
                phoneNumber.hashCode),
            bio.hashCode),
        contact.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('StoreInfoModel')
          ..add('name', name)
          ..add('picture', picture)
          ..add('cover', cover)
          ..add('website', website)
          ..add('email', email)
          ..add('phoneNumber', phoneNumber)
          ..add('bio', bio)
          ..add('contact', contact))
        .toString();
  }
}

class StoreInfoModelBuilder
    implements Builder<StoreInfoModel, StoreInfoModelBuilder> {
  _$StoreInfoModel _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _picture;
  String get picture => _$this._picture;
  set picture(String picture) => _$this._picture = picture;

  String _cover;
  String get cover => _$this._cover;
  set cover(String cover) => _$this._cover = cover;

  String _website;
  String get website => _$this._website;
  set website(String website) => _$this._website = website;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _phoneNumber;
  String get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String phoneNumber) => _$this._phoneNumber = phoneNumber;

  String _bio;
  String get bio => _$this._bio;
  set bio(String bio) => _$this._bio = bio;

  ContactModelBuilder _contact;
  ContactModelBuilder get contact =>
      _$this._contact ??= new ContactModelBuilder();
  set contact(ContactModelBuilder contact) => _$this._contact = contact;

  StoreInfoModelBuilder();

  StoreInfoModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _picture = $v.picture;
      _cover = $v.cover;
      _website = $v.website;
      _email = $v.email;
      _phoneNumber = $v.phoneNumber;
      _bio = $v.bio;
      _contact = $v.contact.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StoreInfoModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StoreInfoModel;
  }

  @override
  void update(void Function(StoreInfoModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$StoreInfoModel build() {
    _$StoreInfoModel _$result;
    try {
      _$result = _$v ??
          new _$StoreInfoModel._(
              name: name,
              picture: picture,
              cover: cover,
              website: website,
              email: email,
              phoneNumber: phoneNumber,
              bio: bio,
              contact: contact.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'contact';
        contact.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'StoreInfoModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
