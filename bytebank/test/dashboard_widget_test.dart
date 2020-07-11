import 'package:bytebank/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'matchers-test.dart';

void main() {
  group('When Dashboard is opened', () {
    testWidgets('Should display the main image when the Dashboard is opened',
        (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: Dashboard()));
      final mainImage = find.byType(Image);
      expect(mainImage, findsOneWidget);
    });
    testWidgets(
        'Should display the Transfer feature when the Dashboard is opened',
        (tester) async {
      await tester.pumpWidget(MaterialApp(home: Dashboard()));
      final transferFeatureItem = find.byWidgetPredicate((widget) =>
          featureItemMatcher(widget, 'Transferência', Icons.monetization_on));
      expect(transferFeatureItem, findsOneWidget);
    });
    testWidgets(
        'Should display the Extrato da Conta feature when the Dashboard is opened',
        (tester) async {
      await tester.pumpWidget(MaterialApp(home: Dashboard()));
      final extractAccount = find.byWidgetPredicate((widget) =>
          featureItemMatcher(widget, 'Extrato da conta', Icons.description));
      expect(extractAccount, findsOneWidget);
    });
  });
}
