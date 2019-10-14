import 'package:flutter/widgets.dart';

class Card extends StatefulWidget {
  final Widget child;

  Card({Key key, @required this.child}):super(key:key);

  _CardState createState() => _CardState();
}

class _CardState extends State<Card> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: widget.child,
      );
  }
}