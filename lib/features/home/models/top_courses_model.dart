class TopCourse {
  final String title;
  final String description;
  final String instructor;
  final double rating;
  final int ratingCount;
  final double price;
  final String imageUrl;

  TopCourse({
    required this.title,
    required this.description,
    required this.instructor,
    required this.rating,
    required this.ratingCount,
    required this.price,
    required this.imageUrl,
  });

  // Factory method to create TopCourse from JSON
  factory TopCourse.fromJson(Map<String, dynamic> json) {
    return TopCourse(
      title: json['title'],
      description: json['description'],
      instructor: json['instructor'],
      rating: json['rating'],
      ratingCount: json['ratingCount'],
      price: json['price'],
      imageUrl: json['imageUrl'],
    );
  }

  // Method to convert TopCourse to JSON
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'instructor': instructor,
      'rating': rating,
      'ratingCount': ratingCount,
      'price': price,
      'imageUrl': imageUrl,
    };
  }
}
