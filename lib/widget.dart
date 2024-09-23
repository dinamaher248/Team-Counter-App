import 'package:flutter/material.dart';

class widget_team extends StatefulWidget {
  final GlobalKey<widget_teamState> key;

  widget_team({required this.NameOFteam, required this.key}) : super(key: key);
  final String NameOFteam;

  @override
  State<widget_team> createState() => widget_teamState();
}

// we replace  _widget_teamState  with  widget_teamState  to make it public in global key in another class ' TeamsCounter'
class widget_teamState extends State<widget_team> {
  int teamPoint = 0;

  void reset() {
    setState(() {
      teamPoint = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            widget.NameOFteam,
            style: TextStyle(color: Colors.black, fontSize: 40),
          ),
        ),
        Text(
          '$teamPoint',
          style: TextStyle(color: Colors.black, fontSize: 150),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(8),
            backgroundColor: Colors.orange,
          ),
          onPressed: () {
            setState(() {
              teamPoint++;
            });
          },
          child: Text(
            'Add 1 Point',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(8),
            backgroundColor: Colors.orange,
          ),
          onPressed: () {
            setState(() {
              teamPoint += 2;
            });
          },
          child: Text(
            'Add 2 Point',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(8),
            backgroundColor: Colors.orange,
          ),
          onPressed: () {
            setState(() {
              teamPoint += 3;
            });
          },
          child: Text(
            'Add 3 Point',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ),
      ],
    );
  }
}
