import 'package:flutter/material.dart';
import 'package:islami_app/Core/Utils/AppRouter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (BuildContext, Orientation, ScreenType) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'المتقين ',
        routerConfig: AppRouter.router,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 255, 255, 255)),
          useMaterial3: true,
        ),
      ));
  }
}
