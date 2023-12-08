import 'package:flutter/material.dart';
import 'package:mobile/widget/shared/theme_color.dart';
import 'package:mobile/widget/size_config.dart';
import 'package:mobile/widget/theme/constanta.dart';

class ButtonLogout extends StatelessWidget {
  final Function()? onClicked;

  const ButtonLogout({
    Key? key,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: getProportionateScreenHeight(50),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              kPrimaryColorprime,
              kDarkBlueColor,
            ]),
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextButton(
          style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5))),
          onPressed: onClicked,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(width: getProportionateScreenWidth(24)),
              const Text(
                "Logout",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              )
            ],
          )),
    );
  }
}
