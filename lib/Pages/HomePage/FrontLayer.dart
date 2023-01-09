import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Constants/Assets.dart';
import '../../Constants/Colors.dart';
import '../../Constants/Numbers.dart';
import '../../Constants/Texts.dart';
import '../../Widgets/AppBarTextWidget.dart';
import 'package:backdrop/backdrop.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';
class FrontLayerWidget extends StatefulWidget {
  const FrontLayerWidget({Key? key}) : super(key: key);

  @override
  State<FrontLayerWidget> createState() => _FrontLayerWidgetState();
}
ScrollController _controller = ScrollController();

class _FrontLayerWidgetState extends State<FrontLayerWidget> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return
      WebSmoothScroll(
        scrollOffset: 100, // additional offset to users scroll input
        animationDuration: 600, // duration of animation of scroll in milliseconds
        curve: Curves.easeInOutCirc, //
        controller: _controller,
        child:
        ListView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _controller,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Image.asset(constAssets().backgroundImage,  fit: BoxFit.contain, width: width ,),
                Column(
                  children: [
                    SizedBox(height: 100,),
                    Image.asset(constAssets().logoImage, height: 150,),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      Texts().title1,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline2?.
                      copyWith(color: constColors().appBarTextColor, fontWeight: FontWeight.bold ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      Texts().subtitle1,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline6?.
                      copyWith(color: constColors().appBarTextColor, shadows: [Shadow(blurRadius: 1.2, color: constColors().appBarTextColor)],  ),
                    )
                  ],
                ),


              ],
            )

          ],
        ),)
    ;
  }
}

