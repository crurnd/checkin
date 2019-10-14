import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ItemDisplay extends StatefulWidget {
  ItemDisplay({Key key, this.text, this.onClick }):super(key: key);

  final String text;
  final void Function() onClick;

  @override
  State<StatefulWidget> createState() {
    return _ItemDisplayState();
  }
}
class _ItemDisplayState extends State<ItemDisplay> {
  var _state = false;
  void _checkin(checked) {
    setState(() {
      _state = checked;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        //mover
        Checkbox(
          onChanged: _checkin,
          value: _state,
        ),
        GestureDetector(
          onTap: () {
            widget.onClick();
            print('pushed');
          }, // handle your onTap here
          child:Text(widget.text),
        ),        
      ],
    );
  }
}