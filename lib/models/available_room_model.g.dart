// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'available_room_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AvailableRoomAdapter extends TypeAdapter<AvailableRoom> {
  @override
  final int typeId = 3;

  @override
  AvailableRoom read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AvailableRoom(
      id: fields[0] as int?,
      roomName: fields[1] as String?,
      area: fields[2] as String?,
      beds: fields[3] as String?,
      price: fields[4] as int?,
      image: fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, AvailableRoom obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.roomName)
      ..writeByte(2)
      ..write(obj.area)
      ..writeByte(3)
      ..write(obj.beds)
      ..writeByte(4)
      ..write(obj.price)
      ..writeByte(5)
      ..write(obj.image);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AvailableRoomAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
