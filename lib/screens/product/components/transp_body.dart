import 'package:flutter/material.dart';
import 'package:anims/constants.dart';
import 'package:anims/models/product.dart';
import 'package:anims/screens/details/transp_details_screen.dart';

import 'transp_product_card.dart';

import 'package:flutter/services.dart';

FocusNode focusNode = FocusNode();
bool toggleDetailed = true; // Go to detailed

class TranspBody extends StatelessWidget {
  const TranspBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext productContext) {
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
              print("up---");
              _moveToAnotherScreen(productContext, 'button');
            }

            if (event.data.logicalKey == LogicalKeyboardKey.keyU) {
              print("Letter U ---");
              focusNode.unfocus();
              focusNode.dispose();
              Navigator.pushNamed(productContext, 'details1');
            }

            if (event.data.logicalKey == LogicalKeyboardKey.keyT) {
              print("Letter T ---");
              focusNode.unfocus();
              focusNode.dispose();
              Navigator.pushNamed(productContext, 'details0');
            }

            if (event.data.logicalKey == LogicalKeyboardKey.arrowLeft) {
              print("left---");
              print('Going back');
              focusNode.unfocus();
              focusNode.dispose();
              Navigator.pushNamed(productContext, 'button');
            }

            if (event.data.logicalKey == LogicalKeyboardKey.arrowRight) {
              print("right---");

              focusNode.unfocus();
              focusNode.dispose();
              Navigator.pushNamed(productContext, 'details');
            }

            if (event.data.logicalKey == LogicalKeyboardKey.enter) {
              print("Enter !!!!");
              focusNode.unfocus();
              focusNode.dispose();
              Navigator.pushNamed(productContext, 'details');
            }
          },
          child: GestureDetector(
            onTap: () {
              print('Tap to get the details screen');
              focusNode.unfocus();
              focusNode.dispose();
              Navigator.pushNamed(productContext, 'details1');
            },
            onDoubleTap: () {
              print("let's go back");
              focusNode.unfocus();
              focusNode.dispose();
              Navigator.pushNamed(productContext, 'button');
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
                  // here we use our demo products list
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

void _moveToAnotherScreen(BuildContext context, String pageName) {
  focusNode.unfocus();
  focusNode.dispose();
  Navigator.pushNamed(context, pageName);
}
