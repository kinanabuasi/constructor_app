import 'package:contractor/logic/bindings/auth_binding.dart';
import 'package:contractor/view/screens/public/add_screen.dart';
import 'package:contractor/view/screens/public/home_screen.dart';
import 'package:contractor/view/screens/public/invoice_screen.dart';
import 'package:contractor/view/screens/public/job_screen.dart';
import 'package:contractor/view/screens/public/splash_screen.dart';
import 'package:get/get.dart';

import '../logic/bindings/main_binding.dart';
import '../view/screens/auth/create_account_screen.dart';
import '../view/screens/auth/login_screen.dart';
import '../view/screens/auth/welcome_screen.dart';
import '../view/screens/public/about_screen.dart';
import '../view/screens/public/notification_screen.dart';
import '../view/screens/public/support_screen.dart';

class AppRoutes {
  static const splash = Routes.splashScreen;

  static final routes = [
    GetPage(
      name: Routes.splashScreen,
      page: () => const SplashScreen(),
    ),
    GetPage(
        name: Routes.welcomeScreen,
        page: () => const WelcomeScreen(),
        binding: AuthBinding()),
    GetPage(
        name: Routes.loginScreen,
        page: () => LoginScreen(),
        binding: AuthBinding()),
    GetPage(
        name: Routes.createAccountScreen,
        page: () => CreateAccountScreen(),
        binding: AuthBinding()),
    GetPage(
      name: Routes.homeScreen,
      page: () => HomeScreen(),
      binding: MainBinding(),
    ),
    GetPage(
      name: Routes.addScreen,
      page: () => const AddScreen(),
    ),
    GetPage(
      name: Routes.notificationScreen,
      page: () => const NotificationScreen(),
    ),
    GetPage(
      name: Routes.supportScreen,
      page: () => const SupportScreen(),
    ),
    GetPage(
      name: Routes.aboutScreen,
      page: () => const AboutScreen(),
    ),
    GetPage(
      name: Routes.jobScreen,
      page: () => JobScreen(),
    ),
    GetPage(
      name: Routes.invoiceScreen,
      page: () => InvoiceScreen(),
    ),
  ];
}

class Routes {
  static const splashScreen = '/splashScreen';
  static const welcomeScreen = '/welcomeScreen';
  static const loginScreen = '/loginScreen';
  static const createAccountScreen = '/createAccountScreen';
  static const homeScreen = '/homeScreen';
  static const addScreen = '/addScreen';
  static const notificationScreen = '/notificationScreen';
  static const supportScreen = '/supportScreen';
  static const aboutScreen = '/aboutScreen';
  static const jobScreen = '/jobScreen';
  static const invoiceScreen = '/invoiceScreen';
}
