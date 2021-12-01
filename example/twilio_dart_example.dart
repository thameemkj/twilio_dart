import 'package:twilio_dart/twilio_dart.dart';

const String ACCOUNT_SID = 'AC91c690e71689338c4a73cb594f6db84f';
const String AUTH_TOKEN = 'a859bf11058892b902f4f98b71e1d723';
const String FROM_NUMBER = '+19122748564';
//const String TO_NUMBER = '+919744890302';
const String TO_NUMBER = '+919400049950';

void main() async {
  var client = Twilio.client(
    accountSid: ACCOUNT_SID,
    authToken: AUTH_TOKEN,
  );

  var response;

  // response = await client.messages.create(
  //   from: FROM_NUMBER,
  //   to: TO_NUMBER',
  //   body: 'Test Message 1',
  // );

  //response = await client.messages.fetch(sid: 'SM9b1c486b0886479bb996a9bd78d4dd7c');

  response = await client.calls.create(
    from: FROM_NUMBER,
    to: TO_NUMBER,
    url: 'http://demo.twilio.com/docs/voice.xml',
  );

  print(response);
}
