import 'package:flutter_driver/flutter_driver.dart';

class PersonPages {
  final FlutterDriver driver;

  PersonPages({
    this.driver,
  });

  final SerializableFinder seeAllPersonText = find.text('See All Persons');
  final SerializableFinder seeAllPersonKey = find.byValueKey('persona');
  final SerializableFinder seeAllPersonType = find.byType('InkWell');
  final SerializableFinder appBarValueKey =
      find.byValueKey('list_of_person_app_bar_key');

  Future<void> tapSeeAllPersonButton() async => driver.tap(
        seeAllPersonText,
        timeout: Duration(
          seconds: 30,
        ),
      );

  Future<void> tapPersonDetailByText(String key) async =>
      driver.tap(find.text(key));

  Future<String> getAppBarText() async => driver.getText(appBarValueKey);

  Future<void> scrollingInPersonList(String name) => driver.scrollUntilVisible(
        find.byType("ListView"),
        find.text(name),
        dxScroll: 0,
        dyScroll: -100,
      );
}
