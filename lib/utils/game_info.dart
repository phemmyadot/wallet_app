import 'package:flutter/material.dart';

class GameInfo {
  static void getGameInfo(BuildContext context, String gameInfo) {
    final dialogContent = AlertDialog(
        actionsPadding: EdgeInsets.all(0),
        contentPadding: EdgeInsets.all(0),
        insetPadding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.4, bottom: MediaQuery.of(context).size.height * 0.2),
        backgroundColor: Colors.black.withOpacity(0.8),
        content: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.1, horizontal: 17.31),
          child: Text(
            gameInfo,
            style: TextStyle(
              height: 1.5,
              fontSize: 12.0,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w400,
              color: Color(0xffd7dde8),
            ),
          ),
        )));
    showDialog(context: context, builder: (BuildContext context) => dialogContent);
  }
}
