import 'package:flutter/material.dart';
import 'package:flutter_web_buttons/flutter_web_buttons.dart';
import 'package:flutter/cupertino.dart';

import '../Constants/Colors.dart';
import '../Constants/Numbers.dart';

class AppBarTextWidget extends StatelessWidget {
  final String text;
  final Function() function;
  final double fontSize;

  const AppBarTextWidget({super.key, required this.text, required this.function,  this.fontSize = 15});
  @override
  Widget build(BuildContext context) {
    return  FlutterWebButton.textColorChange(
      '${text}',
      onPressed: function,
      animationDuration: Duration(milliseconds: constNumbers().textAnimationDuration),
      textAnimatedColor: constColors().backgroundColor,
      flutterWebButtonOptions: FlutterWebButtonOptions(
          fontSize: fontSize,
          buttonWidth: 130,
          buttonRadius: 0,
          textColor: constColors().appBarTextColor ,
          buttonBackgroundColor: Colors.transparent,
          buttonBorderColor: Colors.transparent),
    );
  }
}