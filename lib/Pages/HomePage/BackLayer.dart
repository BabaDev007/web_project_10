import 'package:flutter/widgets.dart';

import '../../Constants/Texts.dart';
import '../../Widgets/AppBarTextWidget.dart';
import '../../Widgets/DividerWiget.dart';

class BacklayerWidget extends StatelessWidget {
  const BacklayerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppBarTextWidget(text: Texts().constTexts[0], function: (){}),
          DividerWidget(),
          AppBarTextWidget(text: Texts().constTexts[1], function: (){}),
          DividerWidget(),
          AppBarTextWidget(text: Texts().constTexts[2], function: (){}),
          DividerWidget(),
          AppBarTextWidget(text: Texts().constTexts[3], function: (){}),
          DividerWidget(),
          AppBarTextWidget(text: Texts().constTexts[4], function: (){}),
          DividerWidget(),
          AppBarTextWidget(text: Texts().constTexts[5], function: (){}),
        ],
      ),
    );
  }
}
