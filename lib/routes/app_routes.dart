import 'package:coursemanagement/features/authentication/presentation/screens/create_account.dart';
import 'package:coursemanagement/features/home/presentation/screen/home_screen.dart';
import 'package:coursemanagement/features/profile/presentation/screens/profile_screen.dart';
import 'package:coursemanagement/features/search/presentation/screen/search_screen.dart';
import 'package:coursemanagement/features/splash_screen/presentation/screens/splash_screen.dart';
import 'package:coursemanagement/features/tabBar/presentation/screens/tab_bar_screen.dart';
import 'package:coursemanagement/features/welcome/presentation/screen/welcome_screen.dart';
import 'package:get/get.dart';
import '../features/authentication/presentation/screens/login_screen.dart';

class AppRoute {
  static String splashScreen = "/splashScreen";
  static String welcomeScreen = "/welcomeScreen";
  static String loginScreen = "/loginScreen";
  static String signUpScreen = "/signUpScreen";
  static String homeScreen = "/homeScreen";
  static String searchScreen = "/searchScreen";
  static String locationScreen = "/locationScreen";
  static String profileScreen = "/profileScreen";
  static String tabBarScreen = "/tabBarScreen";

  static String getSplashScreen() => splashScreen;
  static String getWelcomeScreenn() => welcomeScreen;
  static String getSignUpScreen() => signUpScreen;
  static String getLoginScreen() => loginScreen;
  static String getProfileScreen() => profileScreen;
  static String getTabBarScreen() => tabBarScreen;

  static List<GetPage> routes = [
    GetPage(name: splashScreen, page: () => const SplashScreen()),
    GetPage(name: welcomeScreen, page: () => const WelcomeScreen()),
    GetPage(name: signUpScreen, page: () => const SignUpScreen()),
    GetPage(name: loginScreen, page: () => const LoginScreen()),
    GetPage(name: tabBarScreen, page: () => TabBarScreen()),
    GetPage(name: homeScreen, page: () => const HomeScreen()),
    GetPage(name: searchScreen, page: () => const SearchScreen()),
    GetPage(name: locationScreen, page: () => const LocationScreen()),
    GetPage(name: profileScreen, page: () => ProfileScreen()),
  ];
}
