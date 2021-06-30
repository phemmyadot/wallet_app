import 'package:flutter/material.dart';
import 'package:livecom/widgets/carousel.dart';
import 'package:livecom/utils/livecom_icons_icons.dart';

class Summary extends StatefulWidget {
  final Function showInfo;
  const Summary({Key key, this.showInfo}) : super(key: key);

  @override
  _SummaryState createState() => _SummaryState();
}

class _SummaryState extends State<Summary> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(height: 100, child: Carousel()),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: 15),
            Text(
              '2000',
              style: TextStyle(
                color: Color(0xffD7DDE8),
                fontSize: 60,
                fontFamily: 'BebasNeue',
              ),
            ),
            SizedBox(width: 3),
            Container(
              width: 15,
              height: 15,
              child: Image.asset(
                'assets/images/coin.png',
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Available Tokens',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff7889A9),
                  height: 0.8),
            ),
            SizedBox(width: 10),
            GestureDetector(
              onTap: () => widget.showInfo(true),
              child: Icon(
                LivecomIcons.vector__stroke_ask,
                size: 16,
                color: Color(0xff7889A9),
              ),
            )
          ],
        ),
        SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text(
                  'Locked',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Color(0xff7889A9),
                  ),
                ),
                SizedBox(height: 3),
                Text(
                  '600',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff7889A9),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  'Unlocked',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Color(0xff7889A9),
                  ),
                ),
                SizedBox(height: 3),
                Text(
                  '1200',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff7889A9),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  'Free',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Color(0xff7889A9),
                  ),
                ),
                SizedBox(height: 3),
                Text(
                  '200',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff7889A9),
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
