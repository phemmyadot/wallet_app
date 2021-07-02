import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:livecom/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays(
      [SystemUiOverlay.top, SystemUiOverlay.bottom]);
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  await runZonedGuarded(() async {
    runApp(MyApp());
  }, (Object error, StackTrace stackTrace) async {
    print(error.toString());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Livecom App',
      theme: ThemeData(fontFamily: 'Montserrat'),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
