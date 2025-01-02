import 'package:coursemanagement/core/utils/constants/image_path.dart';
import 'package:coursemanagement/features/home/models/feature_instructor.dart';
import 'package:coursemanagement/features/home/models/top_courses_model.dart';
import 'package:coursemanagement/features/home/models/upcoming_course_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var topics = [
    "house",
    "Apartment",
    "Hotel",
    "Villa",
  
  ].obs;

  final RxList<TopCourse> topCourses = <TopCourse>[].obs;
  var upcomeingCourse = <UpcomeingCourse>[].obs;
  var featuredInstructorsList = <FeaturedInstructor>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchTopCourses();
    fetchupcomeingCourse();
    fetchFeaturedInstructors();
  }

  Future<void> refreshData() async {
    fetchTopCourses();
    fetchupcomeingCourse();
    fetchFeaturedInstructors();
  }

  void fetchTopCourses() {
    var topCourseData = [
      {
        "title":
            "Master the essentials of business management, strategy, and leadership",
        "location": "Unlock new skills to thrive in today's corporate world",
        "distance": "Jane Cooper",
       
        "imageUrl": ImagePath.courses,
      },
      {
       "title":
            "Master the essentials of business management, strategy, and leadership",
        "location": "Unlock new skills to thrive in today's corporate world",
        "distance": "Jane Cooper",
       
        "imageUrl": ImagePath.courses,
      }
    ];

    topCourses.value = topCourseData.map((e) => TopCourse.fromJson(e)).toList();
  }

  void fetchupcomeingCourse() {
    var upcomingcourseData = [
      {
        "title": "Introduction to AI and Robotics",
        "subtitle": "Learn the fundamentals",
        "startDate": "Nov 5, 2024",
        "duration": "6 Weeks",
        "instructor": "Dr. Emily Brooks",
        "imageUrl": ImagePath.upcomingCourse,
      },
      {
        "title": "Advanced Machine Learning",
        "subtitle": "Dive deeper into ML",
        "startDate": "Nov 10, 2024",
        "duration": "8 Weeks",
        "instructor": "Prof. John Doe",
        "imageUrl": ImagePath.upcomingCourse,
      }
    ];

    upcomeingCourse.value =
        upcomingcourseData.map((e) => UpcomeingCourse.fromJson(e)).toList();
  }

  void fetchFeaturedInstructors() {
    var featuredInstructorsData = [
      {
        "name": "Dr. Sarah Collins",
        "description": "Dr. Collins has over 10 years of experience in...",
        "course": "Data Science & Machine Learning",
        "rating": 4.9,
        "studentCount": 500,
        "imageUrl": ImagePath.instructor,
      },
      {
        "name": "Prof. Michael Brown",
        "description": "Prof. Brown specializes in AI and deep learning...",
        "course": "Artificial Intelligence",
        "rating": 4.8,
        "studentCount": 700,
        "imageUrl": ImagePath.instructor,
      },
    ];
    featuredInstructorsList.value = featuredInstructorsData
        .map((instructor) => FeaturedInstructor.fromJson(instructor))
        .toList();
  }
}
