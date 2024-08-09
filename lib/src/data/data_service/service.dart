import 'dart:convert';

import 'package:journo/src/data/data_model/model.dart';
import 'package:http/http.dart' as http;

class SignUpDataService {
  static Future<String> createUser(SignUpModel user) async {
    var uri = "https://35bd-41-116-187-214.ngrok-free.app/api/auth/sign-up";
    try {
      final jsonBody = json.encode(user.toJson());

      print('Json data being sent: $jsonBody');
      final response = await http.post(Uri.parse(uri),
          headers: {'Content-Type': 'application/json'},
          body: jsonBody
      );

      print('response: $response');
      if (response.statusCode == 200) {
        print("success");
        // _signUp(user.email, user.name);
        return "success";
      } else {
        print("failed");

        return "failed";
      }
    } catch (e) {
      print(e);
    }

    return "";
  }

}
