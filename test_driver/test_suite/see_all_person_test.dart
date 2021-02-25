import 'dart:math';

import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

import '../api/person_api_impl.dart';
import '../model/person_model.dart';
import '../pages/person_page.dart';

void main() {
  group('Persons', () {
    FlutterDriver driver;

    setUp(() async {
      driver = await FlutterDriver.connect(
        printCommunication: true,
      );
      print('setUp');
    });

    int _randomNumber() {
      Random rng = new Random();
      return rng.nextInt(5);
    }

    test(
      'should be able to click the button and see the list of person',
      () async {
        final PersonPages personPage = PersonPages(driver: driver);
        await Future.delayed(const Duration(seconds: 5));
        await personPage.tapSeeAllPersonButton();
        await Future.delayed(const Duration(seconds: 5));

        String appBarTitle = await personPage.getAppBarText();

        expect(
          appBarTitle,
          'List of Person',
          reason: 'App Bar title does not match',
        );

        await Future.delayed(const Duration(seconds: 5));
      },
      timeout: Timeout(
        const Duration(minutes: 5),
      ),
      tags: 'smoke'
    );

    test(
      'should be able to click one of the person',
      () async {
        final PersonPages personPage = PersonPages(driver: driver);
        PersonApiImpl personApiImpl = PersonApiImpl();
        List<PersonModel> data = await personApiImpl.getAllPerson();
        await Future.delayed(const Duration(seconds: 5));
        await personPage.tapPersonDetailByText(data[_randomNumber()].name);
        await Future.delayed(const Duration(seconds: 10));
      },
      timeout: Timeout(
        const Duration(minutes: 5),
      ),
      skip: true,
    );

    tearDown(() {
      if (driver != null) {
        driver.close();
        print('tearDown');
      }
    });
  });
}
