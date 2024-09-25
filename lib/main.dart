import 'package:florence_delivery_partner/pages/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:pair/pair.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: "Florence Delivery Partner",
      home: AppWrapper(),
    );
  }
}

class AppWrapper extends StatefulWidget {
  const AppWrapper({super.key});

  @override
  _AppWrapperState createState() => _AppWrapperState();
}

class _AppWrapperState extends State<AppWrapper> {
  int _selectedTabIndex = 0;

  final List<Pair<String, Icon>> _items = [
    Pair('Home', Icon(CupertinoIcons.home)),
    Pair('Home', Icon(CupertinoIcons.home)),
  ];

  final List<Widget> _pages = [
    CupertinoTabView(
      navigatorKey: GlobalKey(),
      builder: (context) {
        return HomePage();
      },
    ),
    CupertinoTabView(
      navigatorKey: GlobalKey(),
      builder: (context) {
        return HomePage();
      },
    ),
  ];

  CupertinoTabBar buildTabBar() {
    return CupertinoTabBar(
      items: _items.map((item) {
        return BottomNavigationBarItem(
          icon: item.value,
          label: item.key,
        );
      }).toList(),
      currentIndex: _selectedTabIndex,
      onTap: (int index) {
        setState(() {
          _selectedTabIndex = index;
        });
      },
    );
  }

  Widget buildPage(BuildContext context, int index) {
    return _pages[index];
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: buildTabBar(),
      tabBuilder: buildPage,
    );
  }
}
