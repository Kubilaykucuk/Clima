import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;
  Future getData() async {
    var response = await http.Client().get(Uri.parse(url));
    if (response.statusCode == 200) {
      String data = response.body;
      var decoded = jsonDecode(data);
      return decoded;
    } else {
      print(response.statusCode);
    }
  }
}
