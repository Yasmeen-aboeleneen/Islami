import 'package:go_router/go_router.dart';
import 'package:islami_app/Azkar/AzkarScreen.dart';
import 'package:islami_app/Home/HomeScreen.dart';
import 'package:islami_app/Know/Know.dart';
import 'package:islami_app/Splash/SplashScreen.dart';

abstract class AppRouter {
  static const KhomeScreen = '/homeScreen';
  static const KazkarScreen = '/azkarScreen';
  static const Kknow = '/know';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: KhomeScreen,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: KazkarScreen,
        builder: (context, state) => AzkarScreen(),
      ),
      GoRoute(
        path: Kknow,
        builder: (context, state) => Know(),
      ),
    ],
  );
}
