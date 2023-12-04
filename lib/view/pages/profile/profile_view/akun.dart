import 'package:flutter/material.dart';
import 'package:mobile/view/pages/profile/componen_profile/button_profile.dart';
import 'package:mobile/view/pages/profile/componen_profile/card_field_item_text_profile.dart';
import 'package:mobile/widget/compenent/card_detail.dart';
import 'package:mobile/widget/compenent/card_field_item_text.dart';
import 'package:mobile/widget/compenent/card_list.dart';
import 'package:mobile/widget/compenent/highlight_item_name.dart';
import 'package:mobile/widget/shared/theme_color.dart';
import 'package:mobile/widget/size_config.dart';

class Akun extends StatefulWidget {
  const Akun({super.key});

  @override
  State<Akun> createState() => _AkunState();
}

class _AkunState extends State<Akun> {
  var _DefaultTextController = TextEditingController();
  @override
  void initState() {
    _DefaultTextController = new TextEditingController(text: "UserRama");
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _screen = MediaQuery.of(context).size;
    final _formKey = GlobalKey<FormState>();

    final ScrollController _scrollController = ScrollController();

    return SingleChildScrollView(
      child: CardDetail(
        child: Column(
          children: <Widget>[
            SizedBox(height: getProportionateScreenHeight(20)),
            Text(
              "Detail Akun",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: getProportionateScreenHeight(10)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Username",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: getProportionateScreenHeight(10)),
                Container(
                  width: _screen.width * 0.80,
                  child: TextFormField(
                    controller: _DefaultTextController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(),
                      ),
                    ),
                    readOnly: true,
                    enabled: false,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
