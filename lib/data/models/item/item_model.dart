import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_items_list/data/models/entity_convertible_mixin.dart';
import 'package:test_items_list/domain/entities/item_entity.dart';

part 'item_model.freezed.dart';
part 'item_model.g.dart';

@freezed
abstract class ItemModel with _$ItemModel, EntityConvertibleMixin<ItemEntity> {
  const ItemModel._();

  const factory ItemModel({
    required int id,
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
    String? created,
  }) = _ItemModel;

  factory ItemModel.fromJson(Map<String, dynamic> json) => _$ItemModelFromJson(json);

  @override
  ItemEntity toEntity() => ItemEntity(
        id: id,
        name: name,
        status: switch (status) {
          'Alive' => ItemStatus.alive,
          'Dead' => ItemStatus.dead,
          _ => ItemStatus.unknown,
        },
        species: species,
        type: type,
        gender: gender,
        origin: origin,
        location: location,
        image: image,
        episode: episode,
        url: url,
        created: created,
      );
}

@freezed
abstract class ItemLocation with _$ItemLocation {
  const ItemLocation._();

  const factory ItemLocation({String? name, String? url}) = _ItemLocation;

  factory ItemLocation.fromJson(Map<String, dynamic> json) => _$ItemLocationFromJson(json);
}

@freezed
abstract class ItemOrigin with _$ItemOrigin {
  const ItemOrigin._();

  const factory ItemOrigin({String? name, String? url}) = _ItemOrigin;

  factory ItemOrigin.fromJson(Map<String, dynamic> json) => _$ItemOriginFromJson(json);
}
