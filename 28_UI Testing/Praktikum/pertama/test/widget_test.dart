import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pertama/widget/contact_widget.dart';

void main() {
  testWidgets('ContactWidget test', (WidgetTester tester) async {
    final nameController = TextEditingController();
    final phoneController = TextEditingController();

    await tester.pumpWidget(MaterialApp(
      home: ContactWidget(
        nameController: nameController,
        phoneController: phoneController,
        onPressed: () {},
      ),
    ));

    // input data nama 
    await tester.enterText(
        find.widgetWithText(InputContactWidget, 'Nama'), 'John Doe');

    // input No Telepopn
    await tester.enterText(
        find.widgetWithText(InputContactWidget, 'Nomor'), '123456789');

    // Submit
    await tester.tap(find.widgetWithText(ElevatedButton, 'Submit'));

    await tester.pump();

    // verifikasi
    expect(nameController.text, 'John Doe');
    expect(phoneController.text, '123456789');
  });
}
