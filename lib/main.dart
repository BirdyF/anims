import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:flutter/services.dart';

import 'package:anims/screens/product/transp_products_screen.dart';
import 'package:anims/screens/consent/transp_consent_screen.dart';

import 'package:anims/screens/details/transp_details_screen.dart';

import 'package:anims/screens/button.dart';

import 'package:anims/globals.dart';

main() {
  runApp(RootWidget());
}

class RootWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    // To remove the status bar
    SystemChrome.setEnabledSystemUIOverlays([]);

    return Localizations(
      delegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      locale: Locale('en'),
      child: Directionality(
        child: Navigator(
          onGenerateRoute: _generate,
          onUnknownRoute: _routeError,
          initialRoute: '/',
        ),
        textDirection: TextDirection.ltr,
      ),
    );
  }
}

Route _generate(RouteSettings settings) {
  Route page;
  switch (settings.name) {

    /***** 
    case "/":
      {
        page = PageRouteBuilder(
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) {
              print('launching button');
              return ButtonPage();
            },
            transitionDuration: Duration(milliseconds: speedAnim),
            transitionsBuilder: (_, Animation<double> animation,
                Animation<double> second, Widget child) {
              var begin = Offset(0.0, 1.0);
              var end = Offset.zero;
              var tween = Tween(begin: begin, end: end);
              // var curve = Curves.ease;
              var curve = Curves.easeInQuart;

              var curvedAnimation = CurvedAnimation(
                parent: animation,
                curve: curve,
              );
              // return SizeTransition(sizeFactor: animation, child: child);
              return SlideTransition(
                position: tween.animate(curvedAnimation),
                child: child,
              );
            });
      }
      break;
  ****/

    case "/":
      {
        page = PageRouteBuilder(
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) {
              print('---launching start page');

              return ButtonPage();
            },
            transitionDuration: Duration(milliseconds: speedAnim),
            transitionsBuilder: (_, Animation<double> animation,
                Animation<double> second, Widget child) {
              var begin = Offset(0.0, 1.0);
              var end = Offset.zero;
              var tween = Tween(begin: begin, end: end);
              // var curve = Curves.ease;
              var curve = Curves.easeInQuart;

              var curvedAnimation = CurvedAnimation(
                parent: animation,
                curve: curve,
              );
              // return SizeTransition(sizeFactor: animation, child: child);
              return SlideTransition(
                position: tween.animate(curvedAnimation),
                child: child,
              );
            });
      }
      break;

    case "button": 
      {
        page = PageRouteBuilder(
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) {
              print('launching button page');

              return ButtonPage();
            },
            transitionDuration: Duration(milliseconds: speedAnim),
            transitionsBuilder: (_, Animation<double> animation,
                Animation<double> second, Widget child) {
              var begin = Offset(0.0, 1.0);
              var end = Offset.zero;
              var tween = Tween(begin: begin, end: end);
              // var curve = Curves.ease;
              var curve = Curves.easeInQuart;

              var curvedAnimation = CurvedAnimation(
                parent: animation,
                curve: curve,
              );
              // return SizeTransition(sizeFactor: animation, child: child);
              return SlideTransition(
                position: tween.animate(curvedAnimation),
                child: child,
              );
            });
      }
      break;

    case "products":
      {
        page = PageRouteBuilder(
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) {
              print('launching Products page');
              return TranspProductsScreen();
            },
            transitionDuration: Duration(milliseconds: speedAnim),
            transitionsBuilder: (_, Animation<double> animation,
                Animation<double> second, Widget child) {
              var begin = Offset(0.0, 1.0);
              var end = Offset.zero;
              var tween = Tween(begin: begin, end: end);
              // var curve = Curves.ease;
              var curve = Curves.easeInQuart;

              var curvedAnimation = CurvedAnimation(
                parent: animation,
                curve: curve,
              );
              // return SizeTransition(sizeFactor: animation, child: child);
              return SlideTransition(
                position: tween.animate(curvedAnimation),
                child: child,
              );
            });
      }
      break;

    case "consent":
      {
        page = PageRouteBuilder(
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) {
              print('launching Consent page');
              return TranspConsentScreen();
            },
            transitionDuration: Duration(milliseconds: speedAnim),
            transitionsBuilder: (_, Animation<double> animation,
                Animation<double> second, Widget child) {
              var begin = Offset(0.0, 1.0);
              var end = Offset.zero;
              var tween = Tween(begin: begin, end: end);
              // var curve = Curves.ease;
              var curve = Curves.easeInQuart;

              var curvedAnimation = CurvedAnimation(
                parent: animation,
                curve: curve,
              );
              // return SizeTransition(sizeFactor: animation, child: child);
              return SlideTransition(
                position: tween.animate(curvedAnimation),
                child: child,
              );
            });
      }
      break;

    case "details":
    case "details0":
    case "details1":
      {
        int _productId = 0;

        if (settings.name == 'details1') {
          _productId = 1;
        } else {
          _productId = 0;
        }

        page = PageRouteBuilder(
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) {
              print('launching Details Products page $_productId');
              return TranspDetailsScreen(
                productId: _productId,
              );
            },
            transitionDuration: Duration(milliseconds: speedAnim),
            transitionsBuilder: (_, Animation<double> animation,
                Animation<double> second, Widget child) {
              var begin = Offset(0.0, 1.0);
              var end = Offset.zero;
              var tween = Tween(begin: begin, end: end);
              // var curve = Curves.ease;
              var curve = Curves.easeInQuart;

              var curvedAnimation = CurvedAnimation(
                parent: animation,
                curve: curve,
              );
              // return SizeTransition(sizeFactor: animation, child: child);
              return SlideTransition(
                position: tween.animate(curvedAnimation),
                child: child,
              );
            });
      }
      break;
  }
  return page;
}

Route _routeError(RouteSettings settings) {
  Route page;
  print('there is a problem in the routing');

  page = PageRouteBuilder(
      pageBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation) {
        print('Routing error');
        return Page2();
      },
      transitionDuration: Duration(milliseconds: speedAnim),
      transitionsBuilder: (_, Animation<double> animation,
          Animation<double> second, Widget child) {
        var begin = Offset(0.0, 1.0);
        var end = Offset.zero;
        var tween = Tween(begin: begin, end: end);
        // var curve = Curves.ease;
        var curve = Curves.easeInQuart;

        var curvedAnimation = CurvedAnimation(
          parent: animation,
          curve: curve,
        );
        // return SizeTransition(sizeFactor: animation, child: child);
        return SlideTransition(
          position: tween.animate(curvedAnimation),
          child: child,
        );
      });

  return page;
}

// Should be used for unknown route to detect problems
class Page2 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 400,
      child: RaisedButton(
          child: Text('Appuyer back pour repartir'),
          onPressed: () {
            print('Button pushed!');
            Navigator.pushNamed(context, 'button');
          }),
    );
  }
}
