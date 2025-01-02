import 'package:coursemanagement/core/common/styles/global_text_style.dart';
import 'package:coursemanagement/core/common/widgets/get_size_box.dart';
import 'package:coursemanagement/core/utils/constants/app_colors.dart';
import 'package:coursemanagement/features/home/models/upcoming_course_model.dart';
import 'package:coursemanagement/features/home/presentation/widgets/home_page_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class UpcommingCourseList extends StatelessWidget {
  final RxList<UpcomeingCourse> courses;

  const UpcommingCourseList({super.key, required this.courses});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return courses.isEmpty
          ? ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 2,
              itemBuilder: (context, index) => const HomePageLoading(),
            )
          : ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: courses.length,
              itemBuilder: (context, index) {
                final course = courses[index];
                return Container(
                  margin: EdgeInsets.only(bottom: 20.h),
                  child: Column(
                    children: [
                      Container(
                        height: 180.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              course.imageUrl,
                            ),
                          ),
                        ),
                      ),
                      getSizeBox(height: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            maxLines: 2,
                            overflow: TextOverflow.clip,
                            course.title,
                            style: getTextStyle(fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            maxLines: 2,
                            overflow: TextOverflow.clip,
                            course.subtitle,
                            style: getTextStyle(
                              fontSize: 12,
                              color: AppColors.textPrimary.withOpacity(.5),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              Text(
                                course.startDate,
                                style: getTextStyle(
                                  fontSize: 12,
                                  color: AppColors.textPrimary.withOpacity(.5),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Text(
                                '| ${course.duration}',
                                style: getTextStyle(
                                  fontSize: 12,
                                  color: AppColors.textPrimary.withOpacity(.5),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              const Icon(
                                Icons.person,
                                size: 16,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                course.instructor,
                                style: getTextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          SizedBox(
                            height: 40,
                            width: double.maxFinite,
                            child: OutlinedButton(
                              style: ButtonStyle(
                                shape: WidgetStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                "Enroll Now",
                                style: getTextStyle(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            );
    });
  }
}
