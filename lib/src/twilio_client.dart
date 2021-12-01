import 'constants.dart';
import 'messages.dart';
import 'calls.dart';

class Client {
  final String accountSid;
  final String authToken;

  const Client(
    this.accountSid,
    this.authToken,
  );

  Messages get messages => Messages(
        accountSid,
        {
          'accountSid': accountSid,
          'authToken': authToken,
        },
        '$twilio_api_base_url/$accountSid/Messages',
      );

  Calls get calls => Calls(
        accountSid,
        {
          'accountSid': accountSid,
          'authToken': authToken,
        },
        '$twilio_api_base_url/$accountSid/Calls',
      );
}
