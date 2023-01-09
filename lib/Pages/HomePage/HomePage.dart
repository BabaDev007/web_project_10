import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../Constants/Colors.dart';
import '../../Constants/Numbers.dart';
import '../../Constants/Texts.dart';
import '../../Widgets/AppBarTextWidget.dart';
import 'package:backdrop/backdrop.dart';

import 'BackLayer.dart';
import 'FrontLayer.dart';
class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return BackdropScaffold(
      frontLayerBorderRadius: BorderRadius.zero,
      frontLayerBackgroundColor: constColors().backgroundColor,
      backLayerBackgroundColor: constColors().appBarColor ,
      backgroundColor: constColors().backgroundColor,
      appBar: width > 1000 ? AppBar(
        toolbarHeight: constNumbers().appBarHeight,
        backgroundColor: constColors().appBarColor,
        shadowColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppBarTextWidget(text: Texts().constTexts[0], function: (){}),
            AppBarTextWidget(text: Texts().constTexts[1], function: (){}),
            AppBarTextWidget(text: Texts().constTexts[2], function: (){}),
            AppBarTextWidget(text: Texts().constTexts[3], function: (){}),
            AppBarTextWidget(text: Texts().constTexts[4], function: (){}),
            AppBarTextWidget(text: Texts().constTexts[5], function: (){}),
          ],
        ),
      ) : BackdropAppBar(
          leading: SizedBox(),
          toolbarHeight: constNumbers().appBarHeight,
          backgroundColor: constColors().appBarColor,
          shadowColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title:
          BackdropToggleButton()

      ),
      backLayer: BacklayerWidget(),
      frontLayer: FrontLayerWidget()

    );
  }

}


