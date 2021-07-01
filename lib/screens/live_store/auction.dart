import 'package:flutter/material.dart';
import 'package:livecom/enum/auction_type.dart';
import 'package:livecom/screens/live_store/auction_card.dart';

class Auction extends StatefulWidget {
  final String type;

  const Auction({
    Key key,
    @required this.type,
  }) : super(key: key);

  @override
  _AuctionState createState() => _AuctionState();
}

class _AuctionState extends State<Auction> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(width: 11),
            Image.asset(
              "assets/images/${widget.type}.png",
              color: null,
              fit: BoxFit.fill,
              width: 15.0,
              height: widget.type == AuctionType.e_commerce ? 15 : 18.11,
              colorBlendMode: BlendMode.dstATop,
            ),
            SizedBox(width: 10.44),
            Text(
              '''Auction High''',
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
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 11),
                    for (int i = 0; i < 3; i++)
                      Container(
                        width: 150.0,
                        height: 210.0,
                        margin: EdgeInsets.only(right: 11),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: AuctionCard(
                          flag: Image.asset(
                            "assets/images/flag.png",
                            color: null,
                            fit: BoxFit.cover,
                            width: 12.0,
                            height: 8.67,
                            colorBlendMode: BlendMode.dstATop,
                          ),
                          sellerImage: Image.asset(
                            "assets/images/seller.png",
                            color: null,
                            fit: BoxFit.cover,
                            width: 30.0,
                            height: 30.0,
                            colorBlendMode: BlendMode.dstATop,
                          ),
                          participants: 300,
                          rating: 4.5,
                          sellerName: 'Seller Name',
                          title: 'Make up Masterclass ',
                          image: Image.asset(
                            "assets/images/auction_image.png",
                            color: null,
                            fit: BoxFit.fill,
                            width: 150.0,
                            height: 150.0,
                            colorBlendMode: BlendMode.dstATop,
                          ),
                        ),
                      )
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
