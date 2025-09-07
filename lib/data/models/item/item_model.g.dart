// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ItemModel _$ItemModelFromJson(Map<String, dynamic> json) => _ItemModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      status: json['status'] as String?,
      species: json['species'] as String?,
      type: json['type'] as String?,
      gender: json['gender'] as String?,
      origin: json['origin'] == null
          ? null
          : ItemOrigin.fromJson(json['origin'] as Map<String, dynamic>),
      location: json['location'] == null
          ? null
          : ItemLocation.fromJson(json['location'] as Map<String, dynamic>),
      image: json['image'] as String?,
      episode:
          (json['episode'] as List<dynamic>?)?.map((e) => e as String).toList(),
      url: json['url'] as String?,
      created: json['created'] as String?,
    );

Map<String, dynamic> _$ItemModelToJson(_ItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'species': instance.species,
      'type': instance.type,
      'gender': instance.gender,
      'origin': instance.origin,
      'location': instance.location,
      'image': instance.image,
      'episode': instance.episode,
      'url': instance.url,
      'created': instance.created,
    };

_ItemLocation _$ItemLocationFromJson(Map<String, dynamic> json) =>
    _ItemLocation(
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$ItemLocationToJson(_ItemLocation instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

_ItemOrigin _$ItemOriginFromJson(Map<String, dynamic> json) => _ItemOrigin(
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$ItemOriginToJson(_ItemOrigin instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
