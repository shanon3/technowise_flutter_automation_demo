import 'package:flutter/material.dart';
import 'package:persona/models/Person.dart';
import 'package:persona/view/PersonPage.dart';
import 'package:persona/view/PersonaRow.dart';

class PersonListPage extends StatefulWidget {
  final List<Person> allDataPerson;

  PersonListPage({
    Key key,
    this.title,
    this.allDataPerson,
  }) : super(key: key);

  final String title;

  @override
  _PersonListPageState createState() => _PersonListPageState();
}

class _PersonListPageState extends State<PersonListPage> {
  List<Person> data;

  @override
  void initState() {
    super.initState();
    data = widget.allDataPerson;
  }

  void clicked(int pos) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            PersonPage(data[pos], "Details of " + data[pos].name),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("See all Persons"),
      ),
      body: ListView.builder(
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 100.0,
            child: InkWell(
              onTap: () => clicked(index),
              child: Container(
                child: PersonRow(person: data[index], id: index),
              ),
            ),
          );
        },
      ),
    );
  }
}
