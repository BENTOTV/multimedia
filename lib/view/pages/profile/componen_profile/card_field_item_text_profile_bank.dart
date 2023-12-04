import 'package:flutter/material.dart';
import 'package:mobile/widget/size_config.dart';

class CardFieldItemTextProfileBank extends StatelessWidget {
  final String label;
  final String? contentData;
  final String? contentData2;
  final int flexLeftRow;
  final int flexRightRow;
  const CardFieldItemTextProfileBank(
      {Key? key,
      required this.label,
      required this.contentData,
      required this.flexLeftRow,
      required this.flexRightRow,
      this.contentData2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _screen = MediaQuery.of(context).size;
    return Container(
      width: _screen.width * 0.75,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                    padding:
                        EdgeInsets.only(left: getProportionateScreenWidth(0.0)),
                    child: Text(
                      "$label",
                      style: const TextStyle(
                        color: Colors.black54,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.left,
                    )),
              ],
            ),
            SizedBox(
              height: 10,
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
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          )
                        : const Text(
                            "-",
                            style: TextStyle(color: Colors.black),
                            textAlign: TextAlign.left,
                          )),
              ],
            ),
            Column(
              children: <Widget>[
                Padding(
                    padding:
                        EdgeInsets.only(left: getProportionateScreenWidth(0.0)),
                    child: (contentData2 != null)
                        ? Text(
                            contentData2.toString(),
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          )
                        : const Text(
                            "-",
                            style: TextStyle(color: Colors.black),
                            textAlign: TextAlign.left,
                          )),
              ],
            ),
            Divider(
              color: Colors.black,
              thickness: 1,
            )
          ],
        ),
      ),
    );
  }
}

class CardFieldItemTextProfileBank1 extends StatelessWidget {
  final String label;
  final String? contentData;
  final int flexLeftRow;
  final int flexRightRow;
  const CardFieldItemTextProfileBank1(
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
