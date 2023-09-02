import 'package:flutter/material.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({super.key});

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
         
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 80,),

          Center(
            child: Text('اسلامي',style: TextStyle(
              fontSize: 80,
              fontFamily: '18 Khebrat Musamim Bold.ttf',
              color: Color.fromARGB(255, 226, 204, 4)
            ),),
          ),
       
        ],
      ),
    );
  }
}
