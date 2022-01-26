import 'package:flutter/material.dart';

class ChipOne extends StatefulWidget {
  const ChipOne({Key? key}) : super(key: key);

  @override
  _ChipOneState createState() => _ChipOneState();
}

class _ChipOneState extends State<ChipOne> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: const Text('Flutter'),
      selected: _isSelected,
      onSelected: (bool newVal) {
        setState(() {
          _isSelected = newVal;
        });
      },
    );
  }
}

class ChipTwo extends StatefulWidget {
  const ChipTwo({Key? key}) : super(key: key);

  @override
  _ChipTwoState createState() => _ChipTwoState();
}

class _ChipTwoState extends State<ChipTwo> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return InputChip(label: const Text('Flutter is awesome'), selected: _isSelected, onSelected: (bool newVal){
      setState(() {
        _isSelected = newVal;
      });
    },
      selectedColor: Colors.red[200],
      checkmarkColor: Colors.red[400],
      // deleteIcon: Icon(Icons.delete),
      // onDeleted: (){
      //
      // },
      //avatar: CircleAvatar(),
      //showCheckmark: false,
    );
  }
}

