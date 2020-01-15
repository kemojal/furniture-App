import 'package:flutter/material.dart';
import './Widgets/CustomBottomSheet.dart';
import './Widgets/Page.dart';

import 'dart:ui';
//import 'dart:math';
import 'dart:math' as math;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
        canvasColor: Colors.white,
        
      ),
      home: MyHomePage(title: 'Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  //int _counter = 0;
  AnimationController _controller;
  double minHeight = 60;
  double get modalMargin => lerp(30, 0);
  double get chairTitleFontSize => lerp(28, 8);
  double get addToCardText => lerp(12, 18);
  double get cardContainerMargin => lerp(150, 30);
  double get imageWidth => lerp(MediaQuery.of(context).size.width, MediaQuery.of(context).size.width/4);
  double get maxHeight => MediaQuery.of(context).size.height * 0.9;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController( //<-- initialize a controller
      vsync: this,
      duration: Duration(milliseconds: 600), 
    );
  }

  @override
  void dispose() {
    _controller.dispose(); //<-- and remember to dispose it!
    super.dispose();
  }

  double lerp(double min, double max) => lerpDouble(min, max, _controller.value );
  //lerpDouble(min, max, _controller.value); //<-- lerp any value based on the controll

  void _handleDragUpdate(DragUpdateDetails details) {
    _controller.value -= details.primaryDelta / maxHeight; //<-- Update the _controller.value by the movement done by user.
  }

  void _handleDragEnd(DragEndDetails details) {
    if (_controller.isAnimating ||
        _controller.status == AnimationStatus.completed) return;

    final double flingVelocity =
        details.velocity.pixelsPerSecond.dy / maxHeight; //<-- calculate the velocity of the gesture
    if (flingVelocity < 0.0)
      _controller.fling(velocity: math.max(2.0, -flingVelocity)); //<-- either continue it upwards
    else if (flingVelocity > 0.0)
      _controller.fling(velocity: math.min(-2.0, -flingVelocity)); //<-- or continue it downwards
    else
      _controller.fling(velocity: _controller.value < 0.5 ? -2.0 : 2.0); //<-- or just continue to whichever edge is closer
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation:_controller,
        builder: (context, child){
          return Center(
            child: Stack(
              children: <Widget>[
                Positioned(child: PageWidget(imageWidth: imageWidth, chairTitleFontSize: chairTitleFontSize),),
                Positioned(
                  height: lerp(minHeight, maxHeight),
                  bottom: modalMargin,
                  child: GestureDetector(
                    onTap: () {
                      final bool isOpen = _controller.status == AnimationStatus.completed;
                      _controller.fling(velocity: isOpen ? -2 : 2); //<-- ...snap the sheet in proper direction
                      },
                    onVerticalDragUpdate: _handleDragUpdate,  //<-- Add verticalDragUpdate callback
                    onVerticalDragEnd: _handleDragEnd,
                    child:CustomBottomSheet(addToCardText: addToCardText, cardContainerMargin: cardContainerMargin),
                      
                    ),
                  )
              ],
            ),
          );
        }
        )
    );
  }
}
