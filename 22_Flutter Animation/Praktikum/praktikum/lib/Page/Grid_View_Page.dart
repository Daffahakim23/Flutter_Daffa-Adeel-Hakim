import 'package:flutter/material.dart';
import 'package:praktikum/Page/Header.dart';

import 'Detail_Image_Page.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({super.key, required String title});

  final List<String> imagePaths = const [
    'assets/cy1.jpg',
    'assets/cy2.jpg',
    'assets/cy3.jpg',
    'assets/hsh1.jpg',
    'assets/hsh2.jpg',
    'assets/hsh3.jpg',
    'assets/hsh4.jpg',
    'assets/ktr1.jpg',
    'assets/ktr2.png',
    'assets/ktr3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(),
      body: GridView.builder(
        itemCount: imagePaths.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              showModalBottomSheet(
                context: context,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                builder: (BuildContext context) {
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: SizedBox(
                      height: 450,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              imagePaths[index],
                              width: 350,
                              height: 350,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 55, left: 55),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => MyImageDetailPage(
                                            imageUrl: imagePaths[index]),
                                      ),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                      fixedSize: const Size(120, 45)),
                                  child: const Text(
                                    'Open',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  style: ElevatedButton.styleFrom(
                                      fixedSize: const Size(120, 45)),
                                  child: const Text(
                                    'Close',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            child: Container(
              margin: const EdgeInsets.all(10),
              child: Image.asset(
                imagePaths[index],
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
