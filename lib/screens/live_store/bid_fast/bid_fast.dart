import 'package:flutter/material.dart';
import 'package:livecom/screens/live_store/marketing.dart';
import 'package:livecom/utils/app_colors.dart';
import 'package:livecom/utils/string_utils.dart';
import 'package:livecom/widgets/count_down.dart';
import 'package:livecom/widgets/elevated_button.dart';
import 'package:livecom/widgets/product_info.dart';
import 'package:share_plus/share_plus.dart';

class BidFast extends StatefulWidget {
  const BidFast({Key key}) : super(key: key);

  @override
  _BidFastState createState() => _BidFastState();
}

class BidFastType {
  static const normal = 'normal';
  static const shared = 'shared';
  static const activated = 'activated';
  static const link = 'link';
}

class _BidFastState extends State<BidFast> with TickerProviderStateMixin {
  ScrollController _scrollController;
  int quantity = 1;
  double currentPrice = 10000;
  String type = BidFastType.normal;
  AnimationController _controller;
  int _start = 12000;
  CountDown countdown;
  bool isNotifyMeEnabled = false;

  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: Duration(seconds: _start));
    _controller.forward().then((value) {
      setState(() => type = BidFastType.activated);
    });
    countdown = CountDown(
      animation: StepTween(
        begin: _start,
        end: 0,
      ).animate(_controller),
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _share() {
    Share.share('Product');
    switch (type) {
      case BidFastType.normal:
        currentPrice -= 256.66;
        setState(() => type = BidFastType.shared);
        break;
      case BidFastType.shared:
        currentPrice = 3000;
        setState(() {});
        _controller.dispose();
        final remainder = 5;
        _controller = AnimationController(vsync: this, duration: Duration(seconds: remainder));
        _controller.forward().then((value) {
          setState(() => type = BidFastType.activated);
          _controller.dispose();
          final start = 5;
          _controller = AnimationController(vsync: this, duration: Duration(seconds: start));
          _controller.forward().then((value) {
            setState(() => type = BidFastType.link);
          });
          countdown = CountDown(
            animation: StepTween(
              begin: remainder,
              end: 0,
            ).animate(_controller),
          );
        });
        countdown = CountDown(
          animation: StepTween(
            begin: remainder,
            end: 0,
          ).animate(_controller),
        );
        break;
      case BidFastType.activated:
        break;
      case BidFastType.link:
        break;
      default:
    }
  }

  void _notifyMe() => setState(() => isNotifyMeEnabled = !isNotifyMeEnabled);
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
                        ProductInfo(
                          productName: '''Lorem ipsum dolor sit amet,''',
                          specifications: '''Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed''',
                          description: '''Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed''',
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
                              GestureDetector(
                                onTap: () => _notifyMe(),
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(boxShadow: [
                                        BoxShadow(
                                          color: Color(0xff000000).withOpacity(0.4),
                                          offset: Offset(3.0, 3.0),
                                          blurRadius: 10.0,
                                        ),
                                        BoxShadow(
                                          color: Color(0xff505D75).withOpacity(0.4),
                                          offset: Offset(-2.0, -2.0),
                                          blurRadius: 5.0,
                                        )
                                      ], borderRadius: BorderRadius.circular(21.98)),
                                      child: Image.asset(
                                        isNotifyMeEnabled
                                            ? "assets/images/notify_me.png"
                                            : "assets/images/notify_me_uncheck.png",
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    type == BidFastType.normal
                                        ? '''RRP'''
                                        : type == BidFastType.shared
                                            ? '''Current Price'''
                                            : type == BidFastType.activated
                                                ? '''Activated Price'''
                                                : '''Activated Price''',
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
                                        StringUtils.addComma(currentPrice),
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
                                  type != BidFastType.normal
                                      ? Column(
                                          children: [
                                            SizedBox(height: 5),
                                            Stack(
                                              children: [
                                                Text('RRP: 10,000LT',
                                                    overflow: TextOverflow.visible,
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                      height: 1,
                                                      fontSize: 12.0,
                                                      fontFamily: 'Montserrat',
                                                      fontWeight: FontWeight.w400,
                                                      color: Color(0xffd7dde8),
                                                    )),
                                                Positioned(
                                                  left: 0,
                                                  right: 0,
                                                  top: 0,
                                                  bottom: 0,
                                                  child: Center(
                                                    child: Container(
                                                      color: Color(0xffd7dde8),
                                                      height: 1,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        )
                                      : SizedBox(),
                                  SizedBox(height: 10),
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
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    type == BidFastType.activated || type == BidFastType.link
                                        ? '''Game Starts In'''
                                        : '''Countdown Time''',
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
                                  countdown,
                                  SizedBox(height: 25.86),
                                  InkWell(
                                    onTap: () => _share(),
                                    child: LCElevatedButton(
                                      text: type == BidFastType.link ? '''PLAY NOW''' : '''SHARE NOW''',
                                      startColor: Color(0xffFCCF37),
                                      endColor: Color(0xff965100),
                                    ),
                                  ),
                                  SizedBox(height: 9.68),
                                  Text(
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
