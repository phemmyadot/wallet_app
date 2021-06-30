import 'package:flutter/material.dart';

class History extends StatelessWidget {
  const History({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 23, horizontal: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0XFF181E28),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Transaction Hostory',
            style: TextStyle(
                color: Color(0xffD7DDE8),
                fontWeight: FontWeight.w600,
                fontSize: 16),
          ),
          Column(
            children: [
              for (int i = 0; i < 4; i++)
                Column(
                  children: [
                    SizedBox(height: 15),
                    Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Transfer Out',
                                  style: TextStyle(
                                      color: Color(0xffD7DDE8),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  '12 May 2021 4:00pm',
                                  style: TextStyle(
                                      color: Color(0xffD7DDE8),
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 15,
                                height: 15,
                                child: Image.asset(
                                  'assets/images/coin.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                              SizedBox(width: 9),
                              Text(
                                '5,000',
                                style: TextStyle(
                                    color: Color(0xffD7DDE8),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16),
                              ),
                              SizedBox(width: 17),
                              Container(
                                width: 7,
                                height: 10,
                                child: Image.asset(
                                  'assets/images/forward.png',
                                  fit: BoxFit.contain,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      height: 0.2,
                      color: Color(0xffD7DDE8),
                    )
                  ],
                ),
            ],
          ),
        ],
      ),
    );
  }
}
