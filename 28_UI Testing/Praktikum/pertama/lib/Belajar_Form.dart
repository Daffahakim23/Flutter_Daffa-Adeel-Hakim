import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class testinput extends StatefulWidget {
  const testinput({super.key});

  @override
  State<testinput> createState() => _testinputState();
}

class _testinputState extends State<testinput> {
  var inputController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  var radioValue = '';
  var checkValue = false;
  var dropdownValue = 0;

  @override
  void dispose() {
    inputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Flutter Form'),
      ),
      body: Form(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 50, right: 20),
            ),
            TextField(
              controller: inputController,
            ),
            ListTile(
              leading: Radio<String>(
                value: 'Perempuan',
                groupValue: radioValue,
                onChanged: (String? value) {
                  setState(
                    () {
                      radioValue = value ?? '';
                    },
                  );
                },
              ),
              title: const Text('Perempuan'),
            ),
            ListTile(
              leading: Radio<String>(
                value: 'Laki Laki',
                groupValue: radioValue,
                onChanged: (String? value) {
                  setState(
                    () {
                      radioValue = value ?? '';
                    },
                  );
                },
              ),
              title: const Text('Laki Laki'),
            ),
            ListTile(
              leading: Checkbox(
                value: checkValue,
                onChanged: (bool? value) {
                  setState(
                    () {
                      checkValue = value ?? false;
                    },
                  );
                },
              ),
              title: const Text('Perempuan'),
            ),
            DropdownButton(
              value: dropdownValue,
              onChanged: (int? value) {
                setState(() {
                  dropdownValue = value ?? 0;
                });
              },
              items: const [
                DropdownMenuItem(
                  value: 0,
                  child: Text('PIlih..'),
                ),
                DropdownMenuItem(
                  value: 1,
                  child: Text('data 1'),
                ),
                DropdownMenuItem(
                  value: 2,
                  child: Text('data 2'),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('data'),
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.home))
          ],
        ),
      ),
    );
  }
}
