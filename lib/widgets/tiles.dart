import 'package:flutter/material.dart';

class TileOne extends StatefulWidget {
  const TileOne({Key? key}) : super(key: key);

  @override
  _TileOneState createState() => _TileOneState();
}

class _TileOneState extends State<TileOne> {
  @override
  Widget build(BuildContext context) {
    return const ExpansionTile(title: Text('New Tile'),
    children: [
      Text('One'),
      Icon(Icons.add),
      CircleAvatar()
    ],);
  }
}
