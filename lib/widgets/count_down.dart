import 'package:flutter/material.dart';

class CountDown extends AnimatedWidget {
  CountDown({Key key, this.animation}) : super(key: key, listenable: animation);
  final Animation<int> animation;

  @override
  build(BuildContext context) {
    Duration clockTimer = Duration(seconds: animation.value);
    String timerText =
        '${(clockTimer.inHours.remainder(60)).toString().padLeft(2, '0')}:${clockTimer.inMinutes.remainder(60).toString().padLeft(2, '0')}:${(clockTimer.inSeconds.remainder(60)).toString().padLeft(2, '0')}';

    return Text(
      "$timerText",
      style: TextStyle(
        height: 1.125,
        fontSize: 16.0,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w600,
        color: Color(0xffd7dde8),
      ),
    );
  }
}
