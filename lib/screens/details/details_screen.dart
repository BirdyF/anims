import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:anims/constants.dart';
import 'package:anims/models/product.dart';

import 'components/transp_body_details.dart';

class DetailsScreen extends StatelessWidget {
  final int productId;

  const DetailsScreen({Key key, this.productId}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      // appBar: buildAppBar(context),
      body: Container(width: 400, height: 700, child: TranspBodyDetails(productId: productId)),

      //  body: Body(
      //  product: product,
    );
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
