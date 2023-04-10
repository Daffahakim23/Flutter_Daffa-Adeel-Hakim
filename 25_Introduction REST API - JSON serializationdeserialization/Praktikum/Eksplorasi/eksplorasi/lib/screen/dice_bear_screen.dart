import 'package:flutter/material.dart';
import 'package:eksplorasi/service/image_service.dart';
import 'package:eksplorasi/widget/button_custome.dart';
import 'package:eksplorasi/widget/text_field_custome.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DiceBearScreen extends StatefulWidget {
  const DiceBearScreen({super.key});

  @override
  State<DiceBearScreen> createState() => _DiceBearScreenState();
}

class _DiceBearScreenState extends State<DiceBearScreen> {
  final TextEditingController _nameController = TextEditingController();

  String image = "";

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Image Generator'),
        backgroundColor: const Color.fromARGB(255, 24, 253, 74),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            image.isNotEmpty
                ? SvgPicture.string(
                    image,
                    height: 100,
                    width: 100,
                  )
                : Image.asset(
                    'assets/noimagee.png',
                  ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: TextFieldCustome(
                controller: _nameController,
                isValidTextField: true,
                errorMessage: '',
                hintText: 'Name',
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            ButtonCustome(
              onPressed: () async {
                image = await ImageService().generateImage(
                  _nameController.text,
                );

                debugPrint("halo $image");

                setState(() {});
              },
              title: 'GENERATE',
            ),
          ],
        ),
      ),
    );
  }
}
