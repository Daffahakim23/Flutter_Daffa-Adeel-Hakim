import 'package:flutter/material.dart';
import 'package:praktikum/Page/Grid_View_Page.dart';
import 'package:praktikum/Page/Header.dart';
import 'package:praktikum/Page/Picker_Page.dart';
import 'package:praktikum/Page/add_contact.dart';
import 'package:praktikum/bloc_page.dart';
import 'package:praktikum/main.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const GridViewPage()),
                );
              },
              child: const Text('Grid View Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PickerPage(
                      title: '',
                    ),
                  ),
                );
              },
              child: const Text('Picker Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AddContact(
                      title: '',
                    ),
                  ),
                );
              },
              child: const Text('Provider Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BlocPage(
                      title: '',
                    ),
                  ),
                );
              },
              child: const Text('Bloc Page'),
            ),
          ],
        ),
      ),
    );
  }
}
