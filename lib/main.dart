import 'package:awesome_widgets/widgets/animations.dart';
import 'package:awesome_widgets/widgets/chips.dart';
import 'package:awesome_widgets/widgets/custom_search.dart';
import 'package:awesome_widgets/widgets/date_time.dart';
import 'package:awesome_widgets/widgets/popup_menu.dart';
import 'package:awesome_widgets/widgets/tiles.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Awesome Widgets'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('HOME'),
          centerTitle: false,
        ),
        body: Center(child: Column(
          children: const [
            ChipOne(),
            ChipTwo(),
            TileOne(),
            ListTile(
              title: Text('Popup menu'),
              trailing: Popup(),
            ),
            AnimOne(),
            DateWidget()

          ],
        )));
  }
}


