import 'package:twilio_dart/twilio_dart.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    final awesome = Twilio();

    setUp(() {
      // Additional setup goes here.
    });

    test('First Test', () {
      print('Test message from test');
    });
  });
}
