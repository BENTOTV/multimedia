import 'package:flutter/material.dart';
import 'package:mobile/routes/app_routes.dart';
import 'package:mobile/widget/shared/theme_color.dart';
import 'package:mobile/widget/size_config.dart';

class Ujian extends StatefulWidget {
  const Ujian({super.key});

  @override
  State<Ujian> createState() => _UjianState();
}

String selectedValue = 'Image 1'; // Default selected value

class _UjianState extends State<Ujian> {
  @override
  Widget build(BuildContext context) {
    final _screen = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: SizedBox(
            height: _screen.height,
            width: _screen.width,
            child: Column(
              children: <Widget>[
                Container(
                  width: _screen.width,
                  height: _screen.height * 0.35,
                  color: kPrimaryColorprime,
                  child: Image.asset(
                    "assests/logo/amico.png",
                    height: getProportionateScreenHeight(200),
                    width: getProportionateScreenWidth(200),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
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
                ),
                Center(
                  child: Container(
                    width: _screen.width * 0.75,
                    child: ListTile(
                      title: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Ujian 1",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      subtitle: Container(
                        padding: EdgeInsets.all(20),
                        width: _screen.width * 0.75,
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.star_border_rounded,
                                  color: Colors.black,
                                  size: 50,
                                ),
                                Icon(
                                  Icons.star_border_rounded,
                                  color: Colors.black,
                                  size: 50,
                                ),
                                Icon(
                                  Icons.star_border_rounded,
                                  color: Colors.black,
                                  size: 50,
                                ),
                              ],
                            ),
                            TextButton(
                                style: TextButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 75),
                                    elevation: 2,
                                    backgroundColor: kPrimaryColorprime),
                                onPressed: () {
                                  Navigator.pushNamed(
                                    context,
                                    Routes.UJIAN,
                                  );
                                },
                                child: Text(
                                  "Mulai",
                                  style: TextStyle(color: Colors.white),
                                ))
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    width: _screen.width * 0.75,
                    child: ListTile(
                      title: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Ujian 2",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      subtitle: Container(
                        padding: EdgeInsets.all(20),
                        width: _screen.width * 0.75,
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.star_border_rounded,
                                  color: Colors.black,
                                  size: 50,
                                ),
                                Icon(
                                  Icons.star_border_rounded,
                                  color: Colors.black,
                                  size: 50,
                                ),
                                Icon(
                                  Icons.star_border_rounded,
                                  color: Colors.black,
                                  size: 50,
                                ),
                              ],
                            ),
                            TextButton(
                                style: TextButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 75),
                                    elevation: 2,
                                    backgroundColor: kPrimaryColorprime),
                                onPressed: () {
                                  Navigator.pushNamed(
                                    context,
                                    Routes.UJIAN,
                                  );
                                },
                                child: Text(
                                  "Mulai",
                                  style: TextStyle(color: Colors.white),
                                ))
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

List<Map<String, String>> dropdownValues = [
  {'value': 'Image 1', 'image': "assests/logo/amerika.png"},
  {'value': 'Image 2', 'image': "assests/logo/inggris.png"},
];
