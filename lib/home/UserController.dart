import 'dart:convert';

import 'package:http/http.dart' as http;
import 'dart:async';

class UserController {
  static Future getData() async {
    var response = await http.get("http://jsonplaceholder.typicode.com/users");
    if (response.statusCode == 200) {
      // print(response.body.toString());
      var res = jsonDecode(response.body);
      return res;
    }
  }
}
