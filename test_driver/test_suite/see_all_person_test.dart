import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_test/flutter_test.dart';

import '../pages/person_page.dart';

void main() {
  group('Persons', () {
    FlutterDriver driver;
    setUp(() async {
      driver = await FlutterDriver.connect();
    });

    test('should be able to click the button and see the list of person',
        () async {
      final PersonPages personPage = PersonPages(driver: driver);
      await personPage.tapSeeAllPersonButton();
    }, timeout: Timeout(const Duration(minutes: 5)));

    tearDown(() {
      if (driver != null) {
        driver.close();
      }
    });
  });
}
