import 'package:flutter/material.dart';

import 'package:mobile/widget/shared/theme_color.dart';

class HighlightItemName extends StatelessWidget {
  final Widget child;
  const HighlightItemName({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            gradient: const LinearGradient(colors: <Color>[
              kPrimaryColorprime,
              kSecondaryColor,
            ]),
          ),
          child: FittedBox(
            child: Center(
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: child),
            ),
          ),
        ),
      ],
    );
  }
}
