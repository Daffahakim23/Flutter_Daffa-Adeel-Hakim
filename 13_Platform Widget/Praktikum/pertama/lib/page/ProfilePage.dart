import 'package:flutter/material.dart';
import 'package:pertama/page/ContactPage.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilelPage extends StatefulWidget {
  const ProfilelPage({super.key, required String title});

  @override
  State<ProfilelPage> createState() => _ProfilelPage();
}

class _ProfilelPage extends State<ProfilelPage> {
  List data = [
    {
      "username": "Daffa Adeel Hakim",
      "Phone": "0821 1092 5240",
      "About": "Available"
    },
  ];

  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Add a Drawer here in the next step.
      backgroundColor: Colors.white,
      appBar: AppBar(
          // centerTitle: true,
          elevation: 24,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                  Color.fromARGB(255, 255, 0, 0),
                  Color.fromARGB(255, 0, 0, 0)
                ])),
          ),
          title: Text(
            'Profile',
            style: GoogleFonts.exo(fontSize: 25, fontWeight: FontWeight.w700),
          ),
          actions: [
            const SizedBox(
              width: 10,
            ),
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const ContactPage(
                      title: '',
                    ),
                  ),
                );
              },
            ),
          ]),

      body: ListView.builder(
        padding: const EdgeInsets.only(top: 16),
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 5,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 1),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(12),
                      child: const CircleAvatar(
                        radius: 72.0,
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('assets/images/merah.png'),
                      ),

                      // decoration: const BoxDecoration(
                      //     Image.network('https://www.google.com/imgres?imgurl=https%3A%2F%2Fhtmlcolorcodes.com%2Fassets%2Fimages%2Fcolors%2Fdark-red-color-solid-background-1920x1080.png&imgrefurl=https%3A%2F%2Fhtmlcolorcodes.com%2Fcolors%2Fdark-red%2F&tbnid=py48LGQUS8e10M&vet=12ahUKEwjA0u6sgt79AhXtBLcAHSzuCO8QMygCegUIARDFAQ..i&docid=Rr8sp1T4GX0mnM&w=1920&h=1080&q=red&ved=2ahUKEwjA0u6sgt79AhXtBLcAHSzuCO8QMygCegUIARDFAQ') ,
                      //     shape: BoxShape.circle),
                      // child: Text(
                      //   data[index]["username"].toString()[0],
                      //   style: const TextStyle(
                      //       fontSize: 16,
                      //       fontWeight: FontWeight.bold,
                      //       color: Colors.white),
                      // ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(
                      height: 25,
                      thickness: 1,
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 20),
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: const [
                                Text('Name'),
                                Icon(
                                  Icons.edit,
                                )
                              ],
                            ),
                            Text(
                              data[index]["username"],
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Text(
                              data[index]["Phone"],
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // ignore: dead_code
            ),
          );
        },
      ),

      // bottomNavigationBar: BottomNavigationBar(
      //   // backgroundColor: const Color(0xFF239294),
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.chat),
      //       label: 'Chat',
      //       backgroundColor: Colors.red,
      //     ),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.contact_phone),
      //         label: 'Contact',
      //         backgroundColor: Colors.black),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       label: 'Profile',
      //     ),
      //   ],
      //   currentIndex: _selectedIndex,
      //   selectedItemColor: Colors.black,
      //   onTap: _onItemTapped,
      // ),
    );
  }
}
