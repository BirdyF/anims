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
    int _productID = 1;

    focusNode.requestFocus();

    return Container(
        width: 400,
        height: 400,
        child: RawKeyboardListener(
          autofocus: true,
          focusNode: focusNode,
          onKey: (RawKeyEvent event) {
            print('---logicalKey ${event.data.logicalKey}');
            if (event.data.logicalKey == LogicalKeyboardKey.arrowDown) {
              print("down----");
            }

            if (event.data.logicalKey == LogicalKeyboardKey.arrowUp) {
              print("up---");
              focusNode.unfocus();
              Navigator.pushNamed(productContext, 'button');
            }

            if (event.data.logicalKey == LogicalKeyboardKey.keyU) {
              print("Letter U ---");
              focusNode.unfocus();
              Navigator.pushNamed(productContext, 'details1');
            }

            if (event.data.logicalKey == LogicalKeyboardKey.keyT) {
              print("Letter T ---");
              focusNode.unfocus();
              Navigator.pushNamed(productContext, 'details0');
            }

            if (event.data.logicalKey == LogicalKeyboardKey.digit1) {
              print("Number 1 ---");
              focusNode.unfocus();
              Navigator.pushNamed(productContext, 'details');
            }

            if (event.data.logicalKey == LogicalKeyboardKey.arrowLeft) {
              print("left---");
              print('Going back');
              focusNode.unfocus();
              Navigator.pushNamed(productContext, 'button');
            }

            if (event.data.logicalKey == LogicalKeyboardKey.arrowRight) {
              print("right---");

              focusNode.unfocus();
              Navigator.pushNamed(productContext, 'details');
            }
            if (event.data.logicalKey == LogicalKeyboardKey.escape) {
              print("escape");
              focusNode.unfocus();
              Navigator.pushNamed(productContext, 'button');
            }

            if (event.data.logicalKey == LogicalKeyboardKey.enter) {
              print("Enter !!!!");
              focusNode.unfocus();
              Navigator.pushNamed(productContext, 'details');
            }
          },
          child: GestureDetector(
            onTap: () {
              print('Tap to get the details screen');
              focusNode.unfocus();
              Navigator.pushNamed(productContext, 'details1');
            },
            onDoubleTap: () {
              print("let's go back");
              focusNode.unfocus();
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

/******* 
 * 
 * 
 * 
        child: Column(
          children: <Widget>[
            // PF Modification XXX
            SearchBox(onChanged: (value) {}),
            CategoryList(),
            SizedBox(width: 400, height: kDefaultPadding / 2),
  
            Expanded(
              child: Stack(
                children: <Widget>[
                  // Our background
                  Container(
                    margin: EdgeInsets.only(top: 70),
                    decoration: BoxDecoration(
                      color: kBackgroundColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                  ),
                  ListView.builder(
                    // scrollDirection: Axis.vertical,
                    // here we use our demo procuts list
                    itemCount: products.length,
                    itemBuilder: (context, index) => ProductCard(
                      itemIndex: index,
                      product: products[index],
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Details
                              product: products[index],
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),

****/
