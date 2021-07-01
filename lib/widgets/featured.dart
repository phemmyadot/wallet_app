import 'package:flutter/material.dart';
import 'package:livecom/utils/transform.dart';

class Featured extends StatelessWidget {
  const Featured({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
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
                      Stack(
                        children: [
                          Container(
                            width: 246.0,
                            height: 175.0,
                            margin: EdgeInsets.only(right: i == 2 ? 0 : 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5.0),
                              child: Image.asset(
                                "assets/images/featured.png",
                                color: null,
                                fit: BoxFit.fill,
                                width: 246.0,
                                height: 175.0,
                                colorBlendMode: BlendMode.dstATop,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 10.0,
                            top: null,
                            right: null,
                            bottom: 5.0,
                            width: 226.0,
                            height: null,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '''This is the title of the Auction High Plus''',
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  height: 1.1239999532699585,
                                  fontSize: 16.0,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(255, 245, 245, 245),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 12.0,
                            top: 12.0,
                            right: null,
                            bottom: 5.0,
                            width: null,
                            height: null,
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 14,
                                          width: 12,
                                          child: Image.asset(
                                              'assets/images/timer_icon.png'),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 6),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 16,
                                          height: 13.54,
                                          child: Image.asset(
                                              'assets/images/participants_icon.png'),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(width: 6),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 3),
                                    Text(
                                      '''00:71:25''',
                                      overflow: TextOverflow.visible,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        height: 0.8333333333333334,
                                        fontSize: 12.0,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w400,
                                        color:
                                            Color.fromARGB(255, 215, 221, 232),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      '''30/100''',
                                      overflow: TextOverflow.visible,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        height: 0.8333333333333334,
                                        fontSize: 12.0,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w400,
                                        color:
                                            Color.fromARGB(255, 215, 221, 232),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    SizedBox(width: 11),
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
