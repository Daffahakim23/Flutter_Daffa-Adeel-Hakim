import 'package:flutter/material.dart';
import 'package:pertama/page/ProfilePage.dart';
// import 'package:pertama/page/contact.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key, required String title});

  @override
  State<ChatPage> createState() => _ChatPage();
}

class _ChatPage extends State<ChatPage> {
  List datas = [
    {"username": "Ruwt Margareth", "chat": "Halooo....."},
    {"username": "Alfian Adi Septianto", "chat": "Haiiii......"},
    {"username": "Andi Fadgham I. R.", "chat": "WKWKWK....."},
    {"username": "Dhaifan Satriaji", "chat": "Halooo...."},
    {"username": "Dwiki Hermansyah", "chat": "WKWKWK....."},
    {"username": "Hedya Tiesyapana", "chat": "Haiiii...."},
    {"username": "Ramadhan Wahyu Sahputra", "chat": "Halooo..."},
    {"username": "Alifia Ayu Masita", "chat": "Haiiii....."},
    {"username": "Bintang Syawal", "chat": "WKWKWK...."},
    {"username": "M. Ilham Fachlevi", "chat": "Halooo......"},
    {"username": "Ruwt Margareth", "chat": "Halooo....."},
    {"username": "Alfian Adi Septianto", "chat": "Haiiii......"},
    {"username": "Andi Fadgham I. R.", "chat": "WKWKWK....."},
    {"username": "Dhaifan Satriaji", "chat": "Halooo...."},
    {"username": "Dwiki Hermansyah", "chat": "WKWKWK....."},
    {"username": "Hedya Tiesyapana", "chat": "Haiiii...."},
    {"username": "Ramadhan Wahyu Sahputra", "chat": "Halooo..."},
    {"username": "Alifia Ayu Masita", "chat": "Haiiii....."},
    {"username": "Bintang Syawal", "chat": "WKWKWK...."},
    {"username": "M. Ilham Fachlevi", "chat": "Halooo......"},
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
      // endDrawer: Drawer(
      //   child: ListView(
      //     // Important: Remove any padding from the ListView.
      //     padding: EdgeInsets.zero,
      //     children: [
      //       const DrawerHeader(
      //         decoration: BoxDecoration(
      //           color: Colors.blueGrey,
      //         ),
      //         child: Text(
      //           'Drawer Header',
      //         ),
      //       ),
      //       ListTile(
      //         title: const Text('Setting'),
      //         onTap: () {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(
      //               builder: (_) => const DetailPage(),
      //             ),
      //           );
      //         },
      //       ),
      //       ListTile(
      //         title: const Text('Item 2'),
      //         onTap: () {
      //           // Update the state of the app.
      //           // ...
      //         },
      //       ),
      //     ],
      //   ),
      // ),
      // drawer: Drawer(
      //   child: ListView(
      //     // Important: Remove any padding from the ListView.
      //     padding: EdgeInsets.zero,
      //     children: [
      //       const DrawerHeader(
      //         decoration: BoxDecoration(
      //           color: Colors.blueGrey,
      //         ),
      //         child: Text(
      //           'Drawer Header',
      //         ),
      //       ),
      //       ListTile(
      //         title: const Text('Setting'),
      //         onTap: () {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(
      //               builder: (_) => const DetailPage(),
      //             ),
      //           );
      //         },
      //       ),
      //       ListTile(
      //         title: const Text('Item 2'),
      //         onTap: () {
      //           // Update the state of the app.
      //           // ...
      //         },
      //       ),
      //     ],
      //   ), // Populate the Drawer in the next step.
      // ), // Add a Drawer here in the next step.

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
            'Chat',
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
                    builder: (_) => const ProfilelPage(
                      title: '',
                    ),
                  ),
                );
              },
            ),
          ]),

      body: ListView.builder(
        padding: const EdgeInsets.only(top: 10),
        itemCount: datas.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 2),
                child: Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 12,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(14),
                        decoration: const BoxDecoration(
                            color: Colors.grey, shape: BoxShape.circle),
                        child: Text(
                          datas[index]["username"].toString()[0],
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4, left: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              datas[index]["username"],
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Text(
                              datas[index]["chat"],
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // ignore: dead_code
                ),
              ),
              const Divider(
                height: 5,
                thickness: 1,
                color: Color.fromARGB(255, 204, 204, 204),
              ),
            ],
          );
        },
      ),

      // Container(
      //   margin: const EdgeInsets.symmetric(
      //     horizontal: 12,
      //   ),
      //   child: Row(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Container(
      //         padding: const EdgeInsets.all(12),
      //         decoration: const BoxDecoration(
      //             color: Colors.grey, shape: BoxShape.circle),
      //         child: const Text(
      //           'L',
      //           style: TextStyle(
      //               fontSize: 16,
      //               fontWeight: FontWeight.bold,
      //               color: Colors.white),
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.only(top: 4, left: 16),
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: const [
      //             Text(
      //               'Ruwt Margareth',
      //               style: TextStyle(
      //                   fontSize: 16,
      //                   fontWeight: FontWeight.bold,
      //                   color: Colors.black),
      //             ),
      //             Text(
      //               '0878-8920-3847',
      //               style: TextStyle(
      //                   fontSize: 16,
      //                   fontWeight: FontWeight.w400,
      //                   color: Colors.black),
      //             )
      //           ],
      //         ),
      //       )
      //     ],
      //   ),
      // ),

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
