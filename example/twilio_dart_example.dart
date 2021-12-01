import 'package:twilio_dart/twilio_dart.dart';

const String ACCOUNT_SID = '';
const String AUTH_TOKEN = '';
const String FROM_NUMBER = '+19122748564';
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

  //response = await client.messages.fetch(sid: '');

  response = await client.calls.create(
    from: FROM_NUMBER,
    to: TO_NUMBER,
    url: 'http://demo.twilio.com/docs/voice.xml',
  );

  print(response);
}
