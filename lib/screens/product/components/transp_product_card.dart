import 'package:flutter/material.dart';
import 'package:anims/models/product.dart';

import 'package:anims/constants.dart';

class TranspProductCard extends StatelessWidget {
  const TranspProductCard({
    Key key,
    this.itemIndex,
    this.product,
    this.press,
  }) : super(key: key);

  final int itemIndex;
  final Product product;
  final Function press;

  @override
  Widget build(BuildContext context) {
    // It  will provide us total height and width of our screen

    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      // color: Colors.blueAccent,
      height: 160,
      width: 300,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          // Those are our background
          Container(
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              color: itemIndex.isEven ? kBlueColor : kSecondaryColor,
              boxShadow: [kDefaultShadow],
            ),
            child: Container(
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22),
              ),
            ),
          ),
          // our product image
          Positioned(
            top: 5,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: 200,
              // image is square but we add extra 20 + 20 padding thats why width is 200
              //width: 200,
              width: 200,
              child: Image.asset(
                product.image,
                fit: BoxFit.cover,
              ),
              /*****
            child: Hero(
              tag: '${product.id}',
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                height: 200,
                // image is square but we add extra 20 + 20 padding thats why width is 200
                //width: 200,
                width: 200,
                child: Image.asset(
                  product.image,
                  fit: BoxFit.cover,
                ),
              ),
                 *****/
            ),
          ),
          // Product title and price
          Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox(
              height: 180,
              // our image take 200 width, thats why we set out total width - 200
              width: 250,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    // padding: const EdgeInsets.symmetric(
                    //  horizontal: kDefaultPadding),
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      product.title,
                      style: Theme.of(context).textTheme.button,
                    ),
                  ),
                  // it use the available space
                  Spacer(),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: kDefaultPadding * 1.5, // 30 padding
                      vertical: kDefaultPadding / 4, // 5 top and bottom
                    ),
                    decoration: BoxDecoration(
                      color: kSecondaryColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(22),
                        topRight: Radius.circular(22),
                      ),
                    ),
                    child: Text(
                      "${product.price}€",
                      style: Theme.of(context).textTheme.button,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
