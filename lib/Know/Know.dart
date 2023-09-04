import 'package:flutter/material.dart';

class Know extends StatefulWidget {
  const Know({super.key});

  @override
  State<Know> createState() => _KnowState();
}

class _KnowState extends State<Know> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(210, 27, 120, 117),
        centerTitle: true,
        title: Text(
          'تذكر',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(210, 27, 120, 117),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  height: 100,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      'أسماء الله الحسنى',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 45,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(210, 27, 120, 117),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  height: 100,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      ' اسم نبي الله سيدنا محمد ﷺ كاملا',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
