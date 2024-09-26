import 'package:florence_delivery_partner/core/helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePageContent extends StatefulWidget {
  const HomePageContent({super.key});

  @override
  State<HomePageContent> createState() => _HomePageContentState();
}

class _HomePageContentState extends State<HomePageContent> {
  final List<String> _orders = List.generate(30, (index) => "Order $index");

  @override
  Widget build(BuildContext context) {
    if (_orders.isEmpty) {
      return SliverToBoxAdapter(
        child: "No orders found".text.make().p16(),
      );
    }

    return SliverToBoxAdapter(
      child: [
        for (var order in _orders) order.text.make().p16(),
      ]
          .column(axisSize: MainAxisSize.min)
          .scrollVertical(physics: BouncingScrollPhysics())
          .constrainedBox(buildPageScrollBoxConstraints(context, 125)),
    );
  }
}
