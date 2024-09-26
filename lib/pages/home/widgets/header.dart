import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

void _handlePress(BuildContext context) async {
  showCupertinoDialog(
    context: context,
    builder: (BuildContext context) {
      Future.delayed(Duration(seconds: 1), () async {
        if (!context.mounted) return;
        Navigator.of(context).pop();
      });

      return CupertinoAlertDialog(
        title: [
          CupertinoActivityIndicator(),
          15.widthBox,
          Text("Loading..."),
        ].row().py8().px16(),
      );
    },
  );
}

Widget _buildStatus(BuildContext context, String status) {
  return CupertinoButton(
    padding: EdgeInsets.zero,
    onPressed: () => _handlePress(context),
    child: [
      Container(
        width: 10.0,
        height: 10.0,
        decoration: BoxDecoration(
          color: CupertinoColors.activeGreen,
          shape: BoxShape.circle,
        ),
      ).pOnly(top: 2),
      5.widthBox,
      status.text.color(CupertinoColors.activeGreen).bold.make()
    ].row(
      axisSize: MainAxisSize.min,
      crossAlignment: CrossAxisAlignment.center,
    ),
  );
}

class HomePageHeader extends StatefulWidget {
  const HomePageHeader({super.key});

  @override
  State<HomePageHeader> createState() => _HomePageHeaderState();
}

class _HomePageHeaderState extends State<HomePageHeader> {
  @override
  Widget build(BuildContext context) {
    return CupertinoSliverNavigationBar(
      leading: _buildStatus(context, "Online"),
      middle: Container(),
      largeTitle: [
        "Orders".text.bold.make(),
        [
          CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () => _handlePress(context),
            child: "Filter".text.make(),
          )
        ].row().pOnly(right: 16),
      ].row(alignment: MainAxisAlignment.spaceBetween),
    );
  }
}
