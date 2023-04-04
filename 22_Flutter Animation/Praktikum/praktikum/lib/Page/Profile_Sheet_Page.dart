import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileSheet extends StatelessWidget {
  const ProfileSheet({super.key});

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
              Text(
                'Cho ',
                style: GoogleFonts.robotoCondensed(
                    fontSize: 24, fontWeight: FontWeight.w400),
              ),
              Text(
                'Yi Hyun',
                style: GoogleFonts.robotoCondensed(
                    fontSize: 24, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
