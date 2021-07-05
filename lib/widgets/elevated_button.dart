import 'package:flutter/material.dart';

class LCElevatedButton extends StatelessWidget {
  final String background;
  final String text;
  const LCElevatedButton({
    Key key,
    @required this.background,
    @required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 117.0,
      height: 38.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0),
          boxShadow: [
            BoxShadow(
              color: Color(0xff000000).withOpacity(0.8),
              offset: Offset(5.0, 5.0),
              blurRadius: 20.0,
            ),
            BoxShadow(
              color: Color(0xff505D75).withOpacity(0.4),
              offset: Offset(-7.0, -7.0),
              blurRadius: 20.0,
            )
          ],
          image: DecorationImage(image: AssetImage(background))),
      child: Center(
        child: Text(
          text,
          overflow: TextOverflow.visible,
          textAlign: TextAlign.left,
          style: TextStyle(
            height: 1.125,
            fontSize: 14.0,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
            color: Color(0xffd7dde8),
          ),
        ),
      ),
    );
  }
}
