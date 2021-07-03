import 'package:flutter/material.dart';

class AuctionCard extends StatefulWidget {
  final String title;
  final Image image;
  final Function onTap;
  final Image icon;
  const AuctionCard({
    Key key,
    @required this.title,
    @required this.image,
    @required this.onTap,
    @required this.icon,
  }) : super(key: key);

  @override
  _AuctionCardState createState() => _AuctionCardState();
}

class _AuctionCardState extends State<AuctionCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => widget.onTap(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: 150.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xff000000).withOpacity(0.7),
                              Color(0xff000000).withOpacity(0),
                            ],
                            stops: [0, 0.2267],
                          ),
                        ),
                        child: widget.image,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 8,
                    right: 8.07,
                    top: 7,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/timer_icon.png",
                              color: null,
                              fit: BoxFit.cover,
                              width: 12.0,
                              height: 14,
                              colorBlendMode: BlendMode.dstATop,
                            ),
                            SizedBox(width: 8),
                            Text(
                              '''00:71:25''',
                              overflow: TextOverflow.visible,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                height: 1.2000000476837158,
                                fontSize: 12.0,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                                color: Color.fromARGB(255, 245, 245, 245),
                              ),
                            )
                          ],
                        ),
                        widget.icon,
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              Text(
                widget.title,
                overflow: TextOverflow.visible,
                textAlign: TextAlign.left,
                style: TextStyle(
                  height: 1.2,
                  fontSize: 14.0,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 245, 245, 245),
                ),
              ),
              SizedBox(height: 6),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/coin.png",
                color: null,
                fit: BoxFit.cover,
                width: 15.0,
                height: 15.0,
                colorBlendMode: BlendMode.dstATop,
              ),
              SizedBox(width: 5),
              Text(
                '''500''',
                overflow: TextOverflow.visible,
                textAlign: TextAlign.left,
                style: TextStyle(
                  height: 1.2000000476837158,
                  fontSize: 14.0,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                  color: Color(0xffD7DDE8),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
