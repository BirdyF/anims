import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

import 'package:anims/constants.dart';
import 'package:anims/models/product.dart';
import 'package:anims/screens/details/transp_details_screen.dart';

import 'package:anims/globals.dart';

import 'transp_consent_card.dart';

import 'package:flutter/services.dart';

bool toggleDetailed = true; // Go to detailed

// class TranspBody extends StatelessWidget {
class TranspBody extends StatefulWidget {
  const TranspBody({Key key}) : super(key: key);

  @override
  _TranspBodyState createState() => _TranspBodyState();
}

class _TranspBodyState extends State<TranspBody> {
  _TranspBodyState();

  bool _valSwitch1 = false;
  bool _valSwitch2 = false;
  bool _alreadyCalled1 = false;
  bool _alreadyCalled2 = false;

  @override
  void initState() {
    _valSwitch1 = false;
    _valSwitch1 = false;
    _alreadyCalled1 = false;
    _alreadyCalled2 = false;
    super.initState();
  }

  @override
  void dispose() {
    print('============> dispose consent page!');
    super.dispose();
  }

  @override
  Widget build(BuildContext productContext) {
    FocusNode focusNode = FocusNode();

    focusNode = FocusNode();
    focusNode.requestFocus();

    TextStyle _numberStyle = TextStyle(
      color: Colors.black,
      fontSize: 40,
    );

    TextStyle _textStyle = TextStyle(
      color: Colors.black,
      fontSize: 25,
    );

    return Container(
        width: 300,
        height: 350,
        // alignment: Alignment.topCenter,
        child: RawKeyboardListener(
            autofocus: true,
            focusNode: focusNode,
            onKey: (RawKeyEvent event) {
              print('---logicalKey ${event.data.logicalKey}');

              if (event.data.logicalKey == LogicalKeyboardKey.arrowUp) {
                print("up from consent---");
                moveToAnotherScreen(productContext, focusNode, 'button');
              }

              if (event.data.logicalKey == LogicalKeyboardKey.keyU) {
                print("Letter U from consent ----");
                print('Tap pour change the switch  No2');
                setState(() {
                  _valSwitch2 = !_valSwitch2;
                });
              }

              if (event.data.logicalKey == LogicalKeyboardKey.keyT) {
                print("Letter T from consent ----");
                print('Tap pour change the switch  No1');
                if (_alreadyCalled1 == false) {
                  setState(() {
                    _alreadyCalled1 = true;
                    _valSwitch1 = !_valSwitch1;
                  });
                }
              }

              if (event.data.logicalKey == LogicalKeyboardKey.digit1) {
                print("Letter 1 from consent ----");
                print('Tap pour change the switch  No1');
                print('alreadycalled111 , $_alreadyCalled1');

                if (_alreadyCalled1 == false) {
                  setState(() {
                    _alreadyCalled1 = true;
                    _valSwitch1 = !_valSwitch1;
                  });
                }
              }

              if (event.data.logicalKey == LogicalKeyboardKey.digit2) {
                print("Letter 2 from consent ----");
                print('Tap pour change the switch  No2');
                print('alreadycalled222 , $_alreadyCalled2');
                if (_alreadyCalled2 == false) {
                  setState(() {
                    _alreadyCalled2 = true;
                    _valSwitch2 = !_valSwitch2;
                  });
                }
              }

              if (event.data.logicalKey == LogicalKeyboardKey.digit3) {
                print("Letter 3333 from consent ----");
                print('Reset the flags');
                setState(() {
                  _alreadyCalled1 = false;
                  _alreadyCalled2 = false;
                });
              }

              if (event.data.logicalKey == LogicalKeyboardKey.arrowLeft) {
                print("left---");
                print('Going back');
                moveToAnotherScreen(productContext, focusNode, 'button');
              }
            },
            child: GestureDetector(
              onTap: () {
                print('Tap pour change the switch  No1');
                setState(() {
                  _valSwitch1 = !_valSwitch1;
                });
              },
              onDoubleTap: () {
                print('Tap pour change the switch  No2');
                setState(() {
                  _valSwitch2 = !_valSwitch2;
                });
              },
              child: Container(
                width: 200,
                height: 200,
                margin: EdgeInsets.only(right: 80, bottom: 40),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(3.0, 3.0),
                        blurRadius: 5.0,
                        spreadRadius: 2.0,
                        color: Colors.grey[600])
                  ],
                  color: Colors.white70.withOpacity(0.8),
                ),
                alignment: Alignment.center,
                child: SizedBox(
                  width: 300,
                  height: 300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // TF1 logo should be squeezed to not use all the width
                          // Text('ghghh'),
                          // Image.asset('assets/images/logo_TF1.png'),
                          // Text('ioioioio'),
                        ],
                      ),
                      Image.asset('assets/images/logo_TF1.png'),
                      Text(''),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('1 ', style: _numberStyle),
                          Text('1ère ligne      ', style: _textStyle),
                          CupertinoSwitch(
                              value: _valSwitch1,
                              onChanged: (bool val) {
                                print('switched 111!!');
                              })
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(''),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('2 ', style: _numberStyle),
                          Text('2ème ligne    ', style: _textStyle),
                          CupertinoSwitch(
                              value: _valSwitch2,
                              onChanged: (bool val) {
                                print('switched 222!!');
                              })
                        ],
                      ),
                      Row(
                        children: [
                          Text(' ', style: _textStyle),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Appuyez sur 1 ', style: _textStyle),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )));
  }
}
