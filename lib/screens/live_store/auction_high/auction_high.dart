import 'package:flutter/material.dart';
import 'package:livecom/screens/live_store/marketing.dart';
import 'package:livecom/utils/app_colors.dart';
import 'package:livecom/utils/game_info.dart';
import 'package:livecom/widgets/app_bar.dart';
import 'package:livecom/widgets/elevated_button.dart';
import 'package:livecom/widgets/number_picker.dart';
import 'package:livecom/widgets/product_info.dart';

class AuctionHigh extends StatefulWidget {
  const AuctionHigh({Key key}) : super(key: key);

  @override
  _AuctionHighState createState() => _AuctionHighState();
}

class _AuctionHighState extends State<AuctionHigh> {
  ScrollController _scrollController = ScrollController(initialScrollOffset: 0.0);
  int quantity = 200;
  int minToken = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff181E28),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                SingleChildScrollView(
                  controller: _scrollController,
                  child: Column(
                    children: [
                      AuctionMarketing(),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          top: 10.0,
                          bottom: 70,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ProductInfo(
                              productName: 'Lorem ipsum dolor sit amet,',
                              specifications: 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed',
                              description: 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed',
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
                                        'Share',
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
                                  GestureDetector(
                                    onTap: () => GameInfo.getGameInfo(context, '''This is Game Mode description......
This is Game Mode description......
This is Game Mode description......
This is Game Mode description......
This is Game Mode description......
This is Game Mode description......
This is Game Mode description......
This is Game Mode description......
This is Game Mode description......'''),
                                    child: Column(
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
                                          'Game Info',
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
                Positioned(
                  left: 24.0,
                  top: 56.0,
                  right: 23.64,
                  child: LAppBar(
                    balance: '500,000',
                    icon: Image.asset(
                      'assets/images/auction_high.png',
                      width: 25,
                      height: 30.18,
                    ),
                  ),
                )
              ],
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Current Bid',
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
                                        '500',
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
                                  SizedBox(height: 1.74),
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/seller.png',
                                        height: 15,
                                        width: 15,
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        'UserName',
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
                                    ],
                                  ),
                                  SizedBox(height: 14),
                                  NumberPicker(
                                    onSubstract: () => setState(() => quantity > minToken ? quantity-- : minToken),
                                    onAdd: () => setState(() => quantity++),
                                    quantity: quantity,
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Min. Token',
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
                                        '200',
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
                                    'Ends In',
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
                                    '20:39:00',
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
                                  SizedBox(height: 25.86),
                                  LCElevatedButton(
                                    background: 'assets/images/auction_high_btn.png',
                                    text: 'BID NOW',
                                  ),
                                  SizedBox(height: 9.68),
                                  Text(
                                    '300 people eyeing this',
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
                                ],
                              ),
                            ],
                          ),
                        ),
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
