// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';

import 'package:hive_flutter/adapters.dart';
part 'location_model.g.dart';

@HiveType(typeId: 2)
class Location {
  @HiveField(0)
  final String? country;
  @HiveField(1)
  final String? city;
  Location({this.country, this.city});

  Location copyWith({String? country, String? city}) {
    return Location(country: country ?? this.country, city: city ?? this.city);
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'country': country, 'city': city};
  }

  factory Location.fromMap(Map<String, dynamic> map) {
    return Location(
      country: map['country'] != null ? map['country'] as String : null,
      city: map['city'] != null ? map['city'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Location.fromJson(String source) =>
      Location.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Location(country: $country, city: $city)';

  @override
  bool operator ==(covariant Location other) {
    if (identical(this, other)) return true;

    return other.country == country && other.city == city;
  }

  @override
  int get hashCode => country.hashCode ^ city.hashCode;
}
