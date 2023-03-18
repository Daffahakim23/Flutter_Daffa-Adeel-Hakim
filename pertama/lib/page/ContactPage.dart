import 'package:flutter/material.dart';
// import 'package:pertama/page/ContactPage.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key, required String title});

  @override
  State<ContactPage> createState() => _ContactPage();
}


class _ContactPage extends State<ContactPage> {
  List datas = [
    {"username": "Ruwt Margareth", "phone": "(555) 123-4567"},
    {"username": "Alfian Adi Septianto", "phone": "(555) 234-5678"},
    {"username": "Andi Fadgham I. R.", "phone": "(555) 345-6789"},
    {"username": "Dhaifan Satriaji", "phone": "(555) 456-7890"},
    {"username": "Dwiki Hermansyah", "phone": "(555) 567-8901"},
    {"username": "Hedya Tiesyapana", "phone": "(555) 678-9012"},
    {"username": "Ramadhan Wahyu Sahputra", "phone": "(555) 789-0123"},
    {"username": "Alifia Ayu Masita", "phone": "(555) 890-1234"},
    {"username": "Bintang Syawal", "phone": "(555) 901-2345"},
    {"username": "M. Ilham Fachlevi", "phone": "(555) 012-3456"},
    {"username": "Ruwt Margareth", "phone": "(555) 123-4567"},
    {"username": "Alfian Adi Septianto", "phone": "(555) 234-5678"},
    {"username": "Andi Fadgham I. R.", "phone": "(555) 345-6789"},
    {"username": "Dhaifan Satriaji", "phone": "(555) 456-7890"},
    {"username": "Dwiki Hermansyah", "phone": "(555) 567-8901"},
    {"username": "Hedya Tiesyapana", "phone": "(555) 678-9012"},
    {"username": "Ramadhan Wahyu Sahputra", "phone": "(555) 789-0123"},
    {"username": "Alifia Ayu Masita", "phone": "(555) 890-1234"},
    {"username": "Bintang Syawal", "phone": "(555) 901-2345"},
    {"username": "M. Ilham Fachlevi", "phone": "(555) 012-3456"},
  ];

  int _selectedIndex = 0;

  get onTap => null;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),
              child: Text(
                'Drawer Header',
              ),
            ),
            // ListTile(
            //   title: const Text('Setting'),
            //   onTap: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (_) => const DetailPage(),
            //       ),
            //     );
            //   },
            // ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),

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
            'Contact',
            style: GoogleFonts.exo(fontSize: 25, fontWeight: FontWeight.w700),
          ),
          // actions: [
          //   const SizedBox(
          //     width: 10,
          //   ),
          //   IconButton(
          //     icon: const Icon(Icons.more_vert),
          //     onPressed: () {
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //           builder: (_) => const DetailPage(),
          //         ),
          //       );
          //     },
          //   ),
          // ]
          ),

      // child :_

      // bottom: const TabBar(
      //   tabs: [
      //     Tab(
      //       icon: Icon(Icons.camera_alt),
      //     ),
      //     Tab(
      //       child: Text("CHATS"),
      //     ),
      //     Tab(
      //         child: Text(
      //       "STATUS",
      //     )),
      //     Tab(
      //         child: Text(
      //       "CALLS",
      //     )),
      //   ],

      body: ListView.builder(
        padding: const EdgeInsets.only(top: 16),
        itemCount: datas.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 16),
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
                  const Divider(
                    height: 25,
                    thickness: 1,
                    color: Colors.grey,
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
                          datas[index]["phone"],
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

      // SizedBox(
      //   child: Center(
      //     child: ElevatedButton(
      //       style: OutlinedButton.styleFrom(backgroundColor: Colors.blueGrey),
      //       child: const Text('Go To Detail'),
      //       onPressed: () {
      //         Navigator.push(
      //           context,
      //           MaterialPageRoute(
      //             builder: (_) => const DetailPage(),
      //           ),
      //         );
      //       },
      //     ),
      //   ),
      // ),

      // bottomNavigationBar: BottomNavigationBar(
      //   // backgroundColor: const Color(0xFF239294),
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.chat),
      //       label: 'Chat',
      //       // backgroundColor: Colors.red,
      //     ),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.contact_phone),
      //         label: 'Contact',
      //         // backgroundColor: Colors.black),
      //     ),
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
