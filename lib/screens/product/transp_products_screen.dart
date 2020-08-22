import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:anims/constants.dart';

import 'components/transp_body.dart';

class TranspProductsScreen extends StatelessWidget {

  const TranspProductsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Build TranspProductsScreen');



    return Stack(children: [
      Positioned(
          bottom: 0, right: 0, child: Container(width: 400, child: TranspBody(key: key))),
    ]);

    /***** 
        // appBar: buildAppBar(),
        backgroundColor: kPrimaryColor,
          body: SizedBox(
            child: Body(),
            height: 500,
            width: 250,
          )
   
      *****/
    // ),
    // );
  }

  // Not used for the moment
  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      centerTitle: false,
      title: Text('Demo Nothing2Install'),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/icons/notification.svg"),
          onPressed: () {},
        ),
      ],
    );
  }
}
