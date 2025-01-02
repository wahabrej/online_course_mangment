class UpcomeingCourse {
  final String title;
  final String subtitle;
  final String startDate;
  final String duration;
  final String instructor;
  final String imageUrl;

  UpcomeingCourse({
    required this.title,
    required this.subtitle,
    required this.startDate,
    required this.duration,
    required this.instructor,
    required this.imageUrl,
  });

  factory UpcomeingCourse.fromJson(Map<String, dynamic> json) {
    return UpcomeingCourse(
      title: json['title'],
      subtitle: json['subtitle'],
      startDate: json['startDate'],
      duration: json['duration'],
      instructor: json['instructor'],
      imageUrl: json['imageUrl'],
    );
  }
}
