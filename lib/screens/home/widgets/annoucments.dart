import 'package:flutter/material.dart';

class Annoucement extends StatelessWidget {
  const Annoucement({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 11),
            Container(
              width: 155,
              height: 85,
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      image: AssetImage("assets/images/annoucement_1.png"),
                      fit: BoxFit.cover)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'announcement one'.toUpperCase(),
                    style: TextStyle(
                        color: Color(0xff151A24),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        letterSpacing: 1,
                        fontFamily: 'BebasNeue'),
                  ),
                ],
              ),
            ),
            SizedBox(width: 10),
            Container(
              width: 155,
              height: 85,
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      image: AssetImage("assets/images/annoucement_2.png"),
                      fit: BoxFit.cover)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'announcement two'.toUpperCase(),
                    style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        letterSpacing: 1,
                        fontFamily: 'BebasNeue'),
                  ),
                ],
              ),
            ),
            SizedBox(width: 10),
            Container(
              width: 155,
              height: 85,
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      image: AssetImage("assets/images/annoucement_1.png"),
                      fit: BoxFit.cover)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'announcement three'.toUpperCase(),
                    style: TextStyle(
                        color: Color(0xff151A24),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        letterSpacing: 1,
                        fontFamily: 'BebasNeue'),
                  ),
                ],
              ),
            ),
            SizedBox(width: 11),
          ],
        ),
      ),
    );
  }
}
