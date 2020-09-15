import 'dart:convert';

import 'package:http/http.dart' as http;

class PostResult {
  String id, job, name, created;
  PostResult({this.id, this.name, this.job, this.created});

  factory PostResult.createPostResult(Map<String, dynamic> object) {
    return PostResult(
      id: object['id'],
      name: object['name'],
      job: object['job'],
      created: object['createdAt'],
    );
  }

  static Future<PostResult> connect2Api(String name, String job) async {
    String api_url = 'https://reqres.in/api/users';

    var result = await http.post(api_url, body: {"name": name, "job": job});
    var jsonObject = json.decode(result.body);

    return PostResult.createPostResult(jsonObject);
  }
}

class UserResult {
  String id, email, name;
  UserResult({this.id, this.email, this.name});

  factory UserResult.createUserResult(Map<String, dynamic> object) {
    return UserResult(
      id: object['id'].toString(),
      name: object['first_name'] + ' ' + object['last_name'],
      email: object['email'],
    );
  }

  static Future<UserResult> connect2Api(String id) async {
    String api_url = 'https://reqres.in/api/users/' + id;

    var result = await http.get(api_url);
    var jsonObject = json.decode(result.body);
    var userData = (jsonObject as Map<String, dynamic>)['data'];
    return UserResult.createUserResult(userData);
  }
}

class AllUserModel {
  String id, email, name;
  AllUserModel({this.id, this.email, this.name});

  factory AllUserModel.createAllUserModel(Map<String, dynamic> object) {
    return AllUserModel(
      id: object['id'].toString(),
      name: object['first_name'] + ' ' + object['last_name'],
      email: object['email'],
    );
  }

  static Future<List<AllUserModel>> getAllUser(String page) async {
    String api_url = 'https://reqres.in/api/users?page=' + page;

    var result = await http.get(api_url);
    var jsonObject = json.decode(result.body);
    List<dynamic> listUser = (jsonObject as Map<String, dynamic>)['data'];
    List<AllUserModel> user = [];
    for (int i = 0; i < listUser.length; i++) {
      user.add(AllUserModel.createAllUserModel(listUser[i]));
    }
    return user;
  }
}
