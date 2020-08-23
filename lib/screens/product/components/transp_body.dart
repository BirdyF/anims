import 'package:flutter/material.dart';
import 'package:anims/constants.dart';
import 'package:anims/models/product.dart';
import 'package:anims/screens/details/transp_details_screen.dart';

import 'package:anims/globals.dart';

import 'transp_product_card.dart';

import 'package:flutter/services.dart';


bool toggleDetailed = true; // Go to detailed

class TranspBody extends StatelessWidget {
  const TranspBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext productContext) {
    FocusNode focusNode = FocusNode();

    focusNode = FocusNode();
    focusNode.requestFocus();

    return Container(
        width: 400,
        height: 350,
        child: RawKeyboardListener(
          autofocus: true,
          focusNode: focusNode,
          onKey: (RawKeyEvent event) {
            print('---logicalKey ${event.data.logicalKey}');

            if (event.data.logicalKey == LogicalKeyboardKey.arrowUp) {
              print("up from products---");
              moveToAnotherScreen(productContext, focusNode, 'button');
            }

            if (event.data.logicalKey == LogicalKeyboardKey.keyU) {
              print("Letter U from products ----");
              moveToAnotherScreen(productContext, focusNode, 'details1');
            }

            if (event.data.logicalKey == LogicalKeyboardKey.keyT) {
              print("Letter T from products ----");
              moveToAnotherScreen(productContext, focusNode, 'details0');
            }

/***** 
            if (event.data.logicalKey == LogicalKeyboardKey.arrowLeft) {
              print("left---");
              print('Going back');
              moveToAnotherScreen(productContext, focusNode, 'button');
            }

            if (event.data.logicalKey == LogicalKeyboardKey.arrowRight) {
              print("right---");
              moveToAnotherScreen(productContext, focusNode, 'details0');
            }
****/

            if (event.data.logicalKey == LogicalKeyboardKey.enter) {
              print("Enter !!!!");
              moveToAnotherScreen(productContext, focusNode, 'details0');
            }
          },
          child: GestureDetector(
            onTap: () {
              print('Tap to get the details screen from products-');
              moveToAnotherScreen(productContext, focusNode, 'details1');
            },
            onDoubleTap: () {
              print("let's go back from products-");
              moveToAnotherScreen(productContext, focusNode, 'button');
            },
            child: Container(
              width: 400,
              height: 600,
              alignment: Alignment.topRight,
              child: SizedBox(
                width: 250,
                height: 400,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: products.length,
                  itemBuilder: (context, index) => TranspProductCard(
                    itemIndex: index,
                    product: products[index],
                    press: () {
                      /***** 
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TranspDetailsScreen(
                            product: products[index],
                          ),
                        ),
                      );
                      ******/
                    },
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
