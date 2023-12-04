import 'package:flutter/material.dart';
import 'package:mobile/view/pages/profile/componen_profile/card_field_item_text_profile.dart';
import 'package:mobile/view/pages/profile/componen_profile/card_field_item_text_profile_bank.dart';
import 'package:mobile/widget/compenent/badges_notifikasi.dart';
import 'package:mobile/widget/compenent/card_field_item_text.dart';
import 'package:mobile/widget/compenent/card_list.dart';
import 'package:mobile/widget/shared/theme_color.dart';
import 'package:mobile/widget/size_config.dart';
import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:file_picker/file_picker.dart';
import 'package:intl/intl.dart';

class EditDataDiri extends StatefulWidget {
  const EditDataDiri({super.key});

  @override
  State<EditDataDiri> createState() => _EditDataDiriState();
}

class _EditDataDiriState extends State<EditDataDiri> {
  TextEditingController dateinput = TextEditingController();
  @override
  void initState() {
    dateinput.text = "";
    super.initState();
  }

  late File display;
  String selectedKewarganegaraan = " ";
  String selectedIdentitas = " ";
  String selectedAgama = " ";
  String selectedPerkawinan = " ";
  String selectedProvinsi = " ";
  String selectedKabupaten = " ";
  String selectedKecamatan = " ";
  String selectedDesa = " ";
  int selectedOption = 1;
  @override
  Widget build(BuildContext context) {
    final _screen = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            color: kProfileBanner,
            height: _screen.height * 0.30,
            child: Center(
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
                  child: TextButton(
                    onPressed: () {
                      _pickFile();
                    },
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
                ),
              ],
            )),
          ),
          SizedBox(height: getProportionateScreenHeight(15)),
          Column(
            children: <Widget>[
              Text(
                "Data Diri",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
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
                            "Nama Lengkap",
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
                        "Kewarganegaraan",
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
                          value: selectedKewarganegaraan,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedKewarganegaraan = newValue!;
                            });
                          },
                          items: dropdownItemsKewarganegaraan),
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
                        "Jenis Identitas",
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
                          value: selectedIdentitas,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedIdentitas = newValue!;
                            });
                          },
                          items: dropdownItemsIdentitas),
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
                            "No. Identitas",
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
                        "Jenis Kelamin",
                        style: const TextStyle(
                          color: Colors.black54,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: _screen.width * 0.35,
                            child: ListTile(
                              title: const Text(
                                'Laki-Laki',
                                style: TextStyle(fontSize: 12),
                              ),
                              leading: Radio<int>(
                                value: 1,
                                groupValue: selectedOption,
                                // Change the fill color when selected

                                onChanged: (int? value) {
                                  setState(() {
                                    selectedOption = value!;
                                  });
                                },
                              ),
                            ),
                          ),
                          Container(
                            width: _screen.width * 0.40,
                            child: ListTile(
                              title: const Text('Perempuan',
                                  style: TextStyle(fontSize: 12)),
                              leading: Radio<int>(
                                value: 2,
                                groupValue: selectedOption,
                                onChanged: (int? value) {
                                  setState(() {
                                    selectedOption = value!;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
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
                        "Tanggal Lahir",
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
                        "Agama",
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
                          value: selectedAgama,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedAgama = newValue!;
                            });
                          },
                          items: dropdownItemsAgama),
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
                        "Status Perkawinan",
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
                          value: selectedPerkawinan,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedPerkawinan = newValue!;
                            });
                          },
                          items: dropdownItemsPerkawinan),
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
                        "Provinsi",
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
                          value: selectedProvinsi,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedProvinsi = newValue!;
                            });
                          },
                          items: dropdownItemsProvinsi),
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
                        "Kabupaten",
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
                          value: selectedKabupaten,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedKabupaten = newValue!;
                            });
                          },
                          items: dropdownItemsKabupaten),
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
                        "Kecamatan",
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
                          value: selectedKecamatan,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedKecamatan = newValue!;
                            });
                          },
                          items: dropdownItemsKecamatan),
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
                        "Desa",
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
                          value: selectedDesa,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedDesa = newValue!;
                            });
                          },
                          items: dropdownItemsDesa),
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
                            "Alamat",
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
                            "No. Identitas",
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
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          Column(
            children: <Widget>[
              Text(
                "Data Kontak",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
              CardFieldItemTextProfile(
                label: "Telepon",
                contentData: "089786756576",
                flexLeftRow: 12,
                flexRightRow: 20,
              ),
              SizedBox(height: getProportionateScreenHeight(10)),
              CardFieldItemTextProfile(
                label: "Email",
                contentData: "hello.world@gmail.com",
                flexLeftRow: 12,
                flexRightRow: 20,
              ),
              SizedBox(height: getProportionateScreenHeight(10)),
              CardFieldItemTextProfile(
                label: "Website",
                contentData: "hello-world.company.com",
                flexLeftRow: 12,
                flexRightRow: 20,
              ),
              SizedBox(height: getProportionateScreenHeight(10)),
              CardFieldItemTextProfile(
                label: "Media Sosial",
                contentData: "instagram.com/hello-world",
                flexLeftRow: 12,
                flexRightRow: 20,
              ),
              SizedBox(height: getProportionateScreenHeight(10)),
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          Column(
            children: <Widget>[
              Text(
                "Data Bank",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
              CardFieldItemTextProfileBank(
                label: "BCA",
                contentData: "Andi",
                contentData2: "0123456789",
                flexLeftRow: 12,
                flexRightRow: 20,
              ),
              SizedBox(height: getProportionateScreenHeight(10)),
              CardFieldItemTextProfileBank(
                label: "BNI",
                contentData2: "0123456789",
                contentData: "Budi",
                flexLeftRow: 12,
                flexRightRow: 20,
              ),
              SizedBox(height: getProportionateScreenHeight(10)),
              CardFieldItemTextProfileBank(
                label: "BRI",
                contentData: "Rian",
                contentData2: "0123456789",
                flexLeftRow: 12,
                flexRightRow: 20,
              ),
              SizedBox(height: getProportionateScreenHeight(10)),
              CardFieldItemTextProfileBank(
                label: "Mandiri",
                contentData: "Surya",
                contentData2: "0123456789",
                flexLeftRow: 12,
                flexRightRow: 20,
              ),
              SizedBox(height: getProportionateScreenHeight(10)),
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
        ],
      ),
    );
  }

  void _pickFile() async {
    try {
      final result = await FilePicker.platform.pickFiles(type: FileType.any);
      final file = result!.files.first;
      setState(() {
        display = File(file.path.toString());
      });
    } catch (e) {}

    // final file = result.files.first;
    // _openFile(file);
  }

  void _openFile(PlatformFile file) {
    OpenFile.open(file.path);
  }
}

List<DropdownMenuItem<String>> get dropdownItemsKewarganegaraan {
  List<DropdownMenuItem<String>> menuItemsKewarganegaraan = [
    DropdownMenuItem(child: Text("Pilih salah satu..."), value: " "),
    DropdownMenuItem(child: Text("WNI"), value: "WNI"),
    DropdownMenuItem(child: Text("WNA"), value: "WNA"),
  ];
  return menuItemsKewarganegaraan;
}

List<DropdownMenuItem<String>> get dropdownItemsAgama {
  List<DropdownMenuItem<String>> menuItemsAgama = [
    DropdownMenuItem(child: Text("Pilih salah satu..."), value: " "),
    DropdownMenuItem(child: Text("Hindu"), value: "Hindu"),
    DropdownMenuItem(child: Text("Islam"), value: "Islam"),
    DropdownMenuItem(child: Text("Katolik"), value: "Katolik"),
    DropdownMenuItem(child: Text("Protestan"), value: "Protestan"),
    DropdownMenuItem(child: Text("Budha"), value: "Budha"),
    DropdownMenuItem(child: Text("Konghucu"), value: "Konghucu"),
  ];
  return menuItemsAgama;
}

List<DropdownMenuItem<String>> get dropdownItemsIdentitas {
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("Pilih salah satu..."), value: " "),
    DropdownMenuItem(child: Text("KTP"), value: "KTP"),
    DropdownMenuItem(child: Text("SIM"), value: "SIM"),
    DropdownMenuItem(child: Text("Pasport"), value: "Pasport"),
  ];
  return menuItems;
}

List<DropdownMenuItem<String>> get dropdownItemsPerkawinan {
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("Pilih salah satu..."), value: " "),
    DropdownMenuItem(child: Text("Kawin"), value: "Kawin"),
    DropdownMenuItem(child: Text("Belum Kawin"), value: "Belum Kawin"),
    DropdownMenuItem(child: Text("Cerai"), value: "Cerai"),
    DropdownMenuItem(child: Text("Cerai Mati"), value: "Cerai Mati"),
  ];
  return menuItems;
}

List<DropdownMenuItem<String>> get dropdownItemsProvinsi {
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("Pilih salah satu..."), value: " "),
    DropdownMenuItem(child: Text("Bali"), value: "Bali"),
    DropdownMenuItem(child: Text("Jawa"), value: "Jawa"),
    DropdownMenuItem(child: Text("Kalimantan"), value: "Pasport"),
  ];
  return menuItems;
}

List<DropdownMenuItem<String>> get dropdownItemsKabupaten {
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("Pilih salah satu..."), value: " "),
    DropdownMenuItem(child: Text("Karangasem"), value: "Karangasem"),
    DropdownMenuItem(child: Text("Gianyar"), value: "Gianyar"),
    DropdownMenuItem(child: Text("Badung"), value: "Badung"),
  ];
  return menuItems;
}

List<DropdownMenuItem<String>> get dropdownItemsKecamatan {
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("Pilih salah satu..."), value: " "),
    DropdownMenuItem(child: Text("Denpasar Timur"), value: "Denpasar Timur"),
    DropdownMenuItem(child: Text("Denpasar Barat"), value: "Denpasar Barat"),
    DropdownMenuItem(child: Text("Denpasar Utara"), value: "Denpasar Utara"),
    DropdownMenuItem(
        child: Text("Denpasar Selatan"), value: "Denpasar Selatan"),
  ];
  return menuItems;
}

List<DropdownMenuItem<String>> get dropdownItemsDesa {
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("Pilih salah satu..."), value: " "),
    DropdownMenuItem(child: Text("Kesiman Timur"), value: "Kesiman Timur"),
    DropdownMenuItem(child: Text("Kesiman Barat"), value: "Kesiman Barat"),
    DropdownMenuItem(child: Text("Kesiman Utara"), value: "Kesiman Utara"),
    DropdownMenuItem(child: Text("Kesiman Selatan"), value: "Kesiman Selatan"),
  ];
  return menuItems;
}
