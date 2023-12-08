import 'package:flutter/material.dart';
import 'package:mobile/routes/app_routes.dart';

import 'package:mobile/widget/compenent/button_login.dart';
import 'package:mobile/widget/compenent/error_form.dart';
import 'package:mobile/widget/shared/theme_color.dart';
import 'package:mobile/widget/size_config.dart';
import 'package:mobile/widget/theme/constanta.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_svg/svg.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  _RegisterViewState createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final _usernameTextController = TextEditingController();
  final _emailTextController = TextEditingController();
  final _NamaTextController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool passwordVisible = true;
  late SharedPreferences loginData;
  bool isLoading = false;
  bool? remember = false;
  bool usernameError = false;
  bool passwordError = false;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Center(
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
                        Container(
                          padding: EdgeInsets.all(10),
                          width: getProportionateScreenWidth(150),
                          height: getProportionateScreenHeight(150),
                          decoration: BoxDecoration(
                            color: kPrimaryColorprime,
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            "assests/logo/mic.png",
                            height: getProportionateScreenHeight(200),
                            width: getProportionateScreenWidth(200),
                          ),
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Login to your account"),
                          ],
                        ),
                        SizedBox(height: getProportionateScreenHeight(10)),
                        Form(
                          key: _formKey,
                          child: Column(
                            children: <Widget>[
                              TextFormField(
                                controller: _usernameTextController,
                                keyboardType: TextInputType.text,
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                                onChanged: (value) {
                                  if (value.isNotEmpty) {
                                    setState(() {
                                      usernameError = false;
                                    });
                                  }
                                  return;
                                },
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    setState(() {
                                      usernameError = true;
                                    });
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  hintText: "No.Hp",
                                  hintStyle: const TextStyle(
                                      fontSize: 14,
                                      color: Color.fromRGBO(217, 217, 217, 1)),
                                  filled: true,
                                  fillColor: colorCardItem,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: const BorderSide(
                                        color: Colors.transparent),
                                    gapPadding: 10,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: const BorderSide(
                                        color: Colors.transparent),
                                    gapPadding: 10,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: const BorderSide(
                                        color: Colors.transparent),
                                    gapPadding: 10,
                                  ),
                                  prefixIcon: Padding(
                                    padding: EdgeInsets.fromLTRB(
                                      getProportionateScreenWidth(10),
                                      getProportionateScreenHeight(20),
                                      getProportionateScreenWidth(0),
                                      getProportionateScreenHeight(20),
                                    ),
                                    child: SvgPicture.asset(
                                      "assests/icons/briefcase.svg",
                                      height: getProportionateScreenHeight(20),
                                    ),
                                  ),
                                ),
                              ),
                              Visibility(
                                  visible: usernameError,
                                  child: Column(
                                    children: <Widget>[
                                      SizedBox(
                                          height:
                                              getProportionateScreenHeight(5)),
                                      const FormErrors(
                                          errors: kUsernameNullError),
                                    ],
                                  )),
                              SizedBox(
                                  height: getProportionateScreenHeight(10)),
                              TextFormField(
                                controller: _emailTextController,
                                keyboardType: TextInputType.text,
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                                obscureText: passwordVisible,
                                onChanged: (value) {
                                  if (value.isNotEmpty) {
                                    setState(() {
                                      passwordError = false;
                                    });
                                  }
                                  return;
                                },
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    setState(() {
                                      passwordError = true;
                                    });
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  hintText: "Email",
                                  hintStyle: const TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(217, 217, 217, 1),
                                  ),
                                  filled: true,
                                  fillColor: colorCardItem,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: const BorderSide(
                                        color: Colors.transparent),
                                    gapPadding: 10,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: const BorderSide(
                                        color: Colors.transparent),
                                    gapPadding: 10,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: const BorderSide(
                                        color: Colors.transparent),
                                    gapPadding: 10,
                                  ),
                                  prefixIcon: Padding(
                                    padding: EdgeInsets.fromLTRB(
                                      getProportionateScreenWidth(10),
                                      getProportionateScreenHeight(20),
                                      getProportionateScreenWidth(0),
                                      getProportionateScreenHeight(20),
                                    ),
                                    child: SvgPicture.asset(
                                      "assests/icons/locked.svg",
                                      height: getProportionateScreenHeight(20),
                                    ),
                                  ),
                                  // suffixIcon: Padding(
                                  //   padding: const EdgeInsets.symmetric(
                                  //       horizontal: 10.0),
                                  //   child: IconButton(
                                  //     onPressed: () {
                                  //       setState(() {
                                  //         passwordVisible = !passwordVisible;
                                  //       });
                                  //     },
                                  //     icon: SvgPicture.asset(
                                  //       (passwordVisible)
                                  //           ? "assests/icons/eye.svg"
                                  //           : "assests/icons/eye_hide.svg",
                                  //       height:
                                  //           getProportionateScreenHeight(20),
                                  //       color: (passwordVisible)
                                  //           ? const Color.fromRGBO(
                                  //               217, 217, 217, 1)
                                  //           : Colors.green,
                                  //     ),
                                  //   ),
                                  // )
                                ),
                              ),
                              Visibility(
                                  visible: passwordError,
                                  child: Column(
                                    children: <Widget>[
                                      SizedBox(
                                          height:
                                              getProportionateScreenHeight(5)),
                                      const FormErrors(errors: kPassNullError),
                                      SizedBox(
                                          height:
                                              getProportionateScreenHeight(8)),
                                    ],
                                  )),
                              SizedBox(
                                  height: getProportionateScreenHeight(10)),
                              TextFormField(
                                controller: _NamaTextController,
                                keyboardType: TextInputType.text,
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                                obscureText: passwordVisible,
                                onChanged: (value) {
                                  if (value.isNotEmpty) {
                                    setState(() {
                                      passwordError = false;
                                    });
                                  }
                                  return;
                                },
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    setState(() {
                                      passwordError = true;
                                    });
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  hintText: "Nama Lengkap",
                                  hintStyle: const TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(217, 217, 217, 1),
                                  ),
                                  filled: true,
                                  fillColor: colorCardItem,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: const BorderSide(
                                        color: Colors.transparent),
                                    gapPadding: 10,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: const BorderSide(
                                        color: Colors.transparent),
                                    gapPadding: 10,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: const BorderSide(
                                        color: Colors.transparent),
                                    gapPadding: 10,
                                  ),
                                  prefixIcon: Padding(
                                    padding: EdgeInsets.fromLTRB(
                                      getProportionateScreenWidth(10),
                                      getProportionateScreenHeight(20),
                                      getProportionateScreenWidth(0),
                                      getProportionateScreenHeight(20),
                                    ),
                                    child: SvgPicture.asset(
                                      "assests/icons/locked.svg",
                                      height: getProportionateScreenHeight(20),
                                    ),
                                  ),
                                  // suffixIcon: Padding(
                                  //   padding: const EdgeInsets.symmetric(
                                  //       horizontal: 10.0),
                                  //   child: IconButton(
                                  //     onPressed: () {
                                  //       setState(() {
                                  //         passwordVisible = !passwordVisible;
                                  //       });
                                  //     },
                                  //     icon: SvgPicture.asset(
                                  //       (passwordVisible)
                                  //           ? "assests/icons/eye.svg"
                                  //           : "assests/icons/eye_hide.svg",
                                  //       height:
                                  //           getProportionateScreenHeight(20),
                                  //       color: (passwordVisible)
                                  //           ? const Color.fromRGBO(
                                  //               217, 217, 217, 1)
                                  //           : Colors.green,
                                  //     ),
                                  //   ),
                                  // )
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Checkbox(
                                    value: remember,
                                    activeColor: kPrimaryColorujian,
                                    onChanged: (value) {
                                      setState(() {
                                        remember = value!;
                                      });
                                    },
                                  ),
                                  const Text("Remember Me"),
                                ],
                              ),
                              ButtonLogin(
                                onClicked: () async {
                                  Navigator.pushNamed(
                                    context,
                                    Routes.MAINPAGE,
                                  );
                                },
                                isLoading: isLoading,
                              ),
                              SizedBox(
                                  height: getProportionateScreenHeight(20)),
                              Row(
                                children: <Widget>[
                                  Text("Belum mememiliki akun "),
                                  InkWell(
                                    child: Text(
                                      "Sign in",
                                      style:
                                          TextStyle(color: kPrimaryColorujian),
                                    ),
                                    onTap: () {
                                      Navigator.pushNamed(
                                        context,
                                        Routes.LOGIN,
                                      );
                                    },
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
