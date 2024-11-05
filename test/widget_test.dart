import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:reporting_system/main.dart';

void main() {
  testWidgets('LoginPage has a title and logo', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    // Verify that the title is present.
    expect(find.text("Login"), findsOneWidget);
    expect(find.byType(Image), findsOneWidget);
    expect(find.byType(TextField), findsNWidgets(2));
    expect(find.text("Login"), findsOneWidget);
  });

  testWidgets('Tapping on login button does nothing yet',
      (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    // Simulate filling in the email and password fields.
    await tester.enterText(find.byType(TextField).first, 'test@example.com');
    await tester.enterText(find.byType(TextField).last, 'password123');

    // Tap the login button.
    await tester.tap(find.text('Login'));
    await tester.pump();

    // Add assertions here to verify behavior after tapping login.
    // Contoh:
    // expect(find.text('Login Successful'), findsOneWidget); // Jika ada notifikasi sukses.
  });
}
