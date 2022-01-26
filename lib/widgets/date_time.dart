import 'package:flutter/material.dart';

class DateWidget extends StatefulWidget {
  const DateWidget({Key? key}) : super(key: key);

  @override
  _DateWidgetState createState() => _DateWidgetState();
}

class _DateWidgetState extends State<DateWidget> {
  DateTime? _selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(onPressed: (){
          var result = showDatePicker(context: context, initialDate: _selectedDate!, firstDate: DateTime(1800), lastDate: DateTime(3000));
          result.then((value){
            setState(() {
              _selectedDate = value;
            });
          });
        }, child: const Text('open date picker'),),
        Text('New date: ${_selectedDate!.year}/${_selectedDate!.month}/${_selectedDate!.day}', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),)
      ],
    );
  }
}
