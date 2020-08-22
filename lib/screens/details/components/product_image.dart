import 'package:flutter/material.dart';

import '../../../constants.dart';

class ProductPoster extends StatelessWidget {
  const ProductPoster({
    Key key,
    // @required this.size,
    this.image,
  }) : super(key: key);

  // final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
      // the height of this container is 80% of our width
      // height: size.width * 0.8,
      height: 180,

      child: Stack(
        // alignment: Alignment.bottomCenter,
        alignment: Alignment.bottomCenter,

        children: <Widget>[
          Container(
            // height: size.width * 0.7,
            // width: size.width * 0.7,
            // PF
            height: 250,
            width: 250,

            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
          Image.asset(
            image,
            // height: size.width * 0.75,
            // width: size.width * 0.75,

            height: 250,
            width: 250,
            // fit: BoxFit.cover,
            fit: BoxFit.fitHeight,
          ),
        ],
      ),
    );
  }
}
