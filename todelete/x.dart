import 'dart:io';

void main() async {
  var request = await HttpClient().getUrl(Uri.parse('https://www.google.com'));
  var response = await request.close();
  response.listen((event) {
    print(String.fromCharCodes(event));
  });
}
