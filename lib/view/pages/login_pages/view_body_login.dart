import 'package:flutter/material.dart';
import 'package:mobile/view/pages/login_pages/view_login_form.dart';
import 'package:mobile/widget/size_config.dart';

class BodyLogin extends StatefulWidget {
  const BodyLogin({super.key});

  @override
  State<BodyLogin> createState() => _BodyLoginState();
}

class _BodyLoginState extends State<BodyLogin> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              child: Card(
                shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    side: BorderSide(
                        width: getProportionateScreenWidth(0.4),
                        color: Colors.grey)),
                elevation: 8.0,
                margin: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(3.0),
                    vertical: getProportionateScreenHeight(6.0)),
                child: Padding(
                  padding: EdgeInsets.only(
                      top: getProportionateScreenHeight(15),
                      bottom: getProportionateScreenHeight(30),
                      left: getProportionateScreenWidth(20),
                      right: getProportionateScreenWidth(20)),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "assests/logo/enforceA.png",
                        height: getProportionateScreenHeight(200),
                        width: getProportionateScreenWidth(200),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Login to your account"),
                        ],
                      ),
                      SizedBox(height: getProportionateScreenHeight(10)),
                      const LoginForm(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
