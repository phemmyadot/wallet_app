import 'package:flutter/material.dart';
import 'package:livecom/screens/home/home.dart';
import 'package:livecom/utils/app_colors.dart';
import 'package:livecom/utils/livecom_icons_icons.dart';
import 'package:livecom/widgets/gradient_icon.dart';

class EntryScreen extends StatefulWidget {
  const EntryScreen({Key key}) : super(key: key);

  @override
  _EntryScreenState createState() => _EntryScreenState();
}

class _EntryScreenState extends State<EntryScreen>
    with TickerProviderStateMixin {
  int _currentIndex = 0;
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  TabController _tabController;
  @override
  initState() {
    _tabController = new TabController(length: 3, vsync: this);
    super.initState();
  }

  Future<void> _setCurrentIndex(int index, bool animate) async {
    if (animate) _tabController.animateTo(index);
    setState(() => _currentIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      key: _scaffoldKey,
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                controller: _tabController,
                children: [
                  getItems().map((e) => e.page).toList()[0],
                  getItems().map((e) => e.page).toList()[1],
                  getItems().map((e) => e.page).toList()[2],
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: AppColors.background,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff080808),
                    offset: Offset(0.0, 1.0),
                    blurRadius: 5.0,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (int i = 0; i < getItems().length; i++)
                    InkWell(
                      onTap: () => _setCurrentIndex(i, true),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 27),
                        key: getItems()[i].key,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 10),
                            Container(
                                height: 23,
                                width: 23,
                                child: Image.asset(
                                    'assets/images/${getItems()[i].icon}.png')),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                i == 1 ? SizedBox(width: 3) : Container(),
                                Text(
                                  getItems()[i].title,
                                  style: TextStyle(
                                      color: Color(0xffD7DDE8),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            SizedBox(height: 20)
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  List<TabNavigationItem> getItems() => [
        TabNavigationItem(
          page: Home(),
          icon: 'home',
          title: "Home",
        ),
        TabNavigationItem(
          page: Text(''),
          icon: 'stream',
          title: "Live Stream",
        ),
        TabNavigationItem(
          page: Text(''),
          icon: 'live',
          title: "Live Store",
        ),
      ];
}

class TabNavigationItem {
  final Widget page;
  final String title;
  final String icon;
  final GlobalKey key;

  TabNavigationItem({
    @required this.page,
    @required this.title,
    @required this.icon,
    this.key,
  });
}
