import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: const [
          SizedBox(height: 32),
          Icon(
            Icons.contacts,
            size: 22,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Text('Create New Contact'),
          ),
          Text(
              'A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made.'),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Divider(),
          )
        ],
      ),
    );
  }
}
