import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePageHeaderFilter extends StatefulWidget {
  const HomePageHeaderFilter({super.key});

  @override
  State<HomePageHeaderFilter> createState() => _HomePageHeaderFilterState();
}

class _HomePageHeaderFilterState extends State<HomePageHeaderFilter> {
  int _segmentIndex = 0;

  Widget _buildSegmentedControl() {
    final segments = ["All", "Pending", "Completed", "Disputed"];

    return CupertinoSlidingSegmentedControl<int>(
      groupValue: _segmentIndex,
      children: {
        for (var entry in segments.asMap().entries)
          entry.key: Text(
            entry.value,
            style: TextStyle(fontSize: 14.0),
          )
      },
      onValueChanged: (int? value) {
        setState(() {
          _segmentIndex = value ?? 0;
        });
      },
    ).wFull(context).px(16).py(8);
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: [
        CupertinoSearchTextField(
          keyboardType: TextInputType.emailAddress,
          suffixMode: OverlayVisibilityMode.editing,
        ).p8(),
      ]
          .column(axisSize: MainAxisSize.min)
          .backgroundColor(context.cupertinoTheme.barBackgroundColor),
    );
  }
}
