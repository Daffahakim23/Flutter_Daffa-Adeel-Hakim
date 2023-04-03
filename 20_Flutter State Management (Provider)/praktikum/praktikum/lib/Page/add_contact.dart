import 'package:flutter/material.dart';
import 'package:praktikum/model.dart';
import 'package:provider/provider.dart';
import 'package:praktikum/stores/contact.dart'as contact_store;

class AddContact extends StatefulWidget {
  const AddContact({super.key, required String title});

  @override
  State<AddContact> createState() => _AddContactState();
}

class _AddContactState extends State<AddContact> {
  String name = '';
  String phoneNumber = '';
  var nameController = TextEditingController();
  var phoneNumberController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    nameController.dispose();
    phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final contactProvider = Provider.of<contact_store.Contact>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phone Book Contact'),
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              TextField(
                controller: nameController,
                onChanged: (String value) {
                  name = value;
                },
              ),
              TextField(
                controller: phoneNumberController,
                onChanged: (String value) {
                  phoneNumber = value;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  if (!formKey.currentState!.validate()) return;

                  formKey.currentState!.save();

                  contactProvider.add(
                    GetContact(name: name, phoneNumber: phoneNumber),
                  );
                },
                child: const Text('Add Number'),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: contactProvider.contacts.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(contactProvider.contacts[index].name),
                      subtitle:
                          Text(contactProvider.contacts[index].phoneNumber),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
