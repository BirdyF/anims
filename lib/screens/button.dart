import 'package:anims/screens/product/components/transp_body.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

import 'package:anims/globals.dart';

class ButtonPage extends StatefulWidget {
  @override
  _ButtonPageState createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  bool _isPushButtonVisible = true;
  @override
  void initState() {
    _isPushButtonVisible = true;
    super.initState();
  }

  _toggleRaisedButton() {
    setState(() {
      print('Toggle');
      _isPushButtonVisible = !_isPushButtonVisible;
    });
  }

  @override
  void dispose() {
    print('dispose button page!');
    super.dispose();
  }

  Widget build(BuildContext context) {
    FocusNode focusNode = FocusNode();

    focusNode.requestFocus();
    print('Build button page');

    return Container(
      width: 100,
      height: 100,
      child: RawKeyboardListener(
        autofocus: true,
        focusNode: focusNode,
        onKey: (RawKeyEvent event) {
          if (event.data.logicalKey == LogicalKeyboardKey.arrowRight) {
            print("right----");
            moveToAnotherScreen(context, focusNode, 'consent');
          }

          if (event.data.logicalKey == LogicalKeyboardKey.enter) {
            print("Enter----");
            moveToAnotherScreen(context, focusNode, 'consent');
          }

          if ((event.data.logicalKey == LogicalKeyboardKey.arrowUp) ||
            (event.data.logicalKey == LogicalKeyboardKey.arrowDown)) 
          {
            print("Up and Down----");
            moveToAnotherScreen(context, focusNode, 'consent');
          }
    
        },
        // child: ListView(padding: const EdgeInsets.all(200), children: [

        child: ListView(padding: EdgeInsets.only(top: 150), children: [
          Align(
            alignment: Alignment.centerRight,
            child: Visibility(
              visible: _isPushButtonVisible,
              // child: RaisedButton(
              child: ElevatedButton(
                  child: Text('Démo consentement pour TF1 publicité'),
                  onPressed: () {
                    print('Button pushed!');
                    // _toggleRaisedButton();
                    // moveToAnotherScreen(context, focusNode, 'products');
                    moveToAnotherScreen(context, focusNode, 'consent');
                  }),
            ),
          ),
        ]),
      ),
    );
  }
}
