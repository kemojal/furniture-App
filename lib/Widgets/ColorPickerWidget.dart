import 'package:flutter/material.dart';

class ColorPicker extends StatelessWidget {
  const ColorPicker({Key key, @required this.colorName}) : super(key: key);

  final int colorName;
  @override
  Widget build(BuildContext context) {
    return Container(
      width:60,
      height: 60,
      margin: EdgeInsets.only(
        left: 10,
        right: 10
      ),
      //color: Colors.green,
      child: Container(
          width: 60,
          height: 60,
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            //color: Colors.green,
            border: Border.all(
              color: Colors.black.withOpacity(0.5),
              width: 2.0),
            borderRadius: BorderRadius.all(
              Radius.circular(50.0)
            )
          ),
          child: Container(
            width: 20,
            height: 20,
            decoration:BoxDecoration(
              color: Color(colorName),
              borderRadius: BorderRadius.all(
              Radius.circular(50.0)
            )
            ),
            ),
          ),
    );
  }
}