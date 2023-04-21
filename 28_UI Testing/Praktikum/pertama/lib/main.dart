import 'package:flutter/material.dart';
import 'package:pertama/model/contact_model.dart';
import 'package:pertama/style/colors_style.dart';
import 'package:pertama/style/text_style.dart';
import 'package:pertama/widget/contact_widget.dart';
import 'package:pertama/widget/header_widget.dart';
import 'package:pertama/widget/Input_Contact_Widget.dart';
import 'package:pertama/widget/list_contact_widget.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Belajar_Form.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      title: 'Flutter Demo',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();

  List<ContactModel> _contactModels = [];

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contacts',
          style: TextCustome().m3Medium,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeaderWidget(),
            ContactWidget(
              nameController: _nameController,
              phoneController: _phoneController,
              onPressed: () {
                _contactModels.add(
                  ContactModel(
                    name: _nameController.text,
                    phone: _phoneController.text,
                  ),
                );
                _nameController.clear();
                _phoneController.clear();

                setState(() {});
              },
            ),
            Text(
              'List Contacts',
              style: TextCustome().m3Medium,
            ),
            if (_contactModels.isNotEmpty) ...[
              ListContactWidget(
                contactModels: _contactModels,
                nameController: _nameController,
                phoneController: _phoneController,
              ),
            ] else ...[
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Data Contant Belum Ada'),
              )
            ]
          ],
        ),
      ),
    );
  }
}
