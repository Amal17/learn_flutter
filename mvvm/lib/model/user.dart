import 'dart:convert';
import 'package:http/http.dart' as http;

class User {
  String id, email, firstName, lastname, avatar;
  User({this.id, this.email, this.firstName, this.lastname, this.avatar});

  // Mengubah json menjadi object user
  factory User.createUser(Map<String, dynamic> object) => User(
        id: object['id'].toString(),
        email: object['email'],
        firstName: object['firstName'],
        lastname: object['lastName'],
        avatar: object['avatar'],
      );

  static Future<User> getUserFromAPI(int id) async {
    String url = 'https://reqres.in/api/users/' + id.toString();
    var apiResult = await http.get(url);
    var jsonObject = json.decode(apiResult.body);
    var userData = (jsonObject as Map<String, dynamic>)['data'];
    return User.createUser(userData);
  }
}

class UninitializedUser extends User {}
