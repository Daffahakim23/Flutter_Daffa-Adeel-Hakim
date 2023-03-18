import 'package:flutter/material.dart';
import 'package:pertama/page/Soal_Prioritas1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: sp1(
        title: '',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: Drawer(
      //   child: ListView(
      //     // Important: Remove any padding from the ListView.
      //     padding: EdgeInsets.zero,
      //     children: [
      //       const DrawerHeader(
      //         decoration: BoxDecoration(
      //           color: Colors.lightBlue,
      //         ),
      //         child: Text(
      //           'Drawer Header',
      //         ),
      //       ),
      //       ListTile(
      //         title: const Text('Item 1'),
      //         onTap: () {
      //           // Update the state of the app.
      //           // ...
      //         },
      //       ),
      //       ListTile(
      //         title: const Text('Item 2'),
      //         onTap: () {
      //           // Update the state of the app.
      //           // ...
      //         },
      //       ),
      //     ],
      //   ), // Populate the Drawer in the next step.
      // ), // Add a Drawer here in the next step.

      // backgroundColor: Colors.white,
      // appBar: AppBar(
      //   centerTitle: true,
      //   elevation: 24,
      //   backgroundColor: Colors.lightBlue,
      //   title: Text(
      //     'Halo Alterra',
      //     style: GoogleFonts.singleDay(fontSize: 30),
      //   ),
      //   actions: const [
      //     Icon(Icons.search),
      //   ],
      // ),

      body: Center(
        child: Column(),
      ),
    );
  }
}
