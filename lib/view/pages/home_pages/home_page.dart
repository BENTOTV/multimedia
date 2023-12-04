import 'package:flutter/material.dart';
import 'package:mobile/widget/shared/theme_color.dart';
import 'package:mobile/widget/shared/theme_font.dart';
import 'package:mobile/widget/shared/theme_text_style.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

// late String nama;

class _HomePageState extends State<HomePage> {
  String selectedValue = 'Image 1'; // Default selected value
  @override
  Widget build(BuildContext context) {
    // var _img = [
    //   "assests/logo/amerika.png",
    //   "assests/logo/inggris.png",
    // ];

    // nama =
    //     (ModalRoute.of(context)!.settings.arguments! as Map)["nama"].toString();

    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          color: kPrimaryColorprime,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
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
                  const SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: kSecondColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListTile(
                      title: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10),
                        child: Text("Bagian 1",
                            style: grayTextStyle2.copyWith(
                                fontSize: 10, fontWeight: regular)),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10.0, bottom: 10.0),
                        child: Row(
                          children: [
                            Expanded(
                                child: Text(
                                    "Memahami frasa dasar,mengucapkan kalimat dasar",
                                    style: blackTextStyle.copyWith(
                                        fontSize: 12, fontWeight: semiBold),
                                    overflow: TextOverflow.clip)),
                          ],
                        ),
                      ),
                      trailing: IconButton(
                        iconSize: 20,
                        icon: Icon(
                          Icons.note_alt_outlined,
                          color: kGreyColor,
                          size: 20,
                        ),
                        onPressed: () {},
                      ),
                    ),

                    // Column(
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   children: [
                    //     Padding(
                    //       padding: const EdgeInsets.symmetric(
                    //           vertical: 10.0, horizontal: 10),
                    //       child: Text("Office Bidang SDM",
                    //           style: grayTextStyle2.copyWith(
                    //               fontSize: 10, fontWeight: regular)),
                    //     ),
                    //     Padding(
                    //       padding: const EdgeInsets.only(
                    //           left: 10.0, right: 10.0, bottom: 10.0),
                    //       child: Row(
                    //         children: [
                    //           const Icon(Icons.calendar_month_outlined,
                    //               color: kGreyColor),
                    //           Expanded(
                    //               child: Text(" (08:00 - 14:00)",
                    //                   style: blackTextStyle.copyWith(
                    //                       fontSize: 12, fontWeight: semiBold),
                    //                   overflow: TextOverflow.clip)),
                    //         ],
                    //       ),
                    //     ),

                    //   ],
                    // ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}

List<Map<String, String>> dropdownValues = [
  {'value': 'Image 1', 'image': "assests/logo/amerika.png"},
  {'value': 'Image 2', 'image': "assests/logo/inggris.png"},
];
