import 'package:flutter/material.dart';
import 'package:praktikum/Page/Grid_View_Page.dart';
import 'package:praktikum/Page/Header.dart';
import 'package:praktikum/Page/Home_Page.dart';
import 'package:provider/provider.dart';
import 'stores/contact.dart' as contact_store;

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => contact_store.Contact(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(title: ''),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key, required String title});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: Header(),
      body: GridViewPage(),
    );
  }
}
