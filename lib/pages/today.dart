import 'package:flutter/material.dart';

import './item.dart';

class TodayPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return TodayPageState();
  }
}

class TodayPageState extends State<TodayPage> {
  var tasks = [
  ];
  var todos = [
    "ui",
    "pomodoro",
    "release app",
    "calendar",
    "reader app with helps",
    "greasy monkey",
    "css on ideas",
  ];
  var daily = [
    "jlpt",
    "eng listen and read",
    "excercise",
  ];
  Function(String) getOnUpdate(i, text) {
    return ((t) => setState(() => tasks[i] = t));
  }
  List<Widget> getItems() {
    return tasks.asMap().map((i, t) => MapEntry(i, 
      Item(
        text: t, 
        onUpdate: getOnUpdate(i, t)
      )
    )).values.toList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Today"),
      ),
      body: Container(
        child:Column(
          children: <Widget>[
            ...getItems(),
            Item(
              text: "", 
              onUpdate: (text) => setState(()=>tasks.add(text))
            )
          ]
        ),
      ),
    );
  }
}