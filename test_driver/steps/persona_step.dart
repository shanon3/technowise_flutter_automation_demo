import 'dart:async';
import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

StepDefinitionGeneric scrollUntilVisible() {
  return given1<String, FlutterWorld>('I scroll down until {string} is visible',
      (personName, context) async {
    await context.world.driver.scrollUntilVisible(
        find.byType("ListView"), find.text(personName),
        dxScroll: 0, dyScroll: -300);
  });
}

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

class VerifyPersonsList extends Then1WithWorld<Table, FlutterWorld> {
  @override
  RegExp get pattern => RegExp(r'the following persons should be displayed');

  @override
  Future<void> executeStep(Table personsTable) async {
    final List<Map<String, String>> personsMap = personsTable.asMap();
    for (int i = 0; i < personsMap.length; i++) {
      String person = personsMap[i]['Name'];
      print("===Checking for $person in the list===");
      await world.driver.scrollUntilVisible(
          find.byType("ListView"), find.text(person),
          dxScroll: 0, dyScroll: -300);

      bool isPersonDisplayed =
          await FlutterDriverUtils.isPresent(world.driver, find.text(person));
      expectMatch(isPersonDisplayed, true);
    }
  }
}
