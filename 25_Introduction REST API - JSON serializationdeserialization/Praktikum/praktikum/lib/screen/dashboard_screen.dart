import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:praktikum/screen/create_contact_screen.dart';
import 'package:praktikum/screen/detail_contact_screen.dart';
// import 'package:praktikum/screen/login_page.dart';
import 'package:praktikum/service/contact_service.dart';
import 'package:praktikum/service/receipe_service.dart';
import 'package:praktikum/utils/shared_pref.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
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
      // body: SizedBox(
      //   width: double.infinity,
      //   child: Column(
      //     mainAxisSize: MainAxisSize.max,
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Text('Halo Siapa $_username'),
      //       ElevatedButton(
      //         onPressed: () {
      //           Navigator.pushAndRemoveUntil(
      //               context,
      //               MaterialPageRoute(
      //                 builder: (_) => LoginPage(),
      //               ),
      //               (route) => false);
      //           removeToken();
      //         },
      //         child: const Text(
      //           'Logout',
      //         ),
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}