import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import '../model/person_model.dart';

class Config {
  final URL url;
  Config(this.url);
  String get baseUrl {
    return Platform.isAndroid ? url.android : url.iOS;
  }
}

class URL {
  final String android;
  final String iOS;

  URL(this.android, this.iOS);
}

class PersonApiImpl {
  Future<String> _getPath() async {
    final contents =
        new File('test_driver/config/prod.json').readAsStringSync();
    final jsonData = jsonDecode(contents);
    final config =
        Config(URL(jsonData['baseUrl']['android'], jsonData['baseUrl']['iOS']));
    return config.baseUrl + '/people';
  }

  Future<List<PersonModel>> getAllPerson() async {
    final String path = await _getPath();

    print('path $path');
    final Map<String, String> headers = {
      'Content-Type': 'application/json',
    };

    final response = await http.get(path, headers: headers);
    if (response.statusCode != 200) {
      return null;
    }

    return (json.decode(response.body)['results'] as List)
        .map((item) => PersonModel.fromJson(item))
        .toList();
  }
}
