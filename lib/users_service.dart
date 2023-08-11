import 'dart:convert';
import 'package:iti_task2/users.dart';
import "package:http/http.dart" as http;

class UserService {
  final String url = "https://jsonplaceholder.typicode.com/users";

  Future<List<Users>> fetchComments() async {
    http.Response response = await http.get(Uri.parse(url));
    List extractedData = json.decode(response.body);
    List<Users> users = [];
    for (var extraction in extractedData) {
      var user = Users.fromMap(extraction);
      users.add(user);
    }
    return users;
  }
}
