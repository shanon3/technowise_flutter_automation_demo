import 'package:flutter/material.dart';
import 'package:persona/view/HomePage.dart';

import 'app.dart';

void main() => runApp(
      PersonaApp(
        'prod',
        HomePage(title: 'List of Persons'),
      ),
    );
