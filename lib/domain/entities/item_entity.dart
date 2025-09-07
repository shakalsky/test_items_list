import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_items_list/data/models/item/item_model.dart';

part 'item_entity.freezed.dart';

enum ItemStatus {
  alive,
  dead,
  unknown,
}

@freezed
abstract class ItemEntity with _$ItemEntity {
  const ItemEntity._();

  const factory ItemEntity({
    required int id,
    String? name,
    required ItemStatus status,
    String? species,
    String? type,
    String? gender,
    ItemOrigin? origin,
    ItemLocation? location,
    String? image,
    List<String>? episode,
    String? url,
    String? created,
  }) = _ItemEntity;
}
