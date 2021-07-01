import 'package:flutter/material.dart';

class Annoucement extends StatelessWidget {
  const Annoucement({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
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
                      width: 155,
                      height: 85,
                      margin: EdgeInsets.only(right: i == 2 ? 0 : 10),
                      padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/annoucement_${i.isEven ? 1 : 2}.png"),
                              fit: BoxFit.cover)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'announcement one'.toUpperCase(),
                            style: TextStyle(
                              color: i.isOdd
                                  ? Color(0xffffffff)
                                  : Color(0xff151A24),
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              letterSpacing: 1,
                              fontFamily: 'BebasNeue',
                            ),
                          ),
                        ],
                      ),
                    ),
                  SizedBox(width: 11),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
