import 'package:flutter/material.dart';
import 'package:islami_app/Models/HomeScreenModels.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({super.key});

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 80,
            ),
            Center(
              child: Text(
                ' المتقين ',
                style: TextStyle(
                    fontSize: 70,
                    fontFamily: '18 Khebrat Musamim Bold.ttf',
                    color: Color.fromARGB(255, 79, 81, 62)),
              ),
            ),
            SizedBox(height: 75,),
            HomeScreenModels()
          ],
        ),
      ),
    );
  }
}
