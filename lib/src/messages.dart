/// 
/// --------------------------- Twilio Messages API ---------------------------
/// Features:-
///     ->  SMS
///     ->  MMS
///     ->  WhatsApp Message
///     ->  WhatsApp Message with Media
///     ->  Track statuses of all type of messages
/// 

import 'http.dart';

class Messages {
  final String accountSid;
  final Map<String, String> credentials;
  final String messagesBaseUrl;

  const Messages(
    this.accountSid,
    this.credentials,
    this.messagesBaseUrl,
  );

  Future<Map> create({
    required String from,
    required String to,
    String? body,
    String? mediaUrl,
    String? statusCallback,
  }) async {
    var requestUrl = '$messagesBaseUrl.json';
    var data = <String, dynamic>{};

    data['From'] = from;
    data['To'] = to;
    if (body != null) data['Body'] = body;
    if (mediaUrl != null) data['MediaUrl'] = mediaUrl;
    if (statusCallback != null) data['StatusCallback'] = statusCallback;

    return await Http.post_(requestUrl, credentials, data);
  }

  Future<Map> createWhatsApp({
    required String from,
    required String to,
    String? body,
    String? mediaUrl,
    String? statusCallback,
  }) async {
    var requestUrl = '$messagesBaseUrl.json';
    var data = <String, dynamic>{};

    data['From'] = 'whatsapp:$from';
    data['To'] = 'whatsapp:$to';
    if (body != null) data['Body'] = body;
    if (mediaUrl != null) data['MediaUrl'] = mediaUrl;
    if (statusCallback != null) data['StatusCallback'] = statusCallback;

    return await Http.post_(requestUrl, credentials, data);
  }

  Future<Map> fetch({
    required String sid,
  }) async {
    var requestUrl = '$messagesBaseUrl/$sid.json';
    return await Http.get_(requestUrl, credentials);
  }
}
