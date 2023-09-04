import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../Core/Utils/AppRouter.dart';

class HomeScreenModels extends StatefulWidget {
  const HomeScreenModels({super.key});

  @override
  State<HomeScreenModels> createState() => _HomeScreenModelsState();
}

class _HomeScreenModelsState extends State<HomeScreenModels>
    with SingleTickerProviderStateMixin {
  @override
  initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(210, 171, 152, 186),
                borderRadius: BorderRadius.circular(20.0),
              ),
              height: 100,
              width: 140,
              child: Center(
                child: Text(
                  'القرآن الكريم',
                  style: TextStyle(
                      color: Color.fromARGB(255, 79, 81, 62),
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Future.delayed(const Duration(seconds: 0), () {
                  GoRouter.of(context).push(AppRouter.KazkarScreen);
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(211, 160, 231, 194),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                height: 100,
                width: 140,
                child: Center(
                  child: Text(
                    'الاذكار',
                    style: TextStyle(
                        color: Color.fromARGB(255, 79, 81, 62),
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(212, 239, 242, 147),
                borderRadius: BorderRadius.circular(20.0),
              ),
              height: 100,
              width: 150,
              child: Center(
                  child: Text(
                'الاحاديث  ',
                style: TextStyle(
                    color: Color.fromARGB(255, 79, 81, 62),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              )),
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(210, 243, 164, 164),
                borderRadius: BorderRadius.circular(20.0),
              ),
              height: 100,
              width: 150,
              child: Center(
                  child: Text(
                'قصص الانبياء',
                style: TextStyle(
                    color: Color.fromARGB(255, 79, 81, 62),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              )),
            )
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(213, 186, 214, 216),
                borderRadius: BorderRadius.circular(20.0),
              ),
              height: 100,
              width: 150,
              child: Center(
                  child: Text(
                'كتب اسلامية',
                style: TextStyle(
                    color: Color.fromARGB(255, 79, 81, 62),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              )),
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(213, 240, 181, 139),
                borderRadius: BorderRadius.circular(20.0),
              ),
              height: 100,
              width: 150,
              child: Center(
                  child: Text(
                'الرؤية الشرعية',
                style: TextStyle(
                    color: Color.fromARGB(255, 79, 81, 62),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              )),
            )
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: GestureDetector(
            onTap: () {
              Future.delayed(const Duration(seconds: 0), () {
                GoRouter.of(context).push(AppRouter.Kknow);
              });
            },
            child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 211, 233, 195),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                height: 100,
                width: double.infinity,
                child: Center(
                    child: Text(
                  'تذكر',
                  style: TextStyle(
                      color: Color.fromARGB(255, 79, 81, 62),
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ))),
          ),
        ),
      ],
    );
  }
}
