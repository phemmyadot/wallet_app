import 'package:flutter/material.dart';
import 'package:livecom/screens/home/home.dart';
import 'package:livecom/screens/live_store/main/live_store.dart';
import 'package:livecom/utils/app_colors.dart';

class EntryScreen extends StatefulWidget {
  static const routeName = '/';
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
                  getPages().map((e) => e.page).toList()[0],
                  getPages().map((e) => e.page).toList()[1],
                  getPages().map((e) => e.page).toList()[2],
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: AppColors.primary,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(112, 0, 0, 0),
                    offset: Offset(0.0, 0.0),
                    blurRadius: 35.0,
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (int i = 0; i < getPages().length; i++)
                    InkWell(
                      onTap: () => _setCurrentIndex(i, true),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 27),
                        key: getPages()[i].key,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 10),
                            getPages()[i].icon,
                            SizedBox(height: 5),
                            Row(
                              children: [
                                i == 1 ? SizedBox(width: 3) : Container(),
                                Text(
                                  getPages()[i].title,
                                  style: TextStyle(
                                    height: 1.6,
                                    fontSize: 10.0,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromARGB(255, 215, 221, 232),
                                  ),
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

  List<TabNavigationItem> getPages() => [
        TabNavigationItem(
          page: Home(),
          icon: Container(
              height: 23,
              width: 23,
              child: Image.asset('assets/images/home.png')),
          title: "Home",
        ),
        TabNavigationItem(
          page: Text(''),
          icon: Container(
              height: 21,
              width: 27,
              child: Image.asset('assets/images/stream.png')),
          title: "Live Stream",
        ),
        TabNavigationItem(
          page: LiveStore(),
          icon: Container(
              height: 21,
              width: 19,
              child: Image.asset('assets/images/live.png')),
          title: "Live Store",
        ),
      ];
}

class TabNavigationItem {
  final Widget page;
  final String title;
  final Widget icon;
  final GlobalKey key;

  TabNavigationItem({
    @required this.page,
    @required this.title,
    @required this.icon,
    this.key,
  });
}
