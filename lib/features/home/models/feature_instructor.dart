class FeaturedInstructor {
  final String name;
  final String description;
  final String course;
  final double rating;
  final int studentCount;
  final String imageUrl;

  FeaturedInstructor({
    required this.name,
    required this.description,
    required this.course,
    required this.rating,
    required this.studentCount,
    required this.imageUrl,
  });

  // Factory method to create FeaturedInstructor from JSON
  factory FeaturedInstructor.fromJson(Map<String, dynamic> json) {
    return FeaturedInstructor(
      name: json['name'],
      description: json['description'],
      course: json['course'],
      rating: json['rating'],
      studentCount: json['studentCount'],
      imageUrl: json['imageUrl'],
    );
  }

  // Method to convert FeaturedInstructor to JSON
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'description': description,
      'course': course,
      'rating': rating,
      'studentCount': studentCount,
      'imageUrl': imageUrl,
    };
  }
}
