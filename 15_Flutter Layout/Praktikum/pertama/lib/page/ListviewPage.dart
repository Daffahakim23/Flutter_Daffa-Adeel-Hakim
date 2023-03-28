import 'package:flutter/material.dart';
// import 'package:pertama/page/ContactPage.dart';
import 'package:google_fonts/google_fonts.dart';

class LstVwPg extends StatefulWidget {
  const LstVwPg({super.key, required String title});

  @override
  State<LstVwPg> createState() => _LstVwPg();
}

class _LstVwPg extends State<LstVwPg> {
  List data = [
    {"username": "PurplePenguin22", "phone": "(555) 123-4567"},
    {"username": "GreenGiraffe99", "phone": "(555) 234-5678"},
    {"username": "SilverSunshine11", "phone": "(555) 345-6789"},
    {"username": "BlueButterfly44", "phone": "(555) 456-7890"},
    {"username": "GoldenDragonfly77", "phone": "(555) 567-8901"},
    {"username": "RedRainbow66", "phone": "(555) 678-9012"},
    {"username": "OrangeMeadow55", "phone": "(555) 789-0123"},
    {"username": "YellowNightfall33", "phone": "(555) 890-1234"},
    {"username": "BlackStarlight88", "phone": "(555) 901-2345"},
    {"username": "PinkMoonstone77", "phone": "(555) 012-3456"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Add a Drawer here in the next step.
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Text(
          'MaterialApp',
          style: GoogleFonts.exo(fontSize: 25, fontWeight: FontWeight.w700),
        ),
      ),

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
                        decoration: const BoxDecoration(
                            color: Colors.grey, shape: BoxShape.circle),
                        child: Text(
                          data[index]["username"].toString()[0],
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4, left: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data[index]["username"],
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Text(
                              data[index]["phone"],
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // ignore: dead_code
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
    );
  }
}
