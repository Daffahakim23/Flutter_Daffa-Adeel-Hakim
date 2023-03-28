import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAppIOS extends StatelessWidget {
  const MyAppIOS({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
        theme: CupertinoThemeData(
          brightness: Brightness.dark,
          primaryColor: CupertinoColors.white,
        ),
        title: 'Flutter Demo',
        home: CupertinoPageScaffold(
            navigationBar: CupertinoNavigationBar(
              middle: Text('CupertinoApp'),
            ),
            child: Center(
              child: Text(
                'This is CupertinoApp',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )));
  }
}
