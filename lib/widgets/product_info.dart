import 'package:flutter/material.dart';

class ProductInfo extends StatelessWidget {
  final String productName;
  final String specifications;
  final String description;
  const ProductInfo({Key key, this.productName, this.specifications, this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 246,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Product Name',
            overflow: TextOverflow.visible,
            textAlign: TextAlign.left,
            style: TextStyle(
              height: 1.125,
              fontSize: 24.0,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w400,
              color: Color(0xffd7dde8),
            ),
          ),
          SizedBox(height: 4),
          Text(
            productName,
            overflow: TextOverflow.visible,
            textAlign: TextAlign.left,
            style: TextStyle(
              height: 1.125,
              fontSize: 16.0,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w400,
              color: Color(0xff7889a9),
            ),
          ),
          SizedBox(height: 18),
          Text(
            'Specifications',
            overflow: TextOverflow.visible,
            textAlign: TextAlign.left,
            style: TextStyle(
              height: 1.125,
              fontSize: 16.0,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
              color: Color(0xffd7dde8),
            ),
          ),
          SizedBox(height: 5),
          Wrap(
            children: [
              Text(
                specifications,
                overflow: TextOverflow.visible,
                textAlign: TextAlign.left,
                style: TextStyle(
                  height: 1.125,
                  fontSize: 14.0,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 215, 221, 232),
                ),
              ),
            ],
          ),
          SizedBox(height: 18),
          Text(
            'Descriptions',
            overflow: TextOverflow.visible,
            textAlign: TextAlign.left,
            style: TextStyle(
              height: 1.125,
              fontSize: 16.0,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 215, 221, 232),
            ),
          ),
          SizedBox(height: 3),
          Wrap(
            children: [
              Text(
                description,
                overflow: TextOverflow.visible,
                textAlign: TextAlign.left,
                style: TextStyle(
                  height: 1.125,
                  fontSize: 14.0,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 215, 221, 232),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
