// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ItemModel {
  int get id;
  String? get name;
  String? get status;
  String? get species;
  String? get type;
  String? get gender;
  ItemOrigin? get origin;
  ItemLocation? get location;
  String? get image;
  List<String>? get episode;
  String? get url;
  String? get created;

  /// Create a copy of ItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ItemModelCopyWith<ItemModel> get copyWith =>
      _$ItemModelCopyWithImpl<ItemModel>(this as ItemModel, _$identity);

  /// Serializes this ItemModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ItemModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.species, species) || other.species == species) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.origin, origin) || other.origin == origin) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other.episode, episode) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.created, created) || other.created == created));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      status,
      species,
      type,
      gender,
      origin,
      location,
      image,
      const DeepCollectionEquality().hash(episode),
      url,
      created);

  @override
  String toString() {
    return 'ItemModel(id: $id, name: $name, status: $status, species: $species, type: $type, gender: $gender, origin: $origin, location: $location, image: $image, episode: $episode, url: $url, created: $created)';
  }
}

/// @nodoc
abstract mixin class $ItemModelCopyWith<$Res> {
  factory $ItemModelCopyWith(ItemModel value, $Res Function(ItemModel) _then) =
      _$ItemModelCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String? name,
      String? status,
      String? species,
      String? type,
      String? gender,
      ItemOrigin? origin,
      ItemLocation? location,
      String? image,
      List<String>? episode,
      String? url,
      String? created});

  $ItemOriginCopyWith<$Res>? get origin;
  $ItemLocationCopyWith<$Res>? get location;
}

/// @nodoc
class _$ItemModelCopyWithImpl<$Res> implements $ItemModelCopyWith<$Res> {
  _$ItemModelCopyWithImpl(this._self, this._then);

  final ItemModel _self;
  final $Res Function(ItemModel) _then;

  /// Create a copy of ItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? status = freezed,
    Object? species = freezed,
    Object? type = freezed,
    Object? gender = freezed,
    Object? origin = freezed,
    Object? location = freezed,
    Object? image = freezed,
    Object? episode = freezed,
    Object? url = freezed,
    Object? created = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      species: freezed == species
          ? _self.species
          : species // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _self.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      origin: freezed == origin
          ? _self.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as ItemOrigin?,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as ItemLocation?,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      episode: freezed == episode
          ? _self.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      url: freezed == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _self.created
          : created // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of ItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ItemOriginCopyWith<$Res>? get origin {
    if (_self.origin == null) {
      return null;
    }

    return $ItemOriginCopyWith<$Res>(_self.origin!, (value) {
      return _then(_self.copyWith(origin: value));
    });
  }

  /// Create a copy of ItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ItemLocationCopyWith<$Res>? get location {
    if (_self.location == null) {
      return null;
    }

    return $ItemLocationCopyWith<$Res>(_self.location!, (value) {
      return _then(_self.copyWith(location: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ItemModel].
extension ItemModelPatterns on ItemModel {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ItemModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ItemModel() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ItemModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ItemModel():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ItemModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ItemModel() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int id,
            String? name,
            String? status,
            String? species,
            String? type,
            String? gender,
            ItemOrigin? origin,
            ItemLocation? location,
            String? image,
            List<String>? episode,
            String? url,
            String? created)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ItemModel() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.status,
            _that.species,
            _that.type,
            _that.gender,
            _that.origin,
            _that.location,
            _that.image,
            _that.episode,
            _that.url,
            _that.created);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int id,
            String? name,
            String? status,
            String? species,
            String? type,
            String? gender,
            ItemOrigin? origin,
            ItemLocation? location,
            String? image,
            List<String>? episode,
            String? url,
            String? created)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ItemModel():
        return $default(
            _that.id,
            _that.name,
            _that.status,
            _that.species,
            _that.type,
            _that.gender,
            _that.origin,
            _that.location,
            _that.image,
            _that.episode,
            _that.url,
            _that.created);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int id,
            String? name,
            String? status,
            String? species,
            String? type,
            String? gender,
            ItemOrigin? origin,
            ItemLocation? location,
            String? image,
            List<String>? episode,
            String? url,
            String? created)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ItemModel() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.status,
            _that.species,
            _that.type,
            _that.gender,
            _that.origin,
            _that.location,
            _that.image,
            _that.episode,
            _that.url,
            _that.created);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ItemModel extends ItemModel {
  const _ItemModel(
      {required this.id,
      this.name,
      this.status,
      this.species,
      this.type,
      this.gender,
      this.origin,
      this.location,
      this.image,
      final List<String>? episode,
      this.url,
      this.created})
      : _episode = episode,
        super._();
  factory _ItemModel.fromJson(Map<String, dynamic> json) =>
      _$ItemModelFromJson(json);

  @override
  final int id;
  @override
  final String? name;
  @override
  final String? status;
  @override
  final String? species;
  @override
  final String? type;
  @override
  final String? gender;
  @override
  final ItemOrigin? origin;
  @override
  final ItemLocation? location;
  @override
  final String? image;
  final List<String>? _episode;
  @override
  List<String>? get episode {
    final value = _episode;
    if (value == null) return null;
    if (_episode is EqualUnmodifiableListView) return _episode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? url;
  @override
  final String? created;

  /// Create a copy of ItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ItemModelCopyWith<_ItemModel> get copyWith =>
      __$ItemModelCopyWithImpl<_ItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ItemModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ItemModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.species, species) || other.species == species) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.origin, origin) || other.origin == origin) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other._episode, _episode) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.created, created) || other.created == created));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      status,
      species,
      type,
      gender,
      origin,
      location,
      image,
      const DeepCollectionEquality().hash(_episode),
      url,
      created);

  @override
  String toString() {
    return 'ItemModel(id: $id, name: $name, status: $status, species: $species, type: $type, gender: $gender, origin: $origin, location: $location, image: $image, episode: $episode, url: $url, created: $created)';
  }
}

/// @nodoc
abstract mixin class _$ItemModelCopyWith<$Res>
    implements $ItemModelCopyWith<$Res> {
  factory _$ItemModelCopyWith(
          _ItemModel value, $Res Function(_ItemModel) _then) =
      __$ItemModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String? name,
      String? status,
      String? species,
      String? type,
      String? gender,
      ItemOrigin? origin,
      ItemLocation? location,
      String? image,
      List<String>? episode,
      String? url,
      String? created});

  @override
  $ItemOriginCopyWith<$Res>? get origin;
  @override
  $ItemLocationCopyWith<$Res>? get location;
}

/// @nodoc
class __$ItemModelCopyWithImpl<$Res> implements _$ItemModelCopyWith<$Res> {
  __$ItemModelCopyWithImpl(this._self, this._then);

  final _ItemModel _self;
  final $Res Function(_ItemModel) _then;

  /// Create a copy of ItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? status = freezed,
    Object? species = freezed,
    Object? type = freezed,
    Object? gender = freezed,
    Object? origin = freezed,
    Object? location = freezed,
    Object? image = freezed,
    Object? episode = freezed,
    Object? url = freezed,
    Object? created = freezed,
  }) {
    return _then(_ItemModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      species: freezed == species
          ? _self.species
          : species // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _self.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      origin: freezed == origin
          ? _self.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as ItemOrigin?,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as ItemLocation?,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      episode: freezed == episode
          ? _self._episode
          : episode // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      url: freezed == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _self.created
          : created // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of ItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ItemOriginCopyWith<$Res>? get origin {
    if (_self.origin == null) {
      return null;
    }

    return $ItemOriginCopyWith<$Res>(_self.origin!, (value) {
      return _then(_self.copyWith(origin: value));
    });
  }

  /// Create a copy of ItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ItemLocationCopyWith<$Res>? get location {
    if (_self.location == null) {
      return null;
    }

    return $ItemLocationCopyWith<$Res>(_self.location!, (value) {
      return _then(_self.copyWith(location: value));
    });
  }
}

/// @nodoc
mixin _$ItemLocation {
  String? get name;
  String? get url;

  /// Create a copy of ItemLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ItemLocationCopyWith<ItemLocation> get copyWith =>
      _$ItemLocationCopyWithImpl<ItemLocation>(
          this as ItemLocation, _$identity);

  /// Serializes this ItemLocation to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ItemLocation &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @override
  String toString() {
    return 'ItemLocation(name: $name, url: $url)';
  }
}

/// @nodoc
abstract mixin class $ItemLocationCopyWith<$Res> {
  factory $ItemLocationCopyWith(
          ItemLocation value, $Res Function(ItemLocation) _then) =
      _$ItemLocationCopyWithImpl;
  @useResult
  $Res call({String? name, String? url});
}

/// @nodoc
class _$ItemLocationCopyWithImpl<$Res> implements $ItemLocationCopyWith<$Res> {
  _$ItemLocationCopyWithImpl(this._self, this._then);

  final ItemLocation _self;
  final $Res Function(ItemLocation) _then;

  /// Create a copy of ItemLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_self.copyWith(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ItemLocation].
extension ItemLocationPatterns on ItemLocation {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ItemLocation value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ItemLocation() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ItemLocation value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ItemLocation():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ItemLocation value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ItemLocation() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? name, String? url)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ItemLocation() when $default != null:
        return $default(_that.name, _that.url);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? name, String? url) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ItemLocation():
        return $default(_that.name, _that.url);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? name, String? url)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ItemLocation() when $default != null:
        return $default(_that.name, _that.url);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ItemLocation extends ItemLocation {
  const _ItemLocation({this.name, this.url}) : super._();
  factory _ItemLocation.fromJson(Map<String, dynamic> json) =>
      _$ItemLocationFromJson(json);

  @override
  final String? name;
  @override
  final String? url;

  /// Create a copy of ItemLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ItemLocationCopyWith<_ItemLocation> get copyWith =>
      __$ItemLocationCopyWithImpl<_ItemLocation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ItemLocationToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ItemLocation &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @override
  String toString() {
    return 'ItemLocation(name: $name, url: $url)';
  }
}

/// @nodoc
abstract mixin class _$ItemLocationCopyWith<$Res>
    implements $ItemLocationCopyWith<$Res> {
  factory _$ItemLocationCopyWith(
          _ItemLocation value, $Res Function(_ItemLocation) _then) =
      __$ItemLocationCopyWithImpl;
  @override
  @useResult
  $Res call({String? name, String? url});
}

/// @nodoc
class __$ItemLocationCopyWithImpl<$Res>
    implements _$ItemLocationCopyWith<$Res> {
  __$ItemLocationCopyWithImpl(this._self, this._then);

  final _ItemLocation _self;
  final $Res Function(_ItemLocation) _then;

  /// Create a copy of ItemLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_ItemLocation(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$ItemOrigin {
  String? get name;
  String? get url;

  /// Create a copy of ItemOrigin
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ItemOriginCopyWith<ItemOrigin> get copyWith =>
      _$ItemOriginCopyWithImpl<ItemOrigin>(this as ItemOrigin, _$identity);

  /// Serializes this ItemOrigin to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ItemOrigin &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @override
  String toString() {
    return 'ItemOrigin(name: $name, url: $url)';
  }
}

/// @nodoc
abstract mixin class $ItemOriginCopyWith<$Res> {
  factory $ItemOriginCopyWith(
          ItemOrigin value, $Res Function(ItemOrigin) _then) =
      _$ItemOriginCopyWithImpl;
  @useResult
  $Res call({String? name, String? url});
}

/// @nodoc
class _$ItemOriginCopyWithImpl<$Res> implements $ItemOriginCopyWith<$Res> {
  _$ItemOriginCopyWithImpl(this._self, this._then);

  final ItemOrigin _self;
  final $Res Function(ItemOrigin) _then;

  /// Create a copy of ItemOrigin
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_self.copyWith(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ItemOrigin].
extension ItemOriginPatterns on ItemOrigin {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ItemOrigin value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ItemOrigin() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ItemOrigin value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ItemOrigin():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ItemOrigin value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ItemOrigin() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? name, String? url)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ItemOrigin() when $default != null:
        return $default(_that.name, _that.url);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? name, String? url) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ItemOrigin():
        return $default(_that.name, _that.url);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? name, String? url)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ItemOrigin() when $default != null:
        return $default(_that.name, _that.url);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ItemOrigin extends ItemOrigin {
  const _ItemOrigin({this.name, this.url}) : super._();
  factory _ItemOrigin.fromJson(Map<String, dynamic> json) =>
      _$ItemOriginFromJson(json);

  @override
  final String? name;
  @override
  final String? url;

  /// Create a copy of ItemOrigin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ItemOriginCopyWith<_ItemOrigin> get copyWith =>
      __$ItemOriginCopyWithImpl<_ItemOrigin>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ItemOriginToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ItemOrigin &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @override
  String toString() {
    return 'ItemOrigin(name: $name, url: $url)';
  }
}

/// @nodoc
abstract mixin class _$ItemOriginCopyWith<$Res>
    implements $ItemOriginCopyWith<$Res> {
  factory _$ItemOriginCopyWith(
          _ItemOrigin value, $Res Function(_ItemOrigin) _then) =
      __$ItemOriginCopyWithImpl;
  @override
  @useResult
  $Res call({String? name, String? url});
}

/// @nodoc
class __$ItemOriginCopyWithImpl<$Res> implements _$ItemOriginCopyWith<$Res> {
  __$ItemOriginCopyWithImpl(this._self, this._then);

  final _ItemOrigin _self;
  final $Res Function(_ItemOrigin) _then;

  /// Create a copy of ItemOrigin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_ItemOrigin(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
