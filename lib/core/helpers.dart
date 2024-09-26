import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

BoxConstraints buildPageScrollBoxConstraints(
  BuildContext context,
  double offset,
) {
  double statusBarHeight =
      WidgetsBinding.instance.platformDispatcher.implicitView!.padding.top;
  return BoxConstraints(
      maxHeight: context.mq.size.height - offset - statusBarHeight);
}
