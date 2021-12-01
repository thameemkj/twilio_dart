import 'twilio_client.dart';

class Twilio {
  static Client client({
    required String accountSid,
    required String authToken,
  }) =>
      Client(
        accountSid,
        authToken,
      );
}
