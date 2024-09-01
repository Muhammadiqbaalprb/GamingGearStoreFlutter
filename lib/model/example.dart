import 'dart:convert';

import 'package:http/http.dart' as http;

class Models {
  String id, name, job, createdAt;

  Models(
      {required this.id,
      required this.name,
      required this.job,
      required this.createdAt});

  static Future<Models> connectAPI(String name, String job) async {
    Uri url = Uri.parse("https://reqres.in/api/users");

    var hasilResponse = await http.post(url, body: {
      "name": name,
      "job": job,
    });

    var data = json.decode(hasilResponse.body);

    return Models(
      id: data["id"],
      name: data["name"],
      job: data["job"],
      createdAt: data["createdAt"],
    );
  }
}
