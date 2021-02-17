import 'package:flutter/material.dart';
import 'package:persona/models/Person.dart';

class PersonRow extends StatefulWidget {
  final Person person;
  final int id;

  PersonRow({
    this.person,
    this.id,
  });
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  _PersonRowState createState() => _PersonRowState();
}

class _PersonRowState extends State<PersonRow> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Card(
      elevation: 4.0,
      child: Tooltip(
        message: widget.person.name,
        child: Row(
          children: <Widget>[
            Container(
              key: ValueKey("image-" + widget.id.toString()),
              height: 120.0,
              width: 120.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icons/persona/LSW.png'),
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.circle,
              ),
            ),
            Text(
              widget.person.name,
              key: ValueKey("card-" + widget.id.toString()),
              style: TextStyle(fontSize: 20.0, color: Colors.lightBlueAccent),
            )
          ],
        ),
      ),
    );
  }
}
