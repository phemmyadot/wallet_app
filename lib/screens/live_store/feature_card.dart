import 'package:flutter/material.dart';

class FeatureCard extends StatefulWidget {
  final String title;
  final String countdown;
  final String participants;
  final Image image;
  const FeatureCard({
    Key key,
    @required this.title,
    @required this.image,
    @required this.countdown,
    @required this.participants,
  }) : super(key: key);

  @override
  _FeatureCardState createState() => _FeatureCardState();
}

class _FeatureCardState extends State<FeatureCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(5.0),
          child: widget.image,
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
              widget.title,
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
                        child: Image.asset('assets/images/timer_icon.png'),
                      ),
                    ],
                  ),
                  SizedBox(height: 6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 16,
                        height: 13.54,
                        child:
                            Image.asset('assets/images/participants_icon.png'),
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
                    widget.countdown,
                    overflow: TextOverflow.visible,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      height: 0.8333333333333334,
                      fontSize: 12.0,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 215, 221, 232),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    widget.participants,
                    overflow: TextOverflow.visible,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      height: 0.8333333333333334,
                      fontSize: 12.0,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 215, 221, 232),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
