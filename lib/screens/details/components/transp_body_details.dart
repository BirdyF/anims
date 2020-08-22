import 'package:flutter/material.dart';
import 'package:anims/constants.dart';
import 'package:anims/models/product.dart';
import 'package:anims/screens/buy/trans_buy_body.dart';

import 'product_image.dart';

import 'package:anims/globals.dart';

import 'package:flutter/services.dart';

import 'package:anims/screens/details/components/add_to_cart.dart';

// FocusNode focusNode = FocusNode();

class TranspBodyDetails extends StatelessWidget {
  final int productId;

  const TranspBodyDetails({Key key, this.productId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final FocusNode focusNode = FocusNode();
    focusNode.requestFocus();

    Product product = products[productId];

    return Container(
        width: 400,
        height: 400,
        child: RawKeyboardListener(
          autofocus: true,
          focusNode: globalFocusNodeProducts,
          onKey: (RawKeyEvent event) {
            if (event.data.logicalKey == LogicalKeyboardKey.arrowDown) {
              print("down----");
            }

            if (event.data.logicalKey == LogicalKeyboardKey.arrowUp) {
              print("up---");
              focusNode.unfocus();
              Navigator.pushNamed(context, 'products');
            }

            if (event.data.logicalKey == LogicalKeyboardKey.arrowRight) {
              print("right---");
              // Add a button wih transparency
              focusNode.unfocus();
              Navigator.pushNamed(context, 'products');

            }

            if (event.data.logicalKey == LogicalKeyboardKey.escape) {
              print("escape");
              focusNode.unfocus();
              Navigator.pushNamed(context, 'products');
            }

            if (event.data.logicalKey == LogicalKeyboardKey.arrowLeft) {
              print("left---");
              focusNode.unfocus();
              Navigator.pushNamed(context, 'products');
            }

            if (event.data.logicalKey == LogicalKeyboardKey.enter) {
              print("Enter !!!!");
              focusNode.unfocus();
              Navigator.pushNamed(context, 'products');
            }
          },
          child: GestureDetector(
            onTap: () {
              print('Tap to buy the arm chair');

              focusNode.unfocus();
              Navigator.pushNamed(context, 'button');
            },
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  width: 300,
                  height: 250,
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  decoration: BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Center(
                          child: ProductPoster(
                              // size: size,
                              image: product.image)),

                      // ListOfColors(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: kDefaultPadding / 4),
                        child: Text(
                          product.title,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                      Text(
                        '${product.price}€',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: kSecondaryColor,
                        ),
                      ),

                      // SizedBox(height: kDefaultPadding),
                      AddToCart(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
