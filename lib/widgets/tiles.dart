import 'package:flutter/material.dart';

class TileOne extends StatefulWidget {
  const TileOne({Key? key}) : super(key: key);

  @override
  _TileOneState createState() => _TileOneState();
}

class _TileOneState extends State<TileOne> {
  @override
  Widget build(BuildContext context) {
    return const ExpansionTile(
      title: Text('New Tile'),
      children: [Text('One'), Icon(Icons.add), CircleAvatar()],
    );
  }
}

class TileTwo extends StatefulWidget {
  const TileTwo({Key? key}) : super(key: key);

  @override
  _TileTwoState createState() => _TileTwoState();
}

class _TileTwoState extends State<TileTwo> {
  bool _expanded = false;
  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      children: [
        ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return const ListTile(
              title: Text(
                'Click To Expand',
                style: TextStyle(color: Colors.white),
              ),
            );
          },
          body: const ListTile(
            title:
                Text('Description text', style: TextStyle(color: Colors.white)),
            tileColor: Colors.green,
          ),
          canTapOnHeader: true,
          isExpanded: _expanded,
          backgroundColor: Colors.green,
        ),
      ],
    );
  }
}
