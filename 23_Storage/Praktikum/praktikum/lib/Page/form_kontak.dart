// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_constructors, non_constant_identifier_names
import 'package:flutter/material.dart';
import '../databse/db_helper.dart';
import '../models/kontak.dart';

class FormKontak extends StatefulWidget {
  final Kontak? kontak;

  FormKontak({this.kontak});

  @override
  _FormKontakState createState() => _FormKontakState();
}

class _FormKontakState extends State<FormKontak> {
  DbHelper db = DbHelper();

  TextEditingController? name;
  TextEditingController? lastName;
  TextEditingController? phoneNumber;
  TextEditingController? email;
  TextEditingController? company;

  @override
  void initState() {
    name = TextEditingController(
        text: widget.kontak == null ? '' : widget.kontak!.name);

    phoneNumber = TextEditingController(
        text: widget.kontak == null ? '' : widget.kontak!.phoneNumber);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Kontak'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            child: TextField(
              controller: name,
              decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            child: TextField(
              controller: phoneNumber,
              decoration: InputDecoration(
                labelText: 'Mobile No',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ElevatedButton(
              child: (widget.kontak == null)
                  ? Text(
                      'Add',
                      style: TextStyle(color: Colors.white),
                    )
                  : Text(
                      'Update',
                      style: TextStyle(color: Colors.white),
                    ),
              onPressed: () {
                upsertKontak();
              },
            ),
          )
        ],
      ),
    );
  }

  Future<void> upsertKontak() async {
    if (widget.kontak != null) {
      //update
      await db.updateKontak(Kontak.fromMap({
        'id': widget.kontak!.id,
        'name': name!.text,
        'phoneNumber': phoneNumber!.text,
        'email': email!.text,
        'company': company!.text
      }));
      Navigator.pop(context, 'update');
    } else {
      //insert
      await db.saveKontak(Kontak(
        name: name!.text,
        phoneNumber: phoneNumber!.text,
      ));
      Navigator.pop(context, 'save');
    }
  }
}
