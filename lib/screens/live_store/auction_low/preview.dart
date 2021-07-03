import 'package:flutter/material.dart';
import 'package:livecom/screens/live_store/auction_card.dart';
import 'package:livecom/screens/live_store/auction_low/auction_low.dart';

class AuctionLowPreview extends StatefulWidget {
  const AuctionLowPreview({
    Key key,
  }) : super(key: key);

  @override
  _AuctionLowPreviewState createState() => _AuctionLowPreviewState();
}

class _AuctionLowPreviewState extends State<AuctionLowPreview> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(width: 11),
            Image.asset(
              "assets/images/auction_low.png",
              color: null,
              fit: BoxFit.fill,
              width: 15.0,
              height: 18.11,
              colorBlendMode: BlendMode.dstATop,
            ),
            SizedBox(width: 10.44),
            Text(
              '''Auction Low''',
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
                child: IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 11),
                      for (int i = 0; i < 3; i++)
                        Container(
                          width: 150.0,
                          margin: EdgeInsets.only(right: 11),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: AuctionCard(
                            onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) => AuctionLow(),
                              ),
                            ),
                            icon: Image.asset(
                              "assets/images/auction_low.png",
                              color: null,
                              fit: BoxFit.cover,
                              width: 12.42,
                              height: 15,
                              colorBlendMode: BlendMode.dstATop,
                            ),
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
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
