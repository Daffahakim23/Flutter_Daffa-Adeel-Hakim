import 'package:flutter/material.dart';
import 'package:praktikum/Page/Grid_View_Page.dart';
import 'package:praktikum/Page/Picker_Page.dart';
import 'package:praktikum/Page/add_contact.dart';
import 'package:praktikum/Page/bloc_page.dart';
import 'package:praktikum/Page/list_contact.dart';
import 'package:praktikum/movie_page/list_movie_screen.dart';
import 'package:praktikum/widget/login_with_provider_page.dart';
import 'package:praktikum/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/shared_pref.dart';
import '../widget/Header.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required String title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _username = "";
  void initial() async {
    _username = await getToken();
    setState(() {});
  }

  @override
  void initState() {
    initial();

    // ContactService().getContact();
    super.initState();
  }

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
                Navigator.of(context).push(
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) {
                      return const GridViewPage(
                        title: '',
                      );
                    },
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      final tween = Tween(begin: 0.0, end: 1.0);
                      return FadeTransition(
                        opacity: animation.drive(tween),
                        child: child,
                      );
                    },
                  ),
                );
              },
              child: const Text('Go To Grid View Page with Animation'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) {
                      return const PickerPage(
                        title: '',
                      );
                    },
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      final tween = Tween(begin: 0.0, end: 1.0);
                      return FadeTransition(
                        opacity: animation.drive(tween),
                        child: child,
                      );
                    },
                  ),
                );
              },
              child: const Text('Go To Picker Page with Animation'),
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.of(context).push(
            //       PageRouteBuilder(
            //         pageBuilder: (context, animation, secondaryAnimation) {
            //           return const AddContact(
            //             title: '',
            //           );
            //         },
            //         transitionsBuilder:
            //             (context, animation, secondaryAnimation, child) {
            //           final tween = Tween(begin: 0.0, end: 1.0);
            //           return FadeTransition(
            //             opacity: animation.drive(tween),
            //             child: child,
            //           );
            //         },
            //       ),
            //     );
            //   },
            //   child: const Text(
            //       'Go To Add Contact (Provider) Page with Animation'),
            // ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) {
                      return const BlocPage(
                        title: '',
                      );
                    },
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      final tween = Tween(begin: 0.0, end: 1.0);
                      return FadeTransition(
                        opacity: animation.drive(tween),
                        child: child,
                      );
                    },
                  ),
                );
              },
              child: const Text('Go To Bloc Page with Animation'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) {
                      return const ContactPage(
                        title: '',
                      );
                    },
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      final tween = Tween(begin: 0.0, end: 1.0);
                      return FadeTransition(
                        opacity: animation.drive(tween),
                        child: child,
                      );
                    },
                  ),
                );
              },
              child: const Text('Go To CRUD Contact Page with Animation'),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) {
                      return const ListMovieScreen(
                        title: '',
                      );
                    },
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      final tween = Tween(begin: 0.0, end: 1.0);
                      return FadeTransition(
                        opacity: animation.drive(tween),
                        child: child,
                      );
                    },
                  ),
                );
              },
              child: const Text('Go To MVVM Page with Animation'),
            ),
            const SizedBox(
              height: 100,
            ),
            ElevatedButton(
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                await prefs.clear();
                // ignore: use_build_context_synchronously
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (BuildContext context) =>
                          const LoginPageScreenWithProvider(
                        title: '',
                      ),
                    ),
                    (route) => false);
              },
              child: const Text('Log Out'),
            ),
          ],
        ),
      ),
    );
  }
}
