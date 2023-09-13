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
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 190,
              width: double.infinity,
              clipBehavior: Clip.hardEdge,
              child: Column(
                children: [
                  Center(
                    child: Text(
                      ' المتقين ',
                      style: TextStyle(
                          fontSize: 70,
                          fontFamily: '18 Khebrat Musamim Bold.ttf',
                          color: Color.fromARGB(255, 252, 252, 252)),
                    ),
                  ),
                  Text(
                    "{إِنَّ الْحَسَنَاتِ يُذْهِبْنَ السَّيِّئَاتِ} ",
                    style: TextStyle(
                        fontSize: 20,
                        color: const Color.fromARGB(255, 255, 255, 255)),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 57, 135, 110),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(150),
                ),
                shape: BoxShape.rectangle,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
                child:
                    Container(child: ListView(children: [HomeScreenModels()]))),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 1,
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: 'Menu',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.share_outlined),
              label: 'Share',
            ),
          ],
        ),
      ),
    );
  }
}
