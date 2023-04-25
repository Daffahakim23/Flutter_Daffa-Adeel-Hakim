import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pertama/widget/contact_widget.dart';

void main() {
  testWidgets('ContactWidget test', (WidgetTester tester) async {
    final nameController = TextEditingController();
    final phoneController = TextEditingController();

    // Build ContactWidget
    await tester.pumpWidget(MaterialApp(
      home: ContactWidget(
        nameController: nameController,
        phoneController: phoneController,
        onPressed: () {},
      ),
    ));

    // Enter text into name field
    await tester.enterText(
        find.widgetWithText(InputContactWidget, 'Nama'), 'John Doe');

    // Enter text into phone field
    await tester.enterText(
        find.widgetWithText(InputContactWidget, 'Nomor'), '123456789');

    // Tap submit button
    await tester.tap(find.widgetWithText(ElevatedButton, 'Submit'));

    // Rebuild the widget after the state has changed
    await tester.pump();

    // Verify that the text has been submitted
    expect(nameController.text, 'John Doe');
    expect(phoneController.text, '123456789');
  });
}
