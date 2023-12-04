import 'package:flutter/material.dart';
import 'package:mobile/widget/compenent/button_approval.dart';
import 'package:mobile/widget/shared/theme_color.dart';
import 'package:mobile/widget/size_config.dart';



class ButtonPemeriksa extends StatelessWidget {
  final bool visibilityPemeriksa;
  final Function() onClickedRevise;
  final Function() onClickedReject;
  final Function() onClickedVerify;
  final bool isLoading;
  const ButtonPemeriksa({
    Key? key,
    required this.visibilityPemeriksa,
    required this.onClickedRevise,
    required this.onClickedReject,
    required this.onClickedVerify,
    required this.isLoading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visibilityPemeriksa,
      child: isLoading == false
      ? Column(
          children: <Widget>[
            ButtonApproval(
              label: "REVISE",
              color: reviseButtonColor,
              onClicked: onClickedRevise,
              font: 14.0,
              horizontal: getProportionateScreenWidth(20),
              vertical: getProportionateScreenHeight(20), 
            ),
            SizedBox(height: getProportionateScreenHeight(15)),
            Row(
              children: <Widget> [
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
                    label: "VERIFY",
                    color: verifyButtonColor,
                    onClicked: onClickedVerify, 
                    font: 14.0,
                    horizontal: getProportionateScreenWidth(20),
                    vertical: getProportionateScreenHeight(20), 
                  ),
                ),
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