import 'package:flutter/material.dart';
import 'package:mobile/view/pages/profile/componen_profile/button_profile.dart';
import 'package:mobile/view/pages/profile/componen_profile/card_field_item_text_profile.dart';
import 'package:mobile/widget/compenent/card_field_item_text.dart';
import 'package:mobile/widget/compenent/card_list.dart';
import 'package:mobile/widget/compenent/highlight_item_name.dart';
import 'package:mobile/widget/shared/theme_color.dart';
import 'package:mobile/widget/size_config.dart';

class DataPekerja extends StatefulWidget {
  const DataPekerja({super.key});

  @override
  State<DataPekerja> createState() => _DataPekerjaState();
}

class _DataPekerjaState extends State<DataPekerja> {
  @override
  Widget build(BuildContext context) {
    final _screen = MediaQuery.of(context).size;
    final _formKey = GlobalKey<FormState>();
    final ScrollController _scrollController = ScrollController();
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(height: getProportionateScreenHeight(10)),
          Text(
            "Detail Data Pekerja",
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          CardFieldItemTextProfile(
            label: "Jenis Pekerja",
            contentData: "Pegawai",
            flexLeftRow: 12,
            flexRightRow: 20,
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          CardFieldItemTextProfile(
            label: "Status Pekerja",
            contentData: "Tenaga Ahli",
            flexLeftRow: 12,
            flexRightRow: 20,
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          CardFieldItemTextProfile(
            label: "Detail Status Pekerja",
            contentData: "Apoteker",
            flexLeftRow: 12,
            flexRightRow: 20,
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          CardFieldItemTextProfile(
            label: "Jabatan",
            contentData: "Teknis Fungsional",
            flexLeftRow: 12,
            flexRightRow: 20,
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          CardFieldItemTextProfile(
            label: "NPWP",
            contentData: "1234567890",
            flexLeftRow: 12,
            flexRightRow: 20,
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          CardFieldItemTextProfile(
            label: "NIP",
            contentData: "1234567890",
            flexLeftRow: 12,
            flexRightRow: 20,
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          CardFieldItemTextProfile(
            label: "Tanggal Bergabung",
            contentData: "01/01/2023",
            flexLeftRow: 12,
            flexRightRow: 20,
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          CardFieldItemTextProfile(
            label: "Tanggal Selesai",
            contentData: "01/01/2023",
            flexLeftRow: 12,
            flexRightRow: 20,
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          CardFieldItemTextProfile(
            label: "Tanggal Pengangkatan",
            contentData: "01/01/2023",
            flexLeftRow: 12,
            flexRightRow: 20,
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ButtonProfile(
                  onClicked: () async {
                    await showDialog<void>(
                        context: context,
                        builder: (context) => AlertDialog(
                              content: Stack(
                                clipBehavior: Clip.none,
                                children: <Widget>[
                                  Positioned(
                                    right: -40,
                                    top: -40,
                                    child: InkResponse(
                                      onTap: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: const CircleAvatar(
                                        backgroundColor: Colors.red,
                                        child: Icon(Icons.close),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    constraints: BoxConstraints(
                                        minWidth: _screen.width,
                                        maxHeight: _screen.height),
                                    height: _screen.height * 0.70,
                                    width: _screen.width * 0.40,
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: <Widget>[
                                          Text(
                                            "History NPWP",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                            textAlign: TextAlign.left,
                                          ),
                                          SizedBox(
                                              height:
                                                  getProportionateScreenHeight(
                                                      10)),
                                          ListView.builder(
                                            itemBuilder: (context, index) {
                                              return CardList(
                                                child: ListTile(
                                                  contentPadding: EdgeInsets.symmetric(
                                                      horizontal:
                                                          getProportionateScreenWidth(
                                                              20.0),
                                                      vertical:
                                                          getProportionateScreenHeight(
                                                              10.0)),
                                                  title: HighlightItemName(
                                                    child: Text(
                                                      "${index + 1}",
                                                      style: const TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                  ),
                                                  subtitle: Padding(
                                                    padding: EdgeInsets.only(
                                                        top:
                                                            getProportionateScreenHeight(
                                                                20)),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: <Widget>[
                                                        CardFieldItemText(
                                                            label: "Nomer NPWP",
                                                            contentData:
                                                                "1234567890",
                                                            flexLeftRow: 12,
                                                            flexRightRow: 20),
                                                        SizedBox(
                                                            height:
                                                                getProportionateScreenHeight(
                                                                    10)),
                                                        CardFieldItemText(
                                                            label: "Status",
                                                            contentData:
                                                                "false",
                                                            flexLeftRow: 12,
                                                            flexRightRow: 20),
                                                        SizedBox(
                                                            height:
                                                                getProportionateScreenHeight(
                                                                    10)),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                            itemCount: 4,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            controller: _scrollController,
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ));
                  },
                  label: "History NPWP",
                ),
                ButtonProfile(
                  onClicked: () async {
                    await showDialog<void>(
                        context: context,
                        builder: (context) => AlertDialog(
                              content: Stack(
                                clipBehavior: Clip.none,
                                children: <Widget>[
                                  Positioned(
                                    right: -40,
                                    top: -40,
                                    child: InkResponse(
                                      onTap: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: const CircleAvatar(
                                        backgroundColor: Colors.red,
                                        child: Icon(Icons.close),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    constraints: BoxConstraints(
                                        minWidth: _screen.width,
                                        maxHeight: _screen.height),
                                    height: _screen.height * 0.70,
                                    width: _screen.width * 0.40,
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: <Widget>[
                                          Text(
                                            "History PTKP",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                            textAlign: TextAlign.left,
                                          ),
                                          SizedBox(
                                              height:
                                                  getProportionateScreenHeight(
                                                      10)),
                                          ListView.builder(
                                            itemBuilder: (context, index) {
                                              return CardList(
                                                child: ListTile(
                                                  contentPadding: EdgeInsets.symmetric(
                                                      horizontal:
                                                          getProportionateScreenWidth(
                                                              20.0),
                                                      vertical:
                                                          getProportionateScreenHeight(
                                                              10.0)),
                                                  title: HighlightItemName(
                                                    child: Text(
                                                      "${index + 1}",
                                                      style: const TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                  ),
                                                  subtitle: Padding(
                                                    padding: EdgeInsets.only(
                                                        top:
                                                            getProportionateScreenHeight(
                                                                20)),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: <Widget>[
                                                        CardFieldItemText(
                                                            label:
                                                                "Status PTKP",
                                                            contentData: "TK/0",
                                                            flexLeftRow: 12,
                                                            flexRightRow: 20),
                                                        SizedBox(
                                                            height:
                                                                getProportionateScreenHeight(
                                                                    10)),
                                                        CardFieldItemText(
                                                            label:
                                                                "Tanggal Dibuat",
                                                            contentData:
                                                                "1 Oktober 2023",
                                                            flexLeftRow: 12,
                                                            flexRightRow: 20),
                                                        SizedBox(
                                                            height:
                                                                getProportionateScreenHeight(
                                                                    10)),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                            itemCount: 4,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            controller: _scrollController,
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ));
                  },
                  label: "History PTKP",
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
