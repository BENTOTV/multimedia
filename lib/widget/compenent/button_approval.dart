import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile/widget/shared/theme_color.dart';
import 'package:mobile/widget/size_config.dart';

import 'package:sizer/sizer.dart';

class ButtonApproval extends StatelessWidget {
  const ButtonApproval(
      {Key? key,
      required this.label,
      required this.color,
      required this.onClicked,
      required this.vertical,
      required this.horizontal,
      required this.font})
      : super(key: key);
  final String label;
  final Color color;
  final double vertical;
  final double horizontal;
  final double font;
  final VoidCallback onClicked;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: color,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        onPressed: onClicked,
        child: Text(
          label,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: font.sp,
              color: Colors.white,
              overflow: TextOverflow.ellipsis),
        ),
      ),
    );
  }
}

class IconApproval extends StatelessWidget {
  const IconApproval({Key? key, required this.color, required this.onClicked})
      : super(key: key);
  final Color color;
  final VoidCallback onClicked;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.only(
          top: getProportionateScreenHeight(10),
          bottom: getProportionateScreenHeight(10)),
      child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: color,
            shape: const CircleBorder(),
          ),
          onPressed: onClicked,
          child: Icon(Icons.check, size: 20.sp, color: colorCardItem)),
    );
  }
}

// Padding(
//           padding: EdgeInsets.only(right: getProportionateScreenWidth(5)),
//           child: SvgPicture.asset("assets/icons/verify_icon_detail.svg",
//             height: getProportionateScreenHeight(20),
//             width: getProportionateScreenWidth(20),
//           ),
//         ),