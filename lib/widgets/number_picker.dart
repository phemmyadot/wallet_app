import 'package:flutter/material.dart';

class NumberPicker extends StatelessWidget {
  final int quantity;
  final Function onAdd;
  final Function onSubstract;
  const NumberPicker({Key key, this.quantity, this.onAdd, this.onSubstract})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          onTap: () => onSubstract(),
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color(0xff181E28),
            ),
            child: Center(
              child: Image.asset(
                'assets/images/minus.png',
                width: 11.11,
                height: 2.22,
              ),
            ),
          ),
        ),
        Container(
          width: 69.87,
          child: Center(
            child: Text(
              quantity.toString(),
              overflow: TextOverflow.visible,
              textAlign: TextAlign.left,
              style: TextStyle(
                height: 1.125,
                fontSize: 20.0,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                color: Color(0xffd7dde8),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () => onAdd(),
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color(0xff181E28),
            ),
            child: Center(
              child: Image.asset(
                'assets/images/add.png',
                width: 11.11,
                height: 11.11,
              ),
            ),
          ),
        )
      ],
    );
  }
}
