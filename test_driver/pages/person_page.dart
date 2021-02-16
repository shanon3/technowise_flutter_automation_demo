import 'package:flutter_driver/flutter_driver.dart';

class PersonPages {
  final FlutterDriver driver;

  PersonPages({
    this.driver,
  });

  final SerializableFinder seeAllPersonButton = find.byValueKey('persona');

  Future<void> tapSeeAllPersonButton() async => driver.tap(seeAllPersonButton);
}
