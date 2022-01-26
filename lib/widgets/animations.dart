import 'package:flutter/material.dart';

class AnimOne extends StatefulWidget{
  const AnimOne({Key? key}) : super(key: key);

  @override
  State<AnimOne> createState() => _AnimOneState();
}

class _AnimOneState extends State<AnimOne>  with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    AnimationController _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    return InkWell(onTap: (){
      _controller.reverse();
    },child: AnimatedIcon(icon: AnimatedIcons.menu_close, progress: _controller));
  }
}
