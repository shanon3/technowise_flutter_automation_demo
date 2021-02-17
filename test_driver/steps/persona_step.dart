import 'dart:async';
import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

// StepDefinitionGeneric ScrollUntilVisible() {
//   return given1<String, FlutterWorld>(
//     'I scroll down until {string} is visible', (key, context) async {
//       final locator = find.byValueKey(key);
//       await FlutterDriverUtils.tap(world.driver, key, timeout: timeout);
//     }
//   )
// }

class ScrollUntilPersonIsVisible extends When1WithWorld<String, FlutterWorld> {
  @override
  RegExp get pattern => RegExp(r'I scroll down until {string} is visible');

  @override
  Future<void> executeStep(String personName) async {
    await world.driver.scrollUntilVisible(
        find.byType("ListView"), find.text(personName),
        dxScroll: 0, dyScroll: -300);
  }
}
