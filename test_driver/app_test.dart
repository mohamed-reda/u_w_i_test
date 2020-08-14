import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Flutter driver', () {
    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() {
      if (driver != null) {
        driver.close();
      }
    });

    var textField = find.byType("TextField");
    var button = find.text("Reverse");
    var reverse = find.text("olleH");

    test("Rev", () async {
      await driver.tap(textField);
      await Future.delayed(Duration(seconds: 2));
      await driver.enterText('Hello');
      await Future.delayed(Duration(seconds: 2));
      await driver.waitForAbsent(reverse);
      await Future.delayed(Duration(seconds: 2));
      await driver.tap(button);
      await Future.delayed(Duration(seconds: 2));
      await driver.waitFor(reverse);
      await Future.delayed(Duration(seconds: 2));
      await driver.waitUntilNoTransientCallbacks();
      await Future.delayed(Duration(seconds: 2));
      assert(reverse != null);
    });
  });
}

//flutter drive --target=test_driver/app.dart
