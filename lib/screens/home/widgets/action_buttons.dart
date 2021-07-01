import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class ActionButtons extends StatefulWidget {
  const ActionButtons({Key key}) : super(key: key);

  @override
  _ActionButtonsState createState() => _ActionButtonsState();
}

class _ActionButtonsState extends State<ActionButtons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 167,
      child: Stack(
        children: [
          Container(
            height: 96,
            child: Stack(
              children: [
                Container(child: Image.asset('assets/images/button.png')),
                Positioned(
                  top: 0,
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Center(
                    child: Text(
                      'RELOAD LIVEWALLET',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xffD7DDE8),
                          fontWeight: FontWeight.w600,
                          height: 1),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 96,
                    child: Stack(
                      children: [
                        Image.asset('assets/images/button_5.png'),
                        Positioned(
                          top: 0,
                          bottom: -4,
                          right: 0,
                          left: 15,
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 16,
                                  height: 16,
                                  child: Image.asset(
                                    'assets/images/withdraw.png',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                SizedBox(width: 8),
                                Text(
                                  'WITHDRAW',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xffD7DDE8),
                                      fontWeight: FontWeight.w600,
                                      height: 1),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Expanded(
                //     child: Container(
                //   // width: 162.0,
                //   height: 44.0,
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(100.0),
                //     boxShadow: kIsWeb
                //         ? []
                //         : [
                //             BoxShadow(
                //               color: Color.fromARGB(102, 0, 0, 0),
                //               offset: Offset(5.0, 5.0),
                //               blurRadius: 20.0,
                //             ),
                //             BoxShadow(
                //               color: Color.fromARGB(51, 80, 93, 116),
                //               offset: Offset(-7.0, -7.0),
                //               blurRadius: 20.0,
                //             )
                //           ],
                //     gradient: LinearGradient(
                //       begin:
                //           Alignment(-1.3760684456219003, -1.8947368217784328),
                //       end: Alignment(0.7777777642210721, 1.3684211900681071),
                //       stops: [0.0, 1.0],
                //       colors: [
                //         Color.fromARGB(255, 80, 93, 116),
                //         Color.fromARGB(255, 27, 32, 43)
                //       ],
                //     ),
                //   ),
                // )
                Container(
                  height: 96,
                  child: Stack(
                    children: [
                      Image.asset('assets/images/button_6.png'),
                      Positioned(
                        top: 0,
                        bottom: -4,
                        right: 15,
                        left: 0,
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 16,
                                height: 16,
                                child: Image.asset(
                                  'assets/images/transfer.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                              SizedBox(width: 8),
                              Text(
                                'TRANSFER',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xffD7DDE8),
                                    fontWeight: FontWeight.w600,
                                    height: 1),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
