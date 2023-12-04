import 'package:flutter/material.dart';
import 'package:mobile/widget/size_config.dart';

class CardFieldItemText extends StatelessWidget {
  final String label;
  final String? contentData;
  final int flexLeftRow;
  final int flexRightRow;
  const CardFieldItemText(
      {Key? key,
      required this.label,
      required this.contentData,
      required this.flexLeftRow,
      required this.flexRightRow})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Column(
          children: <Widget>[
            Padding(
                padding:
                    EdgeInsets.only(left: getProportionateScreenWidth(0.0)),
                child: Text(
                  "$label :",
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.left,
                )),
          ],
        ),
        Column(
          children: <Widget>[
            Padding(
                padding:
                    EdgeInsets.only(left: getProportionateScreenWidth(0.0)),
                child: (contentData != null)
                    ? Text(
                        contentData.toString(),
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                        textAlign: TextAlign.left,
                      )
                    : const Text(
                        "-",
                        style: TextStyle(color: Colors.black),
                        textAlign: TextAlign.left,
                      )),
          ],
        ),
      ],
    );
  }
}

class CardFieldItemText1 extends StatelessWidget {
  final String label;
  final String? contentData;
  final int flexLeftRow;
  final int flexRightRow;
  const CardFieldItemText1(
      {Key? key,
      required this.label,
      required this.contentData,
      required this.flexLeftRow,
      required this.flexRightRow})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
                padding:
                    EdgeInsets.only(left: getProportionateScreenWidth(0.0)),
                child: Text(
                  "$label :",
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.left,
                )),
          ],
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                  padding:
                      EdgeInsets.only(left: getProportionateScreenWidth(0.0)),
                  child: (contentData != null)
                      ? Text(
                          contentData.toString(),
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.left,
                        )
                      : const Text(
                          "-",
                          style: TextStyle(color: Colors.black),
                          textAlign: TextAlign.left,
                        )),
            ],
          ),
        )
      ],
    );
  }
}
