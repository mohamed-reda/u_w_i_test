import 'package:flutter_test/flutter_test.dart';
import 'package:u_w_i_test/main.dart';

void main() {
  test('String should be reversed', () {
    String initial = 'Ho';
    String reversed = reverseString(initial);
    expect(reversed, 'oH');
  });
}
//flutter test
