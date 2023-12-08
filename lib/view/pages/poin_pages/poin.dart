import 'package:flutter/material.dart';
import 'package:mobile/widget/shared/theme_color.dart';
import 'package:mobile/widget/size_config.dart';

class Poin extends StatefulWidget {
  const Poin({super.key});

  @override
  State<Poin> createState() => _PoinState();
}

String selectedValue = 'Image 1'; // Default selected value

class _PoinState extends State<Poin> {
  @override
  Widget build(BuildContext context) {
    final _screen = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
        height: _screen.height,
        width: _screen.width,
        child: Column(
          children: <Widget>[
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
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                    padding: EdgeInsets.all(20),
                    width: _screen.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: kPrimaryColorprime,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Modul Pelajaran 1",
                          style: TextStyle(color: Colors.white),
                        ),
                        Image.asset(
                          "assests/logo/book.png",
                          color: Colors.white,
                          height: getProportionateScreenHeight(50),
                          width: getProportionateScreenWidth(50),
                        ),
                      ],
                    )),
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                    padding: EdgeInsets.all(20),
                    width: _screen.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: kPrimaryColorprime,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Modul Pelajaran 2",
                          style: TextStyle(color: Colors.white),
                        ),
                        Image.asset(
                          "assests/logo/book.png",
                          color: Colors.white,
                          height: getProportionateScreenHeight(50),
                          width: getProportionateScreenWidth(50),
                        ),
                      ],
                    )),
              ),
            )
          ],
        ),
      )),
    );
  }
}

List<Map<String, String>> dropdownValues = [
  {'value': 'Image 1', 'image': "assests/logo/amerika.png"},
  {'value': 'Image 2', 'image': "assests/logo/inggris.png"},
];
