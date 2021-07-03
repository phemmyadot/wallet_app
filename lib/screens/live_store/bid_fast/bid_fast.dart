import 'package:flutter/material.dart';
import 'package:livecom/screens/live_store/marketing.dart';
import 'package:livecom/utils/app_colors.dart';
import 'package:livecom/widgets/elevated_button.dart';

class BidFast extends StatefulWidget {
  const BidFast({Key key}) : super(key: key);

  @override
  _BidFastState createState() => _BidFastState();
}

class _BidFastState extends State<BidFast> {
  ScrollController _scrollController;
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff181E28),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                children: [
                  AuctionMarketing(
                    balance: '''500,000''',
                    icon: Image.asset(
                      'assets/images/bid_fast.png',
                      width: 19,
                      height: 30.18,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      top: 10.0,
                      bottom: 70,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 246,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '''Product Name''',
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  height: 1.125,
                                  fontSize: 24.0,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffd7dde8),
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                '''Lorem ipsum dolor sit amet,''',
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  height: 1.125,
                                  fontSize: 16.0,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff7889a9),
                                ),
                              ),
                              SizedBox(height: 18),
                              Text(
                                '''Specifications''',
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  height: 1.125,
                                  fontSize: 16.0,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xffd7dde8),
                                ),
                              ),
                              SizedBox(height: 5),
                              Wrap(
                                children: [
                                  Text(
                                    '''Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed''',
                                    overflow: TextOverflow.visible,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      height: 1.125,
                                      fontSize: 14.0,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 215, 221, 232),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 18),
                              Text(
                                '''Descriptions''',
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  height: 1.125,
                                  fontSize: 16.0,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(255, 215, 221, 232),
                                ),
                              ),
                              SizedBox(height: 3),
                              Wrap(
                                children: [
                                  Text(
                                    '''Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed''',
                                    overflow: TextOverflow.visible,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      height: 1.125,
                                      fontSize: 14.0,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 215, 221, 232),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Image.asset(
                                    "assets/images/share.png",
                                    color: null,
                                    fit: BoxFit.fill,
                                    width: 24.0,
                                    height: 26.0,
                                    colorBlendMode: BlendMode.dstATop,
                                  ),
                                  SizedBox(height: 10.17),
                                  Text(
                                    '''Share''',
                                    overflow: TextOverflow.visible,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      height: 1.125,
                                      fontSize: 12.0,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xffd7dde8),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 33.83),
                              Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0xff000000)
                                              .withOpacity(0.4),
                                          offset: Offset(3.0, 3.0),
                                          blurRadius: 10.0,
                                        ),
                                        BoxShadow(
                                          color: Color(0xff505D75)
                                              .withOpacity(0.4),
                                          offset: Offset(-2.0, -2.0),
                                          blurRadius: 5.0,
                                        )
                                      ],
                                    ),
                                    child: Image.asset(
                                      "assets/images/notify_me.png",
                                      color: null,
                                      fit: BoxFit.fill,
                                      width: 21.98,
                                      height: 21.98,
                                      colorBlendMode: BlendMode.dstATop,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    '''Notify Me''',
                                    overflow: TextOverflow.visible,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      height: 1.125,
                                      fontSize: 12.0,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xffd7dde8),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 169,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(0, 0, 0, 0).withOpacity(0.25),
                  offset: Offset(0, -5.0),
                  blurRadius: 20.0,
                ),
              ],
            ),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color(0xffFCCF37),
                        Color(0xffFCCF37).withOpacity(0.15),
                      ],
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: null,
                  right: 0,
                  bottom: 0,
                  height: 168,
                  child: Container(
                    padding: EdgeInsets.only(top: 15),
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(0, 0, 0, 0).withOpacity(0.25),
                          offset: Offset(0, -5.0),
                          blurRadius: 20.0,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '''RRP''',
                                    overflow: TextOverflow.visible,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      height: 1.125,
                                      fontSize: 12.0,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xffd7dde8),
                                    ),
                                  ),
                                  SizedBox(height: 2.86),
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/coin.png',
                                        width: 15,
                                        height: 15,
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        '''10,000''',
                                        overflow: TextOverflow.visible,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          height: 1.125,
                                          fontSize: 16.0,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xffd7dde8),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    '''Countdown Time''',
                                    overflow: TextOverflow.visible,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      height: 1.125,
                                      fontSize: 12.0,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xffd7dde8),
                                    ),
                                  ),
                                  SizedBox(height: 2.76),
                                  Text(
                                    '''48:10:00''',
                                    overflow: TextOverflow.visible,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      height: 1.125,
                                      fontSize: 16.0,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xffd7dde8),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 25.86),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '''Activation Price''',
                                    overflow: TextOverflow.visible,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      height: 1.125,
                                      fontSize: 12.0,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xffd7dde8),
                                    ),
                                  ),
                                  SizedBox(height: 2.86),
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/coin.png',
                                        width: 15,
                                        height: 15,
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        '''3,000''',
                                        overflow: TextOverflow.visible,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          height: 1.125,
                                          fontSize: 16.0,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xffd7dde8),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              InkWell(
                                child: LCElevatedButton(
                                  text: '''SHARE NOW''',
                                  startColor: Color(0xffFCCF37),
                                  endColor: Color(0xff965100),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 9.68),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 20.0),
                              child: Text(
                                '''300 people eyeing this''',
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  height: 1.125,
                                  fontSize: 12.0,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff7889a9),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
