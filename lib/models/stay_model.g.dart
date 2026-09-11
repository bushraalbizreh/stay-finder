// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stay_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StayModelAdapter extends TypeAdapter<StayModel> {
  @override
  final int typeId = 0;

  @override
  StayModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StayModel(
      id: fields[0] as int?,
      name: fields[1] as String?,
      description: fields[2] as String?,
      category: fields[3] as String?,
      location: fields[4] as Location?,
      price: fields[5] as int?,
      image: fields[6] as String?,
      availableDays: fields[7] as String?,
      rating: fields[8] as double?,
      reviewsCount: fields[9] as int?,
      includes: (fields[10] as List?)?.cast<String>(),
      availableRooms: (fields[11] as List?)?.cast<AvailableRoom>(),
      reviews: (fields[12] as List?)?.cast<Review>(),
    );
  }

  @override
  void write(BinaryWriter writer, StayModel obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.category)
      ..writeByte(4)
      ..write(obj.location)
      ..writeByte(5)
      ..write(obj.price)
      ..writeByte(6)
      ..write(obj.image)
      ..writeByte(7)
      ..write(obj.availableDays)
      ..writeByte(8)
      ..write(obj.rating)
      ..writeByte(9)
      ..write(obj.reviewsCount)
      ..writeByte(10)
      ..write(obj.includes)
      ..writeByte(11)
      ..write(obj.availableRooms)
      ..writeByte(12)
      ..write(obj.reviews);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StayModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
