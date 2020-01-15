import 'package:flutter/material.dart';

import 'ColorPickerWidget.dart';

class PageWidget extends StatelessWidget {
  const PageWidget({Key key, @required this.imageWidth, @required this.chairTitleFontSize}) : super(key: key);

  final double imageWidth;
  final double chairTitleFontSize;

  @override
  Widget build(BuildContext context) {
    return  Container(
              //color: Colors.red,
              padding: EdgeInsets.only(
                top: 100.0
              ),
              alignment: Alignment.center,
              child: Column(
                children: <Widget>[
                  Container(
                    width: imageWidth,
                //height: 300,
                    margin: EdgeInsets.only(
                    bottom: 20
                    ),
                    decoration: BoxDecoration(
                    color: Colors.blue
                    ),
                    child: Image(width: 250, image: AssetImage('images/1_1.jpg')),
                ),
                Text(
                  'Field Lounge Chair',
                  style: TextStyle(
                    fontSize: chairTitleFontSize,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    ),
                    ),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  //color: Colors.green,
                  padding: const EdgeInsets.only(
                    top: 25.0,
                    bottom: 25.0
                    ),
                  child: Text(
                    '\$1,699.00',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      ),
                  ),
                ),
                Container(
                    padding: EdgeInsets.all(15),
                    height: 90,
                    //color: Colors.red,
                    child: ListView(
                      scrollDirection: Axis.horizontal ,
                      children: <Widget>[
                        ColorPicker(colorName: 0xffAA9A89),
                        ColorPicker(colorName: 0xffA33B38),
                        ColorPicker(colorName: 0xff25262D),
                        ColorPicker(colorName: 0xff8E5F4F),
                        ColorPicker(colorName: 0xff8F8E8B),
                    ],
                    ),
                    ),
              ],
              ),
              );
  }
}