import 'package:flutter/material.dart';

class LCElevatedButton extends StatefulWidget {
  final startColor;
  final endColor;
  final text;
  const LCElevatedButton({
    Key key,
    @required this.endColor,
    @required this.startColor,
    @required this.text,
  }) : super(key: key);

  @override
  _LCElevatedButtonState createState() => _LCElevatedButtonState();
}

class _LCElevatedButtonState extends State<LCElevatedButton> {
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
        gradient: LinearGradient(
          begin: Alignment(-1.042735077848726, -1.263157867627494),
          end: Alignment(0.8119657413752752, 1.6842103928068268),
          stops: [0.0, 1.0],
          colors: [widget.startColor, widget.endColor],
        ),
      ),
      child: Center(
        child: Text(
          widget.text,
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
