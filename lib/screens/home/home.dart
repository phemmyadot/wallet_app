import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:livecom/screens/home/widgets/action_buttons.dart';
import 'package:livecom/screens/home/widgets/history.dart';
import 'package:livecom/screens/home/widgets/summary.dart';

import '../../widgets/annoucments.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _showInfo = false;

  void showInfo(value) => setState(() => _showInfo = value);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff000000).withOpacity(0.2),
                    spreadRadius: 0,
                    blurRadius: 20,
                    offset: Offset(0, 0),
                  )
                ],
              ),
              child: Image.asset('assets/images/back_btn.png'),
            ),
            Text(
              'LiveWallet',
              style: TextStyle(
                color: Color(0xffD7DDE8),
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 80,
              width: 80,
            )
          ],
        ),
        SizedBox(height: 18),
        Expanded(
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Column(
                          children: [
                            Summary(showInfo: showInfo),
                            SizedBox(height: 10),
                            ActionButtons(),
                            SizedBox(height: 5),
                            History(),
                            SizedBox(height: 20),
                            Annoucement(),
                            SizedBox(height: 28),
                          ],
                        ),
                        _showInfo
                            ? Positioned(
                                top: 0,
                                left: 0,
                                right: 0,
                                bottom: 0,
                                child: GestureDetector(
                                  onTap: () => showInfo(false),
                                  child: Container(
                                    color: Colors.transparent,
                                    child: Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 42, vertical: 100),
                                          padding: EdgeInsets.symmetric(
                                              vertical: 12.83, horizontal: 16),
                                          color: Colors.black.withOpacity(0.8),
                                          child: Text(
                                            'LOCKED \nThe amount of LiveToken being reserved in any Game Mode \n\nUNLOCKED \nThe amount of LiveToken that is free to be used. \n\nFREE \nComplimentary LiveToken distributed by Sellers or Platform. Free LiveTokens cannot be withdrawn or transfered.',
                                            style: TextStyle(
                                                color: Color(0xffD7DDE8),
                                                fontWeight: FontWeight.w600,
                                                fontSize: 12),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            : Container()
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
