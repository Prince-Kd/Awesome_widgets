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

class TimeWidget extends StatefulWidget {
  const TimeWidget({Key? key}) : super(key: key);

  @override
  _TimeWidgetState createState() => _TimeWidgetState();
}

class _TimeWidgetState extends State<TimeWidget> {
  TimeOfDay _selectedTime = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(onPressed: (){
          Future result = showTimePicker(context: context, initialTime: _selectedTime);
          result.then((value){
            setState(() {
              _selectedTime = value;
            });
          });
        }, child: const Text('open time picker')),
        Text('New time: ${_selectedTime.hour}:${_selectedTime.minute} ${_selectedTime.period.name}', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),)
      ],
    );
  }
}

