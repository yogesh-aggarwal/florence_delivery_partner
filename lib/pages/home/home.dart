import 'package:florence_delivery_partner/pages/home/widgets/content.dart';
import 'package:flutter/cupertino.dart';

import 'package:florence_delivery_partner/pages/home/widgets/filter.dart';
import 'package:florence_delivery_partner/pages/home/widgets/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          HomePageHeader(),
          HomePageHeaderFilter(),
          HomePageContent(),
        ],
      ),
    );
  }
}
