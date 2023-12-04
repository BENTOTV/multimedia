import 'package:flutter/material.dart';
import 'package:mobile/view/pages/profile/componen_profile/gradient_text.dart';
import 'package:mobile/widget/shared/theme_color.dart';
import 'package:mobile/widget/size_config.dart';
import 'package:mobile/widget/theme/constanta.dart';

class ButtonProfile extends StatelessWidget {
  final Function()? onClicked;
  final String label;
  const ButtonProfile({
    Key? key,
    required this.onClicked,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _screen = MediaQuery.of(context).size;
    return Container(
      width: _screen.width * 0.40,
      height: getProportionateScreenHeight(50),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.black)),
      child: TextButton(
          style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5))),
          onPressed: onClicked,
          child: GradientText(
            label,
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  kPrimaryColorprime,
                  kDarkBlueColor,
                ]),
          )),
    );
  }
}
