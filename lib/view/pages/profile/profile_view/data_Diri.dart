import 'package:flutter/material.dart';
import 'package:mobile/view/pages/profile/componen_profile/button_logout.dart';
import 'package:mobile/view/pages/profile/componen_profile/card_field_item_text_profile.dart';
import 'package:mobile/view/pages/profile/componen_profile/card_field_item_text_profile_bank.dart';
import 'package:mobile/widget/compenent/badges_notifikasi.dart';
import 'package:mobile/widget/compenent/card_field_item_text.dart';
import 'package:mobile/widget/compenent/card_list.dart';
import 'package:mobile/widget/shared/theme_color.dart';
import 'package:mobile/widget/size_config.dart';

class DataDiri extends StatefulWidget {
  const DataDiri({super.key});

  @override
  State<DataDiri> createState() => _DataDiriState();
}

String selectedValue = 'Image 1';

class _DataDiriState extends State<DataDiri> {
  @override
  Widget build(BuildContext context) {
    final _screen = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              color: kProfileBanner,
              height: _screen.height * 0.30,
              child: Column(
                children: [
                  Center(
                      child: Stack(
                    children: [
                      Container(
                        width: getProportionateScreenWidth(150),
                        height: getProportionateScreenHeight(150),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://i.pinimg.com/564x/a5/70/3e/a5703ea8ff2210d22ed4b21008c60267.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0.0,
                        bottom: 0.0,
                        child: Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red,
                          ),
                          child: Center(
                              child: Icon(
                            Icons.camera_alt_outlined,
                            color: Colors.white,
                          )),
                        ),
                      ),
                    ],
                  )),
                  SizedBox(height: getProportionateScreenHeight(5)),
                  Text(
                    "I Wayan Agus Juniartha",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )
                ],
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(15)),
            Column(
              children: <Widget>[
                Text(
                  "Statistik",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: getProportionateScreenHeight(10)),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: _screen.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DropdownButton<String>(
                    value: selectedValue,
                    items: dropdownValues.map((Map<String, String> item) {
                      return DropdownMenuItem<String>(
                        value: item['value'],
                        child: Row(
                          children: [
                            Image.asset(
                              item['image']!,
                              width: 30,
                              height: 30,
                            ),
                            SizedBox(width: 10),
                          ],
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedValue = newValue!;
                        print(selectedValue);
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                      width: _screen.width * 0.40,
                      height: getProportionateScreenHeight(50),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.black)),
                      child: ListTile(
                        leading: Image.asset(
                          "assests/logo/piala.png",
                          height: getProportionateScreenHeight(20.0),
                          width: getProportionateScreenWidth(20.0),
                        ),
                        title: Text("1"),
                        subtitle: Text("Jumlah Latihan",
                            style: TextStyle(fontSize: 13)),
                      )),
                  Container(
                      width: _screen.width * 0.40,
                      height: getProportionateScreenHeight(50),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.black)),
                      child: ListTile(
                        leading: Image.asset(
                          "assests/logo/bintang.png",
                          height: getProportionateScreenHeight(20.0),
                          width: getProportionateScreenWidth(20.0),
                        ),
                        title: Text("1"),
                        subtitle: Text(
                          "Jumlah Ujian",
                          style: TextStyle(fontSize: 13),
                        ),
                      ))
                ],
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(10)),
            Container(
              width: _screen.width * 0.91,
              child: ButtonLogout(
                onClicked: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<Map<String, String>> dropdownValues = [
  {'value': 'Image 1', 'image': "assests/logo/amerika.png"},
  {'value': 'Image 2', 'image': "assests/logo/inggris.png"},
];
