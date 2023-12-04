import 'package:flutter/material.dart';
import 'package:mobile/widget/compenent/button_approval.dart';
import 'package:mobile/widget/shared/theme_color.dart';
import 'package:mobile/widget/size_config.dart';

class ButtonPengesah extends StatelessWidget {
  final bool visibilityPengesah;
  final Function() onClickedReject;
  final Function() onClickedApprove;
  final bool isLoading;
  const ButtonPengesah({
    Key? key,
    required this.visibilityPengesah,
    required this.onClickedReject,
    required this.onClickedApprove,
    required this.isLoading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visibilityPengesah,
      child: isLoading == false
          ? Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: ButtonApproval(
                        label: "REJECT",
                        color: rejectButtonColor,
                        onClicked: onClickedReject,
                        font: 14.0,
                        horizontal: getProportionateScreenWidth(20),
                        vertical: getProportionateScreenHeight(20),
                      ),
                    ),
                    SizedBox(width: getProportionateScreenWidth(10)),
                    Expanded(
                        child: ButtonApproval(
                      label: "APPROVE",
                      color: verifyButtonColor,
                      onClicked: onClickedApprove,
                      font: 14.0,
                      horizontal: getProportionateScreenWidth(20),
                      vertical: getProportionateScreenHeight(20),
                    ))
                  ],
                ),
              ],
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
