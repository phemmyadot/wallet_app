import 'package:flutter/material.dart';

class AuctionCard extends StatefulWidget {
  final String title;
  final String sellerName;
  final int participants;
  final double rating;
  final Image image;
  final Image sellerImage;
  final Image flag;
  final Function onTap;
  const AuctionCard({
    Key key,
    @required this.participants,
    @required this.title,
    @required this.rating,
    @required this.sellerName,
    @required this.sellerImage,
    @required this.image,
    @required this.flag,
    @required this.onTap,
  }) : super(key: key);

  @override
  _AuctionCardState createState() => _AuctionCardState();
}

class _AuctionCardState extends State<AuctionCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => widget.onTap(),
      child: Stack(
        children: [
          Column(
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
              SizedBox(height: 10),
              Text(
                widget.title,
                overflow: TextOverflow.visible,
                textAlign: TextAlign.left,
                style: TextStyle(
                  height: 1,
                  fontSize: 14.0,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 245, 245, 245),
                ),
              ),
              SizedBox(height: 6),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: widget.sellerImage,
                  ),
                  SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.sellerName,
                        overflow: TextOverflow.visible,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          height: 1.2000000476837158,
                          fontSize: 12.0,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 245, 245, 245),
                        ),
                      ),
                      SizedBox(height: 2),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/star.png",
                            color: null,
                            fit: BoxFit.cover,
                            width: 9.0,
                            height: 9.0,
                            colorBlendMode: BlendMode.dstATop,
                          ),
                          SizedBox(width: 4),
                          Text(
                            widget.rating.toString(),
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              height: 1.2000000476837158,
                              fontSize: 12.0,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                          SizedBox(width: 4),
                          widget.flag,
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
