import 'dart:convert';
import 'available_room_model.dart';
import 'location_model.dart';
import 'review_model.dart';

class StayModel {
    final int? id;
    final String? name;
    final String? description;
    final String? category;
    final Location? location;
    final int? price;
    final String? image;
    final String? availableDays;
    final double? rating;
    final int? reviewsCount;
    final List<String>? includes;
    final List<AvailableRoom>? availableRooms;
    final List<Review>? reviews;

    StayModel({
        this.id,
        this.name,
        this.description,
        this.category,
        this.location,
        this.price,
        this.image,
        this.availableDays,
        this.rating,
        this.reviewsCount,
        this.includes,
        this.availableRooms,
        this.reviews,
    });

    StayModel copyWith({
        int? id,
        String? name,
        String? description,
        String? category,
        Location? location,
        int? price,
        String? image,
        String? availableDays,
        double? rating,
        int? reviewsCount,
        List<String>? includes,
        List<AvailableRoom>? availableRooms,
        List<Review>? reviews,
    }) => 
        StayModel(
            id: id ?? this.id,
            name: name ?? this.name,
            description: description ?? this.description,
            category: category ?? this.category,
            location: location ?? this.location,
            price: price ?? this.price,
            image: image ?? this.image,
            availableDays: availableDays ?? this.availableDays,
            rating: rating ?? this.rating,
            reviewsCount: reviewsCount ?? this.reviewsCount,
            includes: includes ?? this.includes,
            availableRooms: availableRooms ?? this.availableRooms,
            reviews: reviews ?? this.reviews,
        );

    factory StayModel.fromJson(String str) => StayModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory StayModel.fromMap(Map<String, dynamic> json) => StayModel(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        category: json["category"],
        location: json["location"] == null ? null : Location.fromMap(json["location"]),
        price: json["price"],
        image: json["image"],
        availableDays: json["available_days"],
        rating: json["rating"]?.toDouble(),
        reviewsCount: json["reviews_count"],
        includes: json["includes"] == null ? [] : List<String>.from(json["includes"]!.map((x) => x)),
        availableRooms: json["available_rooms"] == null ? [] : List<AvailableRoom>.from(json["available_rooms"]!.map((x) => AvailableRoom.fromMap(x))),
        reviews: json["reviews"] == null ? [] : List<Review>.from(json["reviews"]!.map((x) => Review.fromMap(x))),
   
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "description": description,
        "category": category,
        "location": location?.toMap(),
        "price": price,
        "image": image,
        "available_days": availableDays,
        "rating": rating,
        "reviews_count": reviewsCount,
        "includes": includes == null ? [] : List<dynamic>.from(includes!.map((x) => x)),
        "available_rooms": availableRooms == null ? [] : List<dynamic>.from(availableRooms!.map((x) => x.toMap())),
        "reviews": reviews == null ? [] : List<dynamic>.from(reviews!.map((x) => x.toMap())),
    };
}
