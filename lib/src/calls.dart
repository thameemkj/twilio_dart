///
/// --------------------------- Twilio Voice Calls API ---------------------------
/// Features:-
///     ->  Create outbound voice calls
///     ->  Track statuses of calls
///

import 'http.dart';

class Calls {
  final String accountSid;
  final Map<String, String> credentials;
  final String callsBaseUrl;

  const Calls(
    this.accountSid,
    this.credentials,
    this.callsBaseUrl,
  );

  Future<Map> create({
    required String from,
    required String to,
    required String url,
    String? method,
    String? sendDigits,
    bool? record,
    String? statusCallback,
    String? statusCallbackMethod,
    String? recordingStatusCallback,
    String? fallbackUrl,
    String? fallbackMethod,
  }) async {
    var requestUrl = '$callsBaseUrl.json';
    var data = <String, dynamic>{};

    data['From'] = from;
    data['To'] = to;
    data['Url'] = url;
    if (method != null) data['Method'] = method;
    if (sendDigits != null) data['SendDigits'] = sendDigits;
    if (record != null) data['Record'] = record;
    if (statusCallback != null) data['StatusCallback'] = statusCallback;
    if (statusCallbackMethod != null) data['StatusCallbackMethod'] = statusCallbackMethod;
    if (recordingStatusCallback != null) data['RecordingStatusCallback'] = recordingStatusCallback;
    if (fallbackUrl != null) data['FallbackUrl'] = fallbackUrl;
    if (fallbackMethod != null) data['FallbackMethod'] = fallbackMethod;

    return await Http.post_(requestUrl, credentials, data);
  }

  Future<Map> fetch({
    required String sid,
  }) async {
    var requestUrl = '$callsBaseUrl/$sid.json';
    return await Http.get_(requestUrl, credentials);
  }
}
