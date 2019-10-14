import 'package:flutter/material.dart';

import 'package:checkin/pages/itemDisplay.dart';
import 'package:checkin/pages/itemEdit.dart';

class Item extends StatefulWidget {
  const Item({Key key, this.text, this.onUpdate}):super(key: key);
  final String text;
  final void Function(String) onUpdate;

  @override
  State<StatefulWidget> createState() {
    return _ItemState();
  }
}
class _ItemState extends State<Item> {
  var editing = true;

  void onClick() {
    print('onClick');
    setState(() {
     editing = true; 
    });
  }
  void onUpdate(text) {
    print('onUpdate');
    setState(() {
     editing = false; 
    });
    widget.onUpdate(text);
  }
  Widget render() {
    if(editing) {
      return ItemEdit(text: widget.text, onUpdate: onUpdate);
    }
    else {
      return ItemDisplay(text: widget.text, onClick: onClick);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: render(),
    );
  }
}