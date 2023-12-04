import 'package:flutter/material.dart';
import 'package:mobile/widget/shared/theme_color.dart';
import 'package:mobile/widget/size_config.dart';

class CardProfile extends StatelessWidget {
  final Widget child;
  const CardProfile({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      margin: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(10.0),
          vertical: getProportionateScreenHeight(6.0)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
      ),
      child: child,
    );
  }
}
