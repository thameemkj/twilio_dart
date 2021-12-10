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
    );
    print(response);
}
```

Fetch message:

```dart
import 'package:twilio_dart/twilio_dart.dart';

void main() async{
    var response = await client.messages.fetch(
        sid: 'SMXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX', // Message SID
    );
    print(response);
}
```

Create call:

```dart
import 'package:twilio_dart/twilio_dart.dart';

void main() async{
    var response = await client.calls.create(
        from: '+0123456789',
        to: '9876543210',
        url: 'https://valid-domain', // A valid domain for handling the call (Ex: 'http://demo.twilio.com/docs/voice.xml)',
    );
    print(response);
}
```

Fetch call:

```dart
import 'package:twilio_dart/twilio_dart.dart';

void main() async{
    var response = await client.calls.fetch(
        sid: 'CAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX', // Call SID
    );
    print(response);
}
```

## Current features

* Send/Fetch Messages
    * SMS
    * MMS
* Create/Fetch Calls

## Report features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/thameemkj/twilio_dart/issues
