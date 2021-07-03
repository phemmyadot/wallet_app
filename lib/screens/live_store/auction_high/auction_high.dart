import 'package:flutter/material.dart';
import 'package:livecom/screens/live_store/marketing.dart';
import 'package:livecom/utils/app_colors.dart';
import 'package:livecom/widgets/elevated_button.dart';
import 'package:livecom/widgets/number_picker.dart';

class AuctionHigh extends StatefulWidget {
  const AuctionHigh({Key key}) : super(key: key);

  @override
  _AuctionHighState createState() => _AuctionHighState();
}

class _AuctionHighState extends State<AuctionHigh> {
  ScrollController _scrollController;
  int quantity = 200;

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
                      'assets/images/auction_high.png',
                      width: 15,
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
                                  Image.asset(
                                    "assets/images/game_info.png",
                                    color: null,
                                    fit: BoxFit.fill,
                                    width: 13.28,
                                    height: 21.98,
                                    colorBlendMode: BlendMode.dstATop,
                                  ),
                                  SizedBox(height: 5.33),
                                  Text(
                                    '''Wishlist''',
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
                        Color(0xffFF4141),
                        Color(0xffFF4141).withOpacity(0.15),
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
                                    '''Current Bid''',
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
                                        '''500''',
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '''Min. Token''',
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
                                        '''200''',
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
                                    '''Ends In''',
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
                                    '''20:39:00''',
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
                        SizedBox(height: 5),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/seller.png',
                                height: 15,
                                width: 15,
                              ),
                              SizedBox(width: 5),
                              Text(
                                '''UserName''',
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  height: 1.125,
                                  fontSize: 12.0,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffd7dde8),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 9),
                        Padding(
                          padding: EdgeInsets.only(left: 15.29, right: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              NumberPicker(
                                onSubstract: () => setState(
                                    () => quantity > 1 ? quantity-- : 1),
                                onAdd: () => setState(() => quantity++),
                                quantity: quantity,
                              ),
                              LCElevatedButton(
                                endColor: Color(0xff7C0000),
                                startColor: Color(0xffFF4141),
                                text: '''BID NOW''',
                              )
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
