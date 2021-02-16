import 'package:flutter/material.dart';
import 'package:persona/models/Person.dart';

class PersonPage extends StatefulWidget {
  final Person person;

  PersonPage(this.person,
      [this.title]); // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _PersonPageState createState() => _PersonPageState(this.person);
}

class _PersonPageState extends State<PersonPage> {
  Person person;

  _PersonPageState(this.person);

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              key: ValueKey("image"),
              height: 300.0,
              width: 300.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icons/persona/LSW.png'),
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Name: ",
                    style: TextStyle(fontSize: 18.0, color: Colors.deepPurple),
                  ),
                  Text(
                    '${person.name}',
                    style: TextStyle(
                        fontSize: 18.0, color: Colors.lightBlueAccent),
                    key: ValueKey(person.name),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Hair Color: ",
                    style: TextStyle(fontSize: 18.0, color: Colors.deepPurple),
                  ),
                  Text(
                    '${person.hairColor}',
                    style: TextStyle(
                        fontSize: 18.0, color: Colors.lightBlueAccent),
                    key: ValueKey(person.hairColor),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Eye Color: ",
                    style: TextStyle(fontSize: 18.0, color: Colors.deepPurple),
                  ),
                  Text(
                    '${person.eyeColor}',
                    style: TextStyle(
                        fontSize: 18.0, color: Colors.lightBlueAccent),
                    key: ValueKey(person.eyeColor),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Skin Color: ",
                    style: TextStyle(fontSize: 18.0, color: Colors.deepPurple),
                  ),
                  Text(
                    '${person.skinColor}',
                    style: TextStyle(
                        fontSize: 18.0, color: Colors.lightBlueAccent),
                    key: ValueKey(person.skinColor),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
