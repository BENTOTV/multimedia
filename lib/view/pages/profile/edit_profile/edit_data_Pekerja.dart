import 'package:flutter/material.dart';
import 'package:mobile/view/pages/profile/componen_profile/button_profile.dart';
import 'package:mobile/view/pages/profile/componen_profile/card_field_item_text_profile.dart';
import 'package:mobile/widget/compenent/card_field_item_text.dart';
import 'package:mobile/widget/compenent/card_list.dart';
import 'package:mobile/widget/compenent/highlight_item_name.dart';
import 'package:mobile/widget/shared/theme_color.dart';
import 'package:mobile/widget/size_config.dart';
import 'package:intl/intl.dart';

class EditDataPekerja extends StatefulWidget {
  const EditDataPekerja({super.key});

  @override
  State<EditDataPekerja> createState() => _EditDataPekerjaState();
}

class _EditDataPekerjaState extends State<EditDataPekerja> {
  TextEditingController dateinput = TextEditingController();
  TextEditingController dateinputselesai = TextEditingController();
  TextEditingController dateinputangkat = TextEditingController();
  @override
  void initState() {
    dateinput.text = "";
    dateinputangkat.text = "";
    dateinputselesai.text = "";
    super.initState();
  }

  String selectedJenisPegawai = " ";
  String selectedDetailStatusPekerja = " ";
  String selectedStatusPekerja = " ";
  String selectedPTKP = " ";
  String selectedJabatan = " ";
  @override
  Widget build(BuildContext context) {
    final _screen = MediaQuery.of(context).size;
    final _formKey = GlobalKey<FormState>();
    final ScrollController _scrollController = ScrollController();
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(height: getProportionateScreenHeight(20)),
          Text(
            "Detail Data Pekerja",
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          Container(
            width: _screen.width * 0.75,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Jenis Pekerja",
                    style: const TextStyle(
                      color: Colors.black54,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  DropdownButtonFormField(
                      decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none),
                      // dropdownColor: Colors.blueAccent,
                      value: selectedJenisPegawai,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedJenisPegawai = newValue!;
                        });
                      },
                      items: dropdownItemsJenisPekerja),
                  Divider(
                    color: Colors.black,
                    thickness: 1,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          Container(
            width: _screen.width * 0.75,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Detail Status Pekerja",
                    style: const TextStyle(
                      color: Colors.black54,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  DropdownButtonFormField(
                      decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none),
                      // dropdownColor: Colors.blueAccent,
                      value: selectedDetailStatusPekerja,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedDetailStatusPekerja = newValue!;
                        });
                      },
                      items: dropdownItemsDetailStatusPekerja),
                  Divider(
                    color: Colors.black,
                    thickness: 1,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          Container(
            width: _screen.width * 0.75,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: <Widget>[
                      Text(
                        "NPWP",
                        style: const TextStyle(
                          color: Colors.black54,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  TextFormField(
                    textAlign: TextAlign.left,
                    // controller: _usernameTextController,
                    keyboardType: TextInputType.text,
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                    // onChanged: (value) {
                    //   if (value.isNotEmpty) {
                    //     setState(() {
                    //       usernameError = false;
                    //     });
                    //   }
                    //   return;
                    // },
                    // validator: (value) {
                    //   if (value!.isEmpty) {
                    //     setState(() {
                    //       usernameError = true;
                    //     });
                    //   }
                    //   return null;
                    // },
                    decoration: InputDecoration(
                        // hintText: "Nama",
                        // hintStyle: const TextStyle(
                        //     fontSize: 14, color: Color.fromRGBO(217, 217, 217, 1)),
                        // filled: true,
                        // fillColor: colorCardItem,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                        ),
                        focusedBorder: InputBorder.none,
                        // OutlineInputBorder(
                        //   borderRadius: BorderRadius.circular(5),
                        //   borderSide:
                        //       const BorderSide(color: Colors.transparent),
                        // ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                        ),
                        disabledBorder: InputBorder.none),
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 1,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          Container(
            width: _screen.width * 0.75,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: <Widget>[
                      Text(
                        "NIP",
                        style: const TextStyle(
                          color: Colors.black54,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  TextFormField(
                    textAlign: TextAlign.left,
                    // controller: _usernameTextController,
                    keyboardType: TextInputType.text,
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                    // onChanged: (value) {
                    //   if (value.isNotEmpty) {
                    //     setState(() {
                    //       usernameError = false;
                    //     });
                    //   }
                    //   return;
                    // },
                    // validator: (value) {
                    //   if (value!.isEmpty) {
                    //     setState(() {
                    //       usernameError = true;
                    //     });
                    //   }
                    //   return null;
                    // },
                    decoration: InputDecoration(
                        // hintText: "Nama",
                        // hintStyle: const TextStyle(
                        //     fontSize: 14, color: Color.fromRGBO(217, 217, 217, 1)),
                        // filled: true,
                        // fillColor: colorCardItem,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                        ),
                        focusedBorder: InputBorder.none,
                        // OutlineInputBorder(
                        //   borderRadius: BorderRadius.circular(5),
                        //   borderSide:
                        //       const BorderSide(color: Colors.transparent),
                        // ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                        ),
                        disabledBorder: InputBorder.none),
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 1,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          Container(
            width: _screen.width * 0.75,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Status PTKP",
                    style: const TextStyle(
                      color: Colors.black54,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  DropdownButtonFormField(
                      decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none),
                      // dropdownColor: Colors.blueAccent,
                      value: selectedPTKP,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedPTKP = newValue!;
                        });
                      },
                      items: dropdownItemsPTKP),
                  Divider(
                    color: Colors.black,
                    thickness: 1,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          Container(
            width: _screen.width * 0.75,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Status Pekerja",
                    style: const TextStyle(
                      color: Colors.black54,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  DropdownButtonFormField(
                      decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none),
                      // dropdownColor: Colors.blueAccent,
                      value: selectedStatusPekerja,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedStatusPekerja = newValue!;
                        });
                      },
                      items: dropdownItemsStatusPekerja),
                  Divider(
                    color: Colors.black,
                    thickness: 1,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          Container(
            width: _screen.width * 0.75,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Jabatan",
                    style: const TextStyle(
                      color: Colors.black54,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  DropdownButtonFormField(
                      decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none),
                      // dropdownColor: Colors.blueAccent,
                      value: selectedJabatan,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedJabatan = newValue!;
                        });
                      },
                      items: dropdownItemsJabatan),
                  Divider(
                    color: Colors.black,
                    thickness: 1,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          Container(
            width: _screen.width * 0.75,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Tanggal Bergabung",
                    style: const TextStyle(
                      color: Colors.black54,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Container(
                      child: Center(
                          child: TextField(
                    controller:
                        dateinput, //editing controller of this TextField
                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.calendar_today,
                          color: Colors.black,
                        ),
                        border: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none //icon of text field
                        ),
                    readOnly:
                        true, //set it true, so that user will not able to edit text
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(
                              2000), //DateTime.now() - not to allow to choose before today.

                          lastDate: DateTime(2101));

                      if (pickedDate != null) {
                        print(
                            pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                        String formattedDate =
                            DateFormat('dd/MM/yyyy').format(pickedDate);
                        print(
                            formattedDate); //formatted date output using intl package =>  2021-03-16
                        //you can implement different kind of Date Format here according to your requirement

                        setState(() {
                          dateinput.text =
                              formattedDate; //set output date to TextField value.
                        });
                      } else {
                        print("Date is not selected");
                      }
                    },
                  ))),
                  Divider(
                    color: Colors.black,
                    thickness: 1,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          Container(
            width: _screen.width * 0.75,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Tanggal Selesai",
                    style: const TextStyle(
                      color: Colors.black54,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Container(
                      child: Center(
                          child: TextField(
                    controller:
                        dateinputselesai, //editing controller of this TextField
                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.calendar_today,
                          color: Colors.black,
                        ),
                        border: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none //icon of text field
                        ),
                    readOnly:
                        true, //set it true, so that user will not able to edit text
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(
                              2000), //DateTime.now() - not to allow to choose before today.

                          lastDate: DateTime(2101));

                      if (pickedDate != null) {
                        print(
                            pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                        String formattedDate =
                            DateFormat('dd/MM/yyyy').format(pickedDate);
                        print(
                            formattedDate); //formatted date output using intl package =>  2021-03-16
                        //you can implement different kind of Date Format here according to your requirement

                        setState(() {
                          dateinputselesai.text =
                              formattedDate; //set output date to TextField value.
                        });
                      } else {
                        print("Date is not selected");
                      }
                    },
                  ))),
                  Divider(
                    color: Colors.black,
                    thickness: 1,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          Container(
            width: _screen.width * 0.75,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Tanggal Pengangkatan",
                    style: const TextStyle(
                      color: Colors.black54,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Container(
                      child: Center(
                          child: TextField(
                    controller:
                        dateinputangkat, //editing controller of this TextField
                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.calendar_today,
                          color: Colors.black,
                        ),
                        border: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none //icon of text field
                        ),
                    readOnly:
                        true, //set it true, so that user will not able to edit text
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(
                              2000), //DateTime.now() - not to allow to choose before today.

                          lastDate: DateTime(2101));

                      if (pickedDate != null) {
                        print(
                            pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                        String formattedDate =
                            DateFormat('dd/MM/yyyy').format(pickedDate);
                        print(
                            formattedDate); //formatted date output using intl package =>  2021-03-16
                        //you can implement different kind of Date Format here according to your requirement

                        setState(() {
                          dateinputangkat.text =
                              formattedDate; //set output date to TextField value.
                        });
                      } else {
                        print("Date is not selected");
                      }
                    },
                  ))),
                  Divider(
                    color: Colors.black,
                    thickness: 1,
                  ),
                ],
              ),
            ),
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
                ),
              ],
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(30)),
        ],
      ),
    );
  }
}

List<DropdownMenuItem<String>> get dropdownItemsJenisPekerja {
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("Pilih salah satu..."), value: " "),
    DropdownMenuItem(child: Text("Pegawai"), value: "Pegawai"),
    DropdownMenuItem(child: Text("Kepala Bidang"), value: "Kepala Bidang"),
    DropdownMenuItem(child: Text("Kepala Proyek"), value: "Kepala Proyek"),
    DropdownMenuItem(child: Text("Juru Kunci"), value: "Juru Kunci"),
  ];
  return menuItems;
}

List<DropdownMenuItem<String>> get dropdownItemsDetailStatusPekerja {
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("Pilih salah satu..."), value: " "),
    DropdownMenuItem(child: Text("Tenaga Ahli"), value: "Tenaga Ahli"),
  ];
  return menuItems;
}

List<DropdownMenuItem<String>> get dropdownItemsPTKP {
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("Pilih salah satu..."), value: " "),
    DropdownMenuItem(child: Text("Tenaga Ahli"), value: "Tenaga Ahli"),
  ];
  return menuItems;
}

List<DropdownMenuItem<String>> get dropdownItemsStatusPekerja {
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("Pilih salah satu..."), value: " "),
    DropdownMenuItem(child: Text("Tenaga Ahli"), value: "Tenaga Ahli"),
  ];
  return menuItems;
}

List<DropdownMenuItem<String>> get dropdownItemsJabatan {
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("Pilih salah satu..."), value: " "),
    DropdownMenuItem(child: Text("Tenaga Ahli"), value: "Tenaga Ahli"),
  ];
  return menuItems;
}
