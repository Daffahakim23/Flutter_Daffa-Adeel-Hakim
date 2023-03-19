import 'package:flutter/material.dart';
import 'package:pertama/page/ListviewPage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pertama/page/MyFlutterApp.dart';

class sp1 extends StatefulWidget {
  const sp1({super.key, required String title});

  @override
  State<sp1> createState() => _sp1();
}

class _sp1 extends State<sp1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 73, 73, 73),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),
              child: Text(
                'Drawer Header',
              ),
            ),
            ListTile(
              title: const Text('Setting'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ), // Populate the Drawer in the next step.
      ), // Add a Drawer here in the next step.

      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Text(
          'MaterialApp',
          style: GoogleFonts.exo(fontSize: 25, fontWeight: FontWeight.w700),
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'This Is MaterialApp',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    // DetailPage adalah halaman yang dituju
                    MaterialPageRoute(
                        builder: (context) => const LstVwPg(title: '')),
                  );
                },
                child: const Text('Go To ListView')),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    // DetailPage adalah halaman yang dituju
                    MaterialPageRoute(
                        builder: (context) => const MyFlutterApp(title: '')),
                  );
                },
                child: const Text('Go To Soal Eksplorasi')),
          ],
        ),
        // backgroundColor: Colors.black26,
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black12,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: ('Home'),
          ),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Options')
        ],
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
