import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'package:mobile/view/pages/profile/edit_profile/edit_data_Diri.dart';
import 'package:mobile/view/pages/profile/edit_profile/edit_data_Pekerja.dart';
import 'package:mobile/view/pages/profile/profile_view/akun.dart';
import 'package:mobile/view/pages/profile/profile_view/data_Diri.dart';
import 'package:mobile/view/pages/profile/profile_view/data_Pekerja.dart';
import 'package:mobile/view/pages/profile/profile_view/peran.dart';
import 'package:mobile/widget/shared/theme_color.dart';
import 'package:mobile/widget/size_config.dart';
import 'package:mobile/widget/theme/appbar_theme_color.dart';
import 'package:provider/provider.dart';

class EditProfileView extends StatefulWidget {
  const EditProfileView({Key? key}) : super(key: key);

  @override
  _EditProfileViewState createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  String title = " ";
  late String yearglobal = DateTime.now().year.toString();
  late String monthglobal;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode _autovalidate = AutovalidateMode.disabled;
  @override
  void initState() {
    super.initState();
    // Future.delayed(Duration.zero, () {
    //   final _providerIzin =
    //       Provider.of<DropdownPerencanaan>(context, listen: false);

    //   _providerIzin.fetchPeriode();
    // });
    monthglobal = DateTime.now().month.toString();
    controller = TabController(length: 2, vsync: this);
    controller.addListener(() {
      setState(() {
        if (controller.index == 0) {
          title = "Data Diri";
        } else if (controller.index == 1) {
          title = "Data Pekerja";
        } else if (controller.index == 2) {
          title = "Peran";
        } else {
          title = "Akun";
        }
      });
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  late List<String> listData = [];
  late List<String> listIndexData = [];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Profile",
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          flexibleSpace: const AppBarThemeColor(),
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
                icon:
                    Icon(Icons.check_rounded, color: Colors.white, size: 34.0),
                onPressed: () {}),
          ],
        ),
        body: Column(
          children: <Widget>[
            Material(
              elevation: 2,
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            width: getProportionateScreenWidth(1),
                            color: const Color.fromRGBO(0, 0, 0, 0.08)))),
                child: SizedBox(
                  width: double.infinity,
                  height: getProportionateScreenHeight(40),
                  child: TabBar(
                    controller: controller,
                    indicatorColor: kPrimaryColorprime,
                    labelStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Poppins"),
                    labelColor: kPrimaryColorprime,
                    unselectedLabelColor: const Color.fromRGBO(0, 0, 0, 0.61),
                    tabs: const <Widget>[
                      Tab(text: "Data Diri"),
                      Tab(text: "Data Pekerja"),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: controller,
                children: <Widget>[
                  EditDataDiri(),
                  EditDataPekerja(),

                  // BasicOperasionalSdm(),
                  // BasicOperasionalSdmHistory(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<DropdownMenuItem<String>> get dropdownItems {
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("Pilih Bulan"), value: " "),
    DropdownMenuItem(child: Text("Januari"), value: "01"),
    DropdownMenuItem(child: Text("Februari"), value: "02"),
    DropdownMenuItem(child: Text("Maret"), value: "03"),
    DropdownMenuItem(child: Text("April"), value: "04"),
    DropdownMenuItem(child: Text("Mei"), value: "05"),
    DropdownMenuItem(child: Text("Juni"), value: "06"),
    DropdownMenuItem(child: Text("Juli"), value: "07"),
    DropdownMenuItem(child: Text("Agustus"), value: "08"),
    DropdownMenuItem(child: Text("September"), value: "09"),
    DropdownMenuItem(child: Text("Oktober"), value: "10"),
    DropdownMenuItem(child: Text("November"), value: "11"),
    DropdownMenuItem(child: Text("Desember"), value: "12"),
  ];
  return menuItems;
}
