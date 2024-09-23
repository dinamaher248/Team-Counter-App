import 'package:flutter/material.dart';
import 'package:score_team/widget.dart';

class TeamsCounter extends StatefulWidget {
  const TeamsCounter({super.key});

  @override
  State<TeamsCounter> createState() => _Teams_counterState();
}

class _Teams_counterState extends State<TeamsCounter> {
 final GlobalKey<widget_teamState> teamAKey = GlobalKey<widget_teamState>();
  final GlobalKey<widget_teamState> teamBKey = GlobalKey<widget_teamState>();
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Points Counter',
            style: TextStyle(
              color: Colors.white,
            )),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, //equal spaces
            children: [
              widget_team(
                 key: teamAKey,
                NameOFteam: 'Team A',
              ),
              SizedBox(
                height: 500,
                child: VerticalDivider(
                  color: Colors.grey,
                  thickness: 2,
                ),
              ),
              widget_team(
                 key: teamBKey,
                NameOFteam: 'Team B',
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(8),
              backgroundColor: Colors.orange,
            ),
            onPressed: () {
               teamAKey.currentState?.reset();
              teamBKey.currentState?.reset();
            },
            child: Text(
              'reset',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
