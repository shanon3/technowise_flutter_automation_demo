import 'dart:convert';

import 'package:http/http.dart';
import 'package:persona/models/Person.dart';

import '../app.dart';

class PersonService {
  Client client = Client();

  Future<String> get baseURL async {
    return (await PersonaApp.config).baseUrl;
  }

  Future<List<Person>> getAllPerson() async {
    final String url = await this.baseURL + "/people";
    print("Getting from " + url);
    final response = await client.get(
      url,
      headers: {"Accept": "application/json"},
    );

    return (json.decode(response.body)['results'] as List)
        .map((json) => Person.fromJson(json))
        .toList();
  }
}
