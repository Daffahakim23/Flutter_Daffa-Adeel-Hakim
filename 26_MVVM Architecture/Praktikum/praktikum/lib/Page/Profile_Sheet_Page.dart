import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:praktikum/utils/shared_pref.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:praktikum/widget/login_with_provider_page.dart';

class ProfileSheet extends StatefulWidget {
  const ProfileSheet({super.key});

  @override
  State<ProfileSheet> createState() => _ProfileSheetState();
}

class _ProfileSheetState extends State<ProfileSheet> {
  String _username = "";
  void initial() async {
    _username = await getToken();
    setState(() {});
  }

  @override
  void initState() {
    initial();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const SizedBox(
            height: 18,
          ),
          const CircleAvatar(
            radius: 65,
            backgroundImage: AssetImage('assets/cy1.jpg'),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              Text(
                ' $_username',
                style: GoogleFonts.robotoCondensed(
                    fontSize: 24, fontWeight: FontWeight.w600),
              ),
              // Text(
              //   ' $_password',
              //   style: GoogleFonts.robotoCondensed(
              //       fontSize: 24, fontWeight: FontWeight.w600),
              // ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              await prefs.clear();
              // ignore: use_build_context_synchronously
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const LoginPageScreenWithProvider(
                      title: '',
                    ),
                  ),
                  (route) => false);
            },
            child: const Text('Log Out'),
          ),
        ],
      ),
    );
  }
}
