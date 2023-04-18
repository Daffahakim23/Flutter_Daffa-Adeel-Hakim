import 'package:flutter/material.dart';
import 'package:praktikum/provider/login_provider.dart';
import 'package:praktikum/provider/register_provider.dart';
import 'package:praktikum/widget/register_with_provider_page.dart';
import 'package:praktikum/widget/login_with_provider_page.dart';
import 'package:provider/provider.dart';
import 'screen/splash_screen.dart';
import 'stores/contact.dart' as contact_store;

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<LoginProvider>(
          create: (_) => LoginProvider(),
        ),
        ChangeNotifierProvider<RegisterProvider>(
          create: (_) => RegisterProvider(),
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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
