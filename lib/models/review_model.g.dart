// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ReviewAdapter extends TypeAdapter<Review> {
  @override
  final int typeId = 1;

  @override
  Review read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Review(
      reviewerName: fields[0] as String?,
      reviewDate: fields[1] as String?,
      reviewContent: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Review obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.reviewerName)
      ..writeByte(1)
      ..write(obj.reviewDate)
      ..writeByte(2)
      ..write(obj.reviewContent);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ReviewAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
