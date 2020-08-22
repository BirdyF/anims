import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:anims/constants.dart';
import 'package:anims/models/product.dart';

import 'components/transp_body_details.dart';

class TranspDetailsScreen extends StatelessWidget {
  final int productId;

  // const TranspDetailsScreen({Key key, this.product}) : super(key: key);
  const TranspDetailsScreen({Key key, this.productId}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    
    return Container(
        width: 400,
        height: 700,
        child: TranspBodyDetails(key: key, productId: productId));
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      leading: IconButton(
        padding: EdgeInsets.only(left: kDefaultPadding),
        icon: SvgPicture.asset("assets/icons/back.svg"),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      centerTitle: false,
      title: Text(
        'Back'.toUpperCase(),
        style: Theme.of(context).textTheme.bodyText2,
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset('assets/icons/cart_with_item.svg'),
          onPressed: () {},
        ),
      ],
    );
  }
}
