// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pertama/model/contact_model.dart';
import 'package:pertama/widget/list_contact_widget.dart';

void main() {
  testWidgets('ListContactWidget displays contact models',
      (WidgetTester tester) async {
    // Create some contact models
    final contactModels = [
      ContactModel(name: 'John Doe', phone: '1234567890'),
      ContactModel(name: 'Jane Doe', phone: '0987654321'),
    ];

    // Create the ListContactWidget
    final widget = ListContactWidget(
      contactModels: contactModels,
      nameController: TextEditingController(),
      phoneController: TextEditingController(),
    );

    // Build the widget tree
    await tester.pumpWidget(MaterialApp(home: Scaffold(body: widget)));

    // Verify that the widget displays the contact models
    expect(find.text('John Doe'), findsOneWidget);
    expect(find.text('Jane Doe'), findsOneWidget);
  });

  testWidgets('ListContactWidget edits contact models',
      (WidgetTester tester) async {
    // Create some contact models
    final contactModels = [
      ContactModel(name: 'John Doe', phone: '1234567890'),
      ContactModel(name: 'Jane Doe', phone: '0987654321'),
    ];

    // Create the ListContactWidget
    final widget = ListContactWidget(
      contactModels: contactModels,
      nameController: TextEditingController(),
      phoneController: TextEditingController(),
    );

    // Build the widget tree
    await tester.pumpWidget(MaterialApp(home: Scaffold(body: widget)));

    // Tap the edit button of the first contact
    await tester.tap(find.byIcon(Icons.edit).first);
    await tester.pump();

    // Verify that the name and phone fields are filled with the correct values
    expect(find.text('John Doe'), findsOneWidget);
    expect(find.text('1234567890'), findsOneWidget);

    // Enter new values for the name and phone fields
    await tester.enterText(find.byType(TextField).first, 'John Smith');
    await tester.enterText(find.byType(TextField).last, '0987654321');
    await tester.pump();

    // Tap the check button to save the changes
    await tester.tap(find.byIcon(Icons.check).first);
    await tester.pump();

    // Verify that the contact has been updated
    expect(find.text('John Smith'), findsOneWidget);
    expect(find.text('0987654321'), findsOneWidget);
  });

  testWidgets('ListContactWidget deletes contact models',
      (WidgetTester tester) async {
    // Create some contact models
    final contactModels = [
      ContactModel(name: 'John Doe', phone: '1234567890'),
      ContactModel(name: 'Jane Doe', phone: '0987654321'),
    ];

    // Create the ListContactWidget
    final widget = ListContactWidget(
      contactModels: contactModels,
      nameController: TextEditingController(),
      phoneController: TextEditingController(),
    );

    // Build the widget tree
    await tester.pumpWidget(MaterialApp(home: Scaffold(body: widget)));

    // Tap the delete button of the first contact
    await tester.tap(find.byIcon(Icons.delete).first);
    await tester.pump();

    // Verify that the contact has been removed from the list
    expect(find.text('John Doe'), findsNothing);
    expect(find.text('1234567890'), findsNothing);
  });
}
