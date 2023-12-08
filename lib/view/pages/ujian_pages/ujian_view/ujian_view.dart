import 'package:flutter/material.dart';
import 'package:mobile/widget/shared/theme_color.dart';
import 'package:mobile/widget/size_config.dart';

class UjianView extends StatefulWidget {
  const UjianView({super.key});

  @override
  State<UjianView> createState() => _UjianViewState();
}

class _UjianViewState extends State<UjianView> {
  @override
  Widget build(BuildContext context) {
    final _screen = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColorprime,
      ),
      body: SafeArea(
          child: SizedBox(
        width: _screen.width,
        height: _screen.height,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Lavalkan Kata ini",
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(50)),
            Padding(
              padding: EdgeInsets.only(left: 130),
              child: Container(
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.speaker_sharp,
                      size: 50,
                    ),
                    Text(
                      "Kata",
                      style: TextStyle(fontSize: 40),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(200)),
            Container(
              width: _screen.width * 0.60,
              decoration: BoxDecoration(
                  border: Border.all(color: kPrimaryColorprime),
                  borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {},
                child: Row(
                  children: <Widget>[
                    Text(
                      "Lafalkan",
                      style: TextStyle(fontSize: 35, color: Colors.black),
                    ),
                    SizedBox(width: getProportionateScreenWidth(30)),
                    Icon(
                      Icons.mic,
                      size: 50,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(100)),
            Container(
              width: _screen.width * 0.60,
              decoration: BoxDecoration(
                  border: Border.all(color: kPrimaryColorprime),
                  borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Periksa",
                  style: TextStyle(fontSize: 35, color: Colors.black),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
