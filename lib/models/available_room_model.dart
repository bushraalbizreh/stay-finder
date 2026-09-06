// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';

class AvailableRoom {
    final int? id;
    final String? roomName;
    final String? area;
    final String? beds;
    final int? price;
    final String? image;
  AvailableRoom({
    this.id,
    this.roomName,
    this.area,
    this.beds,
    this.price,
    this.image,
  });


  AvailableRoom copyWith({
    int? id,
    String? roomName,
    String? area,
    String? beds,
    int? price,
    String? image,
  }) {
    return AvailableRoom(
      id: id ?? this.id,
      roomName: roomName ?? this.roomName,
      area: area ?? this.area,
      beds: beds ?? this.beds,
      price: price ?? this.price,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'room_name': roomName,
      'area': area,
      'beds': beds,
      'price': price,
      'image': image,
    };
  }

  factory AvailableRoom.fromMap(Map<String, dynamic> map) {
    return AvailableRoom(
      id: map['id'] != null ? map['id'] as int : null,
      roomName: map['room_name'] != null ? map['room_name'] as String : "new",
      area: map['area'] != null ? map['area'] as String : "100",
      beds: map['beds'] != null ? map['beds'] as String : "3",
      price: map['price'] != null ? map['price'] as int : 120,
      image: map['image'] != null ? map['image'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory AvailableRoom.fromJson(String source) => AvailableRoom.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'AvailableRoom(id: $id, roomName: $roomName, area: $area, beds: $beds, price: $price, image: $image)';
  }

  @override
  bool operator ==(covariant AvailableRoom other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.roomName == roomName &&
      other.area == area &&
      other.beds == beds &&
      other.price == price &&
      other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      roomName.hashCode ^
      area.hashCode ^
      beds.hashCode ^
      price.hashCode ^
      image.hashCode;
  }
  }

