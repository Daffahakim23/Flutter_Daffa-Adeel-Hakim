import 'package:flutter/material.dart';
// import 'package:pertama/page/ContactPage.dart';
import 'package:google_fonts/google_fonts.dart';

class MyFlutterApp extends StatefulWidget {
  const MyFlutterApp({super.key, required String title});

  @override
  State<MyFlutterApp> createState() => _MyFlutterApp();
}

class _MyFlutterApp extends State<MyFlutterApp> {
  List data = [
    {"username": "Learn Flutter"},
    {"username": "Learn ReactJS"},
    {"username": "Learn VueJS"},
    {"username": "Learn Tailwind CSS"},
    {"username": "Learn UI/UX"},
    {"username": "Learn Figma"},
    {"username": "Learn Digital Marketing"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color(0xFF6200EE),
          title: Text(
            'My Flutter App',
            style: GoogleFonts.exo(fontSize: 25, fontWeight: FontWeight.w700),
          ),
          // ignore: prefer_const_literals_to_create_immutables
          actions: [
            const SizedBox(
              width: 20,
            ),
            const Icon(Icons.search)
          ]),
      body: ListView.builder(
        padding: const EdgeInsets.only(top: 10),
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 2),
                child: Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 12,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(14),
                        child: Text(
                          data[index]["username"],
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ],
                  ), // ignore: dead_code
                ),
              ),
              const Divider(
                height: 5,
                thickness: 1,
                color: Color.fromARGB(255, 204, 204, 204),
              ),
            ],
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF6200EE),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
            // backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            // backgroundColor: Colors.black),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.error),
            label: 'Information',
          ),
        ],
        unselectedItemColor: Colors.white54,
        selectedItemColor: Colors.white,
      ),
    );
  }
}
