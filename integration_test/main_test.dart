import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:github_actions/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Home', () {
    testWidgets('should press FAB 1x time', (tester) async {
      app.main();

      await tester.pumpAndSettle();

      final fab = find.byType(FloatingActionButton);

      await tester.tap(fab);

      await tester.pumpAndSettle();

      final currentText = find.text('1');

      expect(currentText, findsOneWidget);
    });
  });
}
