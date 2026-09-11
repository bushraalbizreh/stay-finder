import 'dart:convert';

import 'package:hive_flutter/adapters.dart';

part 'review_model.g.dart';

@HiveType(typeId: 1)
class Review {
    @HiveField(0)
    final String? reviewerName;
    @HiveField(1)
    final String? reviewDate;
    @HiveField(2)
    final String? reviewContent;
  Review({
    this.reviewerName,
    this.reviewDate,
    this.reviewContent,
  });

 

  Review copyWith({
    String? reviewerName,
    String? reviewDate,
    String? reviewContent,
  }) {
    return Review(
      reviewerName: reviewerName ?? this.reviewerName,
      reviewDate: reviewDate ?? this.reviewDate,
      reviewContent: reviewContent ?? this.reviewContent,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reviewer_name': reviewerName,
      'review_date': reviewDate,
      'review_content': reviewContent,
    };
  }

  factory Review.fromMap(Map<String, dynamic> map) {
    return Review(
      reviewerName: map['reviewer_name'] != null ? map['reviewer_name'] as String : "Amazing Room ",
      reviewDate: map['review_date'] != null ? map['review_date'] as String : "2 week",
      reviewContent: map['review_content'] != null ? map['review_content'] as String : "",
    );
  }

  

  String toJson() => json.encode(toMap());

  factory Review.fromJson(String source) => Review.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Review(reviewerName: $reviewerName, reviewDate: $reviewDate, reviewContent: $reviewContent)';

  @override
  bool operator ==(covariant Review other) {
    if (identical(this, other)) return true;
  
    return 
      other.reviewerName == reviewerName &&
      other.reviewDate == reviewDate &&
      other.reviewContent == reviewContent;
  }

  @override
  int get hashCode => reviewerName.hashCode ^ reviewDate.hashCode ^ reviewContent.hashCode;
}
