import 'package:flutter/material.dart';

class Popup extends StatefulWidget {
  const Popup({Key? key}) : super(key: key);

  @override
  _PopupState createState() => _PopupState();
}

enum WhyFarther { harder, smarter, selfStarter, tradingCharter }

class _PopupState extends State<Popup> {
  dynamic _selection;
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<WhyFarther>(
      onSelected: (WhyFarther result) {
        setState(() {
          _selection = result;
          print(_selection);
        });
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<WhyFarther>>[
        const PopupMenuItem<WhyFarther>(
          value: WhyFarther.harder,
          child: Text('Working a lot harder'),
        ),
        const PopupMenuItem<WhyFarther>(
          value: WhyFarther.smarter,
          child: Text('Being a lot smarter'),
        ),
        const PopupMenuItem<WhyFarther>(
          value: WhyFarther.selfStarter,
          child: Text('Being a self-starter'),
        ),
        const PopupMenuItem<WhyFarther>(
          value: WhyFarther.tradingCharter,
          child: Text('Placed in charge of trading charter'),
        ),
      ],
    );
  }
}
