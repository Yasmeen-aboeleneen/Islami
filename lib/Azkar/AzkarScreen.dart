import 'package:flutter/material.dart';

class AzkarScreen extends StatefulWidget {
  AzkarScreen({super.key});

  @override
  State<AzkarScreen> createState() => _AzkarScreenState();
}

class _AzkarScreenState extends State<AzkarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         
        appBar: AppBar(
          backgroundColor: Color.fromARGB(210, 245, 245, 245),
          centerTitle: true,
          title: Text(
            'الاذكار',
            style: TextStyle(
              color: Color.fromARGB(255, 79, 81, 62),
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(children: [
              buildItems(
                  text: 'أذكار الصباح',
                  Decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromARGB(223, 44, 41, 43),
                          Color.fromARGB(255, 106, 102, 102)
                        ]),
                  )),
              buildItems(
                  text: 'أذكار المساء',
                  Decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromARGB(223, 44, 41, 43),
                          Color.fromARGB(255, 106, 102, 102)
                        ]),
                  )),
              buildItems(
                  text: 'أذكار النوم',
                  Decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                           Color.fromARGB(223, 44, 41, 43),
                          Color.fromARGB(255, 106, 102, 102)
                          ]))),
              buildItems(
                  text: 'أذكار الاستيقاظ',
                  Decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                           Color.fromARGB(223, 44, 41, 43),
                          Color.fromARGB(255, 106, 102, 102)
                        ]),
                  )),
              buildItems(
                  text: ' أذكار الصلاة',
                  Decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                           Color.fromARGB(223, 44, 41, 43),
                          Color.fromARGB(255, 106, 102, 102)
                        ]),
                  )),
              buildItems(
                  text: ' أذكار المسجد',
                  Decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromARGB(223, 44, 41, 43),
                          Color.fromARGB(255, 106, 102, 102)
                        ]),
                  )),
            ])));
  }

  Widget buildItems({required String text, required Decoration}) {
    return Container(
      margin: const EdgeInsets.all(20),
      width: double.infinity,
      decoration: Decoration,
      height: 80,
      child: Center(
        child: Text(
          '$text',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
