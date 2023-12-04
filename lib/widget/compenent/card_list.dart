import 'package:flutter/material.dart';
import 'package:mobile/widget/shared/theme_color.dart';
import 'package:mobile/widget/size_config.dart';

class CardList extends StatelessWidget {
  final Widget child;
  const CardList({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      margin: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(10.0),
          vertical: getProportionateScreenHeight(6.0)),
      shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(25),
          side: BorderSide(
            width: getProportionateScreenWidth(0.4),
            color: kGreyColor2,
          )),
      child: child,
    );
  }
}
