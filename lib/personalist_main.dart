import 'package:flutter/material.dart';
import 'app.dart';
import 'view/PersonListPage.dart';

void main() =>
    runApp(PersonaApp('prod', PersonListPage(title: 'List of Persons')));
