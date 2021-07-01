import 'package:flutter/material.dart';
import 'package:livecom/screens/live_store/featured/feature_card.dart';
import 'package:livecom/utils/transform.dart';

class Featured extends StatelessWidget {
  const Featured({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(width: 11),
            Text(
              '''Featured''',
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
                        width: 246.0,
                        height: 175.0,
                        margin: EdgeInsets.only(right: 11),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: FeatureCard(
                          countdown: '''00:71:25''',
                          participants: '''30/100''',
                          title:
                              '''This is the title of the Auction High Plus''',
                          image: Image.asset(
                            "assets/images/featured.png",
                            color: null,
                            fit: BoxFit.fill,
                            width: 246.0,
                            height: 175.0,
                            colorBlendMode: BlendMode.dstATop,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
