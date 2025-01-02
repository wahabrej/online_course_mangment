import 'package:coursemanagement/core/common/styles/global_text_style.dart';
import 'package:coursemanagement/core/common/widgets/coustom_text_button.dart';
import 'package:coursemanagement/core/common/widgets/get_size_box.dart';
import 'package:coursemanagement/core/utils/constants/app_colors.dart';
import 'package:coursemanagement/features/home/controller/home_controller.dart';
import 'package:coursemanagement/features/home/presentation/widgets/featured_instructor_list.dart';
import 'package:coursemanagement/features/home/presentation/widgets/top_course_list.dart';
import 'package:coursemanagement/features/home/presentation/widgets/topics_widget.dart';
import 'package:coursemanagement/features/home/presentation/widgets/upcomming_course_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController homeController = Get.put(HomeController());

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: homeController.refreshData,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Topics",
                  style:
                      getTextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                getSizeBox(height: 10),
                TopicsWrap(topics: homeController.topics),
                getSizeBox(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Top Course in Business",
                      style: getTextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    CoustomTextButton(
                      text: "See All",
                      onTap: () {},
                      textColor: AppColors.primary,
                    ),
                  ],
                ),
                getSizeBox(),
                CourseList(
                  homeController: homeController,
                ),
                getSizeBox(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Upcoming Course",
                      style: getTextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    CoustomTextButton(
                      text: "See All",
                      onTap: () {},
                      textColor: AppColors.primary,
                    ),
                  ],
                ),
                getSizeBox(),
                UpcommingCourseList(courses: homeController.upcomeingCourse),
                getSizeBox(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Featured Instructors",
                      style: getTextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    CoustomTextButton(
                      text: "See All",
                      onTap: () {},
                      textColor: AppColors.primary,
                    ),
                  ],
                ),
                getSizeBox(),
                FeaturedInstructorsList(
                  homeController: homeController,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
