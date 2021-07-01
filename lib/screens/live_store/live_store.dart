import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:livecom/enum/auction_type.dart';
import 'package:livecom/screens/live_store/auction_preview.dart';
import 'package:livecom/widgets/annoucments.dart';
import 'package:livecom/widgets/marketing.dart';
import 'package:livecom/screens/live_store/featured.dart';

class LiveStore extends StatefulWidget {
  const LiveStore({Key key}) : super(key: key);

  @override
  _LiveStoreState createState() => _LiveStoreState();
}

class _LiveStoreState extends State<LiveStore> {
  ScrollController _scrollController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff181E28),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(0, 0, 0, 0).withOpacity(0.25),
                    offset: Offset(0, 4.0),
                    blurRadius: 4.0,
                  ),
                ],
              ),
              child: Header(),
            ),
            SizedBox(height: 15),
            Annoucement(),
            SizedBox(height: 20),
            Featured(),
            SizedBox(height: 20),
            AuctionPreview(type: AuctionType.high_auction),
            SizedBox(height: 20),
            AuctionPreview(type: AuctionType.low_auction),
            SizedBox(height: 20),
            AuctionPreview(type: AuctionType.e_commerce),
            SizedBox(height: 28.36),
          ],
        ),
      ),
    );
  }
}
