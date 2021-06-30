import 'package:flutter/material.dart';
import 'package:learnrouter/models/team_member_model.dart';
import 'package:learnrouter/views/header/header.dart';

import 'details.dart';

class OurTeam extends StatelessWidget {
  const OurTeam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Header(),
          Text(
            'Our Team',
            style: TextStyle(
              fontSize: 50.0,
            ),
          ),
          SizedBox(height: 15),
          Expanded(
            child: GridView.count(
              crossAxisCount: 4,
              children: teamMembers
                  .map(
                    (person) => Card(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      DetailedPerson(person: person)));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Hero(
                                tag: 'person-${person.id}',
                                child: CircleAvatar(
                                  radius: 75,
                                  backgroundColor: Colors.white,
                                  backgroundImage:
                                      NetworkImage(person.portrait),
                                ),
                              ),
                              SizedBox(height: 15),
                              SelectableText(
                                person.name,
                                style: TextStyle(fontSize: 30.0),
                              ),
                              SelectableText(
                                person.role,
                                style: TextStyle(
                                    fontSize: 13.0, color: Colors.blueGrey),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
