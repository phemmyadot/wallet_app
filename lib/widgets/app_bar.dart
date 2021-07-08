import 'package:flutter/material.dart';
import 'package:livecom/utils/svg.dart';

class LAppBar extends StatelessWidget {
  final String balance;
  final Image icon;
  final Widget load;
  const LAppBar(
      {Key key, this.balance, this.icon, this.load = const SizedBox()})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(102, 0, 0, 0),
                        offset: Offset(5.0, 5.0),
                        blurRadius: 20.0,
                      ),
                      BoxShadow(
                        color: Color.fromARGB(76, 80, 93, 116),
                        offset: Offset(-7.0, -7.0),
                        blurRadius: 20.0,
                      )
                    ],
                  ),
                  child: InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Stack(
                      children: [
                        SvgWidget(painters: [
                          SvgPathPainter.fill()
                            ..addPath(
                                'M0 20C0 8.9543 8.9543 0 20 0C31.0457 0 40 8.9543 40 20C40 31.0457 31.0457 40 20 40C8.9543 40 0 31.0457 0 20Z')
                            ..setLinearGradient(
                              startX: -16.31578763184293,
                              startY: -8.421051121608452,
                              endX: 33.68420681303728,
                              endY: 43.68420636996503,
                              colors: [
                                Color.fromARGB(255, 80, 93, 116),
                                Color.fromARGB(255, 24, 29, 40)
                              ],
                              colorStops: [0.0, 1.0],
                            ),
                        ]),
                        Center(
                            child: Container(
                                height: 12.53,
                                width: 9.02,
                                child: Image.asset('assets/images/back.png')))
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 17),
                load,
              ],
            ),
            //TODO Text(!_scrollController.hasClients ? '0.0' : _scrollController?.offset.toString()),
            Container(
              height: 46.0,
              padding: EdgeInsets.symmetric(vertical: 2, horizontal: 7),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Color.fromARGB(153, 0, 0, 0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Wallet Balance',
                    overflow: TextOverflow.visible,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      height: 1.3999999364217122,
                      fontSize: 12.0,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 215, 221, 232),
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/coin.png',
                        width: 15,
                        height: 15,
                      ),
                      SizedBox(width: 5),
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(balance,
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              height: 1,
                              fontSize: 16.0,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 215, 221, 232),
                            )),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [icon],
        )
      ],
    );
  }
}
