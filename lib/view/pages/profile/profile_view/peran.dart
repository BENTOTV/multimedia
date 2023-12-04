import 'package:flutter/material.dart';
import 'package:mobile/view/pages/profile/componen_profile/button_profile.dart';
import 'package:mobile/view/pages/profile/componen_profile/card_field_item_text_profile.dart';
import 'package:mobile/widget/compenent/card_detail.dart';
import 'package:mobile/widget/compenent/card_field_item_text.dart';
import 'package:mobile/widget/compenent/card_list.dart';
import 'package:mobile/widget/compenent/highlight_item_name.dart';
import 'package:mobile/widget/shared/theme_color.dart';
import 'package:mobile/widget/size_config.dart';

class Peran extends StatefulWidget {
  const Peran({super.key});

  @override
  State<Peran> createState() => _PeranState();
}

class _PeranState extends State<Peran> {
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
              "List Peran",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: getProportionateScreenHeight(10)),
            ListView.builder(
              itemBuilder: (context, index) {
                return CardList(
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(20.0),
                        vertical: getProportionateScreenHeight(10.0)),
                    title: HighlightItemName(
                      child: Text(
                        "${index + 1}",
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    subtitle: Padding(
                      padding: EdgeInsets.only(
                          top: getProportionateScreenHeight(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          CardFieldItemText(
                              label: "Kode Peran",
                              contentData: "XXXXXXX",
                              flexLeftRow: 12,
                              flexRightRow: 20),
                          SizedBox(height: getProportionateScreenHeight(10)),
                          CardFieldItemText(
                              label: "Nama Peran",
                              contentData: "Full Akses",
                              flexLeftRow: 12,
                              flexRightRow: 20),
                          SizedBox(height: getProportionateScreenHeight(10)),
                        ],
                      ),
                    ),
                  ),
                );
              },
              itemCount: 2,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              controller: _scrollController,
            )
          ],
        ),
      ),
    );
  }
}
