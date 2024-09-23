import 'package:flutter/material.dart';
import 'package:score_team/counter_team.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => TeamsCounter(),
    },
  ));
}
