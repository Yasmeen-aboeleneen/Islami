import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:islami_app/Core/Utils/AppRouter.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();

    NavigateToHomeScreen();
  }

  void NavigateToHomeScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      GoRouter.of(context).push(AppRouter.KhomeScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Image.asset(
      'Assets/Images/download (1).jpeg',
      fit: BoxFit.fill,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      alignment: Alignment.center,
    ));
  }
}
