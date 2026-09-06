import 'dart:convert';

class ProfileModel {
    final int? id;
    final String? firstName;
    final String? lastName;
    final String? email;
    final String? city;
    final String? country;
    final String? profileImage;

    ProfileModel({
        this.id,
        this.firstName,
        this.lastName,
        this.email,
        this.city,
        this.country,
        this.profileImage,
    });

    ProfileModel copyWith({
        int? id,
        String? firstName,
        String? lastName,
        String? email,
        String? city,
        String? country,
        String? profileImage,
    }) => 
        ProfileModel(
            id: id ?? this.id,
            firstName: firstName ?? this.firstName,
            lastName: lastName ?? this.lastName,
            email: email ?? this.email,
            city: city ?? this.city,
            country: country ?? this.country,
            profileImage: profileImage ?? this.profileImage,
        );

    factory ProfileModel.fromJson(String str) => ProfileModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory ProfileModel.fromMap(Map<String, dynamic> json) => ProfileModel(
        id: json["id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        email: json["email"],
        city: json["city"],
        country: json["country"],
        profileImage: json["profile_image"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "first_name": firstName,
        "last_name": lastName,
        "email": email,
        "city": city,
        "country": country,
        "profile_image": profileImage,
    };
}
