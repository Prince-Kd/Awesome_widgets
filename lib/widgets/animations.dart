import 'package:flutter/material.dart';

class AnimOne extends StatefulWidget{
  const AnimOne({Key? key}) : super(key: key);

  @override
  State<AnimOne> createState() => _AnimOneState();
}

class _AnimOneState extends State<AnimOne>  with TickerProviderStateMixin {
  AnimationController? _controller;
  @override
  void initState(){
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 500));
  }
  bool isAnimated = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: (){
      setState(() {
        isAnimated = !isAnimated;
        isAnimated ? _controller!.forward() : _controller!.reverse();
      });
    },child: AnimatedIcon(icon: AnimatedIcons.menu_close, progress: _controller!));
  }
}
