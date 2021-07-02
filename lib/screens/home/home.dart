import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:livecom/screens/home/widgets/action_buttons.dart';
import 'package:livecom/screens/home/widgets/history.dart';
import 'package:livecom/screens/home/widgets/summary.dart';
import 'package:livecom/utils/svg.dart';

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
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    return Column(
      children: [
        SizedBox(height: 20 + statusBarHeight),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 40,
              height: 40,
              margin: EdgeInsets.only(left: 14.0),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(102, 0, 0, 0),
                    offset: Offset(5.0, 5.0),
                    blurRadius: 20.0,
                  ),
                  BoxShadow(
                    color: Color.fromARGB(76, 80, 93, 116),
                    offset: Offset(-7.0, -7.0),
                    blurRadius: 20.0,
                  )
                ],
              ),
              child: Stack(
                children: [
                  SvgWidget(painters: [
                    SvgPathPainter.fill()
                      ..addPath(
                          'M0 20C0 8.9543 8.9543 0 20 0C31.0457 0 40 8.9543 40 20C40 31.0457 31.0457 40 20 40C8.9543 40 0 31.0457 0 20Z')
                      ..setLinearGradient(
                        startX: -16.31578763184293,
                        startY: -8.421051121608452,
                        endX: 33.68420681303728,
                        endY: 43.68420636996503,
                        colors: [
                          Color.fromARGB(255, 80, 93, 116),
                          Color.fromARGB(255, 24, 29, 40)
                        ],
                        colorStops: [0.0, 1.0],
                      ),
                  ]),
                  Center(
                      child: Container(
                          height: 12.53,
                          width: 9.02,
                          child: Image.asset('assets/images/back.png')))
                ],
              ),
            ),
            Text(
              'LiveWallet',
              style: TextStyle(
                color: Color(0xffD7DDE8),
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(width: 64)
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
