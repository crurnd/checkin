import 'package:flutter/material.dart';

import 'package:checkin/pages/today.dart';

void main() => runApp(Checkin());

class Checkin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TodayPage()
    );
  }
}