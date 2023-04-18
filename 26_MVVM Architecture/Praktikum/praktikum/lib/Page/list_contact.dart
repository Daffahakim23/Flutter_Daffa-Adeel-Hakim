import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:praktikum/Page/detail_contact_screen.dart';
import 'package:praktikum/page/create_contact_screen.dart';
// import 'package:praktikum/page/login_page.dart';
import 'package:praktikum/service/contact_service.dart';
import 'package:praktikum/utils/shared_pref.dart';

import '../widget/login_with_provider_page.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key, required String title});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
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
      appBar: AppBar(
        title: const Text(
          'Contacts',
        ),
      ),
      floatingActionButton: Container(
        height: 52,
        width: 52,
        decoration: const BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
        ),
        child: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const CreateContactScreen(),
              ),
            ).then(
              (value) async {
                await ContactService().getContact();
                setState(() {});
              },
            );
          },
          icon: const Icon(
            Icons.contact_phone,
            color: Colors.white,
          ),
        ),
      ),
      body: FutureBuilder(
        future: ContactService().getContact(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final contacts = snapshot.data;
            return ListView.builder(
              itemCount: contacts?.length,
              itemBuilder: (context, index) {
                var data = contacts?[index];
                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailContactScreen(
                        idContact: data?.id.toString() ?? "",
                      ),
                    ),
                  ),
                  child: ListTile(
                    leading: Text(data?.id.toString() ?? "-"),
                    title: Text(data?.name ?? "-"),
                    subtitle: Text(data?.phone ?? "-"),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () {
                        ContactService().deleteContact(
                          context,
                          idContact: data?.id.toString() ?? "",
                          name: data?.name ?? "",
                        );
                      },
                    ),
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return const Text('Error');
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
