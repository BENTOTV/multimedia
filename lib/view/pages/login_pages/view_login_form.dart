import 'package:flutter/material.dart';
import 'package:mobile/routes/app_routes.dart';
import 'package:mobile/view/pages/home_pages/home_page.dart';
import 'package:mobile/widget/compenent/button_login.dart';
import 'package:mobile/widget/compenent/error_form.dart';
import 'package:mobile/widget/shared/theme_color.dart';
import 'package:mobile/widget/size_config.dart';
import 'package:mobile/widget/theme/constanta.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _usernameTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool passwordVisible = true;
  late SharedPreferences loginData;
  bool isLoading = false;
  bool? remember = false;
  bool usernameError = false;
  bool passwordError = false;

  @override
  Widget build(BuildContext context) {
    return Form(
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
              hintText: "Username",
              hintStyle: const TextStyle(
                  fontSize: 14, color: Color.fromRGBO(217, 217, 217, 1)),
              filled: true,
              fillColor: colorCardItem,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(color: Colors.transparent),
                gapPadding: 10,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(color: Colors.transparent),
                gapPadding: 10,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(color: Colors.transparent),
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
                  "assets/logo/enforceA.png",
                  height: getProportionateScreenHeight(20),
                ),
              ),
            ),
          ),
          Visibility(
              visible: usernameError,
              child: Column(
                children: <Widget>[
                  SizedBox(height: getProportionateScreenHeight(5)),
                  const FormErrors(errors: kUsernameNullError),
                ],
              )),
          SizedBox(height: getProportionateScreenHeight(20)),
          TextFormField(
            controller: _passwordTextController,
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
                hintText: "Password",
                hintStyle: const TextStyle(
                  fontSize: 14,
                  color: Color.fromRGBO(217, 217, 217, 1),
                ),
                filled: true,
                fillColor: colorCardItem,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(color: Colors.transparent),
                  gapPadding: 10,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(color: Colors.transparent),
                  gapPadding: 10,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(color: Colors.transparent),
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
                    "assets/icons/locked.svg",
                    height: getProportionateScreenHeight(20),
                  ),
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        passwordVisible = !passwordVisible;
                      });
                    },
                    icon: SvgPicture.asset(
                      (passwordVisible)
                          ? "assets/icons/eye.svg"
                          : "assets/icons/eye_hide.svg",
                      height: getProportionateScreenHeight(20),
                      color: (passwordVisible)
                          ? const Color.fromRGBO(217, 217, 217, 1)
                          : Colors.green,
                    ),
                  ),
                )),
          ),
          Visibility(
              visible: passwordError,
              child: Column(
                children: <Widget>[
                  SizedBox(height: getProportionateScreenHeight(5)),
                  const FormErrors(errors: kPassNullError),
                  SizedBox(height: getProportionateScreenHeight(8)),
                ],
              )),
          Row(
            children: <Widget>[
              Checkbox(
                value: remember,
                activeColor: kPrimaryColorprime,
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
              // Navigator.pushNamed(context, Routes.HOME, arguments: {
              //   'nama': "Juniartha",
              // });
              // if (_formKey.currentState!.validate()) {
              //   if (_usernameTextController.text != "" && _passwordTextController.text != "") {
              //     setState(() {
              //       isLoading = true;
              //     });
              //     await Future.delayed(const Duration(milliseconds: 1000));
              //     final loginProses = await BASICAPI().loginUser(
              //     username: _usernameTextController.text,
              //     password: _passwordTextController.text
              //     );
              //     if (loginProses == "berhasil") {

              //       print("test token fcm");
              //       print(fcmToken);
              //       // pushNotificationFCM(body: 'curukutu~ mpok ceru 2X~~', title: 'kyukyu~~', deviceToken: fcmToken);
              //       Get.offAll(const MainPage());
              //       // Get.snackbar(
              //       //   "Login Berhasil",
              //       //   "Testing66",
              //       //   snackPosition: SnackPosition.BOTTOM,
              //       //   animationDuration: const Duration(milliseconds: 400),
              //       //   duration: const Duration(milliseconds: 1500),
              //       //   padding: EdgeInsets.symmetric(horizontal:getProportionateScreenWidth(20), vertical:getProportionateScreenHeight(20)),
              //       // );
              //       setState(() {
              //         isLoading = false;
              //       });
              //     } else {
              //       Get.snackbar(
              //         "Login Gagal",
              //         "Username atau Password Salah",
              //         snackPosition: SnackPosition.BOTTOM,
              //         animationDuration: const Duration(milliseconds: 400),
              //         duration: const Duration(milliseconds: 1500),
              //         padding: EdgeInsets.symmetric(horizontal:getProportionateScreenWidth(20), vertical:getProportionateScreenHeight(20)),
              //       );
              //       setState(() {
              //         isLoading = false;
              //       });
              //     }
              //   }
              // }
            },
            isLoading: isLoading,
          ),
        ],
      ),
    );
  }
}
