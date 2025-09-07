import 'package:hive/hive.dart';
import 'package:test_items_list/data/models/item/item_model.dart';

class ItemLocationAdapter extends TypeAdapter<ItemLocation> {
  @override
  final int typeId = 1;

  @override
  ItemLocation read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ItemLocation(
      name: fields[0] as String?,
      url: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ItemLocation obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.url);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ItemLocationAdapter && runtimeType == other.runtimeType && typeId == other.typeId;

  @override
  int get hashCode => typeId.hashCode;
}
