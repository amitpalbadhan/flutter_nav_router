import 'package:flutter/material.dart';
import 'package:learnrouter/models/team_member_model.dart';

class DetailedPerson extends StatelessWidget {
  final TeamMember person;
  const DetailedPerson({Key? key, required this.person}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        color: Colors.indigoAccent,
        margin: EdgeInsets.symmetric(
            horizontal: width * 0.15, vertical: height * 0.10),
        alignment: Alignment.center,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Hero(
                  tag: 'person-${person.id}',
                  child: Image.network(
                    person.portrait,
                    height: 250,
                    width: 250,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 15),
                SelectableText(
                  person.name,
                  style: TextStyle(fontSize: 30.0),
                ),
                SelectableText(
                  person.role,
                  style: TextStyle(fontSize: 20.0),
                ),
                SizedBox(height: 15),
                SelectableText(
                  person.intro,
                  style: TextStyle(fontSize: 13.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
