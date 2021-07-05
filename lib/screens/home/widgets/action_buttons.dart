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
      // height: 167,
      child: Column(
        children: [
          Column(
            children: [
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/button1.png'),
                    ),
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
                      ),
                    ],
                    borderRadius: BorderRadius.circular(100)),
                height: 44,
                margin: EdgeInsets.symmetric(horizontal: 40),
                child: Center(
                  child: Text(
                    'RELOAD LIVEWALLET',
                    style: TextStyle(fontSize: 16, color: Color(0xffD7DDE8), fontWeight: FontWeight.w600, height: 1),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              'assets/images/button2.png',
                            ),
                            fit: BoxFit.cover),
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
                          ),
                        ],
                        borderRadius: BorderRadius.circular(100)),
                    height: 44,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/withdraw.png',
                          fit: BoxFit.contain,
                          width: 16,
                          height: 16,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'WITHDRAW',
                          style:
                              TextStyle(fontSize: 16, color: Color(0xffD7DDE8), fontWeight: FontWeight.w600, height: 1),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/images/button2.png'), fit: BoxFit.cover),
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
                          ),
                        ],
                        borderRadius: BorderRadius.circular(100)),
                    height: 44,
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
                          style:
                              TextStyle(fontSize: 16, color: Color(0xffD7DDE8), fontWeight: FontWeight.w600, height: 1),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
