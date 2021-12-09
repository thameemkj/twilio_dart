# This repository is under development...!!

Twilio helper library for Dart developers.

## Dependencies

* [http](https://pub.dev/packages/http)

## Usage

Instantiate twilio client:

```dart
import 'package:twilio_dart/twilio_dart.dart';

void main() async{
    var client = Twilio.client(
        accountSid: 'ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX', // Account SID
        authToken: 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX', // Authentication Token
    );
}
```

Send message:

```dart
import 'package:twilio_dart/twilio_dart.dart';

void main() async{
    var response = await client.messages.create(
        from: '+0123456789',
        to: '+9876543210',
        body: 'Message body',
        mediaUrl: 'https://valid-domain', // Url of a publicly available media content
        statusCallback: 'https://valid-domain' // A valid domain to get status updates of the message
    );
    print(response);
}
```


## Report features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/thameemkj/twilio_dart/issues
