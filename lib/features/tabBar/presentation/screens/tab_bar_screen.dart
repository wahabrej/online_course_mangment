import 'package:coursemanagement/core/utils/constants/app_colors.dart';
import 'package:coursemanagement/features/home/presentation/screen/home_screen.dart';
import 'package:coursemanagement/features/profile/presentation/screens/profile_screen.dart';
import 'package:coursemanagement/features/search/presentation/screen/search_screen.dart';
import 'package:coursemanagement/features/tabBar/controller/tab_bar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabBarScreen extends StatelessWidget {
  TabBarScreen({super.key});

  final List<Widget> _screens = [
    const HomeScreen(),
    const SearchScreen(),
    const LocationScreen(),
     ProfileScreen(),
  ];

  final List<Tab> _tabs = const [
    Tab(
      icon: Icon(
        Icons.home_outlined,
        size: 28,
      ),
    ),
    Tab(
      icon: Icon(
        Icons.search_rounded,
        size: 28,
      ),
    ),
    Tab(
      icon: Icon(
        Icons.location_on_outlined,
        size: 28,
      ),
    ),
    Tab(
      icon: Icon(
        Icons.person_outline,
        size: 28,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final TabBarController controller = Get.put(TabBarController());

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Material(
              color: Colors.white,
              elevation: 0,
              child: TabBar(
                dividerColor: Colors.transparent,
                controller: controller.tabController,
                indicatorColor: AppColors.primary,
                labelColor: AppColors.primary,
                unselectedLabelColor: const Color(0xff454545),
                tabs: _tabs,
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: controller.tabController,
                children: _screens,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Location Screen',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

// class ProfileScreen extends StatelessWidget {
//   const ProfileScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: Center(
//         child: Text(
//           'Profile Screen',
//           style: TextStyle(fontSize: 24),
//         ),
//       ),
//     );
//   }
// }
