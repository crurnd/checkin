import 'package:flutter/material.dart';

class ItemEdit extends StatefulWidget {
  ItemEdit({Key key, this.text, this.onUpdate}) : super(key: key);

  final String text;
  final void Function(String) onUpdate;

  @override
  State<StatefulWidget> createState() {
    return _ItemEditState();
  }
}

class _ItemEditState extends State<ItemEdit> {
  TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TextEditingController(text: widget.text);
  }

  @override
  Widget build(BuildContext context) {
    print(widget.text);
    return Row(
      children: <Widget>[
        new Flexible(
          child: new TextField(
            decoration: InputDecoration(),
            controller: _controller,
          )
        ),
        new RaisedButton(
          onPressed: () {
            widget.onUpdate(_controller.text);
          },
          child: new Text('ok'),
        ),
        new RaisedButton(
          onPressed: () {
            //ondelete
          },
          child: new Text('x'),
        ),
    ],
    );
  }
}