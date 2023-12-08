import 'package:flutter/material.dart';
import 'package:mobile/view/pages/home_pages/home_page.dart';
import 'package:mobile/view/pages/poin_pages/poin.dart';
import 'package:mobile/view/pages/profile/profile_view/controller_akun.dart';
import 'package:mobile/view/pages/profile/profile_view/data_Diri.dart';
import 'package:mobile/view/pages/ujian_pages/ujian.dart';
import 'package:mobile/widget/compenent/bottom_navigation_box.dart';
import 'package:mobile/widget/shared/theme_color.dart';
import 'package:mobile/widget/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;
  PageController pageController = PageController();
  List<Widget> screens = [
    const HomePage(),
    const Ujian(),
    const Poin(),
    // const NotifikasiView(),
    // const AbsensiView(),
    const DataDiri(),
  ];
  List<dynamic> bottomItems = [
    BottomNavigationItem("Latihan", "assests/icons/approval.svg"),
    // BottomNavigationItem("Approval", "assets/icons/approval_delegation.svg"),
    // BottomNavigationItem("Presensi", "assets/icons/distance.svg"),
    BottomNavigationItem("Ujian", "assests/icons/report.svg"),
    BottomNavigationItem("Poin", "assests/icons/proyek.svg"),
    BottomNavigationItem("Profile", "assests/icons/profile.svg"),
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
  }

  @override
  void initState() {
    pageController = PageController(
      initialPage: selectedIndex,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: kGreyBackgroud,
      body: PageView.builder(
        controller: pageController,
        itemCount: screens.length,
        onPageChanged: (newPage) {
          setState(() {
            selectedIndex = newPage;
          });
        },
        itemBuilder: (BuildContext context, int index) {
          return screens[index];
        },
      ),
      bottomNavigationBar: BottomNavigationBox(
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          items: bottomItems
              .map(
                (item) => BottomNavigationBarItem(
                  icon: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: getProportionateScreenHeight(7)),
                      child:
                          // (item.label == "Approval")
                          // ? badges.Badge(
                          //     badgeContent: const Text('2',
                          //       style: TextStyle(fontSize: 12, color: Colors.white),
                          //     ),
                          //     child: SvgPicture.asset(
                          //       item.icon,
                          //       width: getProportionateScreenWidth(25),
                          //       height: getProportionateScreenHeight(20),
                          //       // ignore: deprecated_member_use
                          //       color: selectedIndex == bottomItems.indexOf(item) ? kPrimaryColorprime : kInActiveIconColor,
                          //     ),
                          //   )
                          // :
                          SvgPicture.asset(
                        item.icon,
                        width: getProportionateScreenWidth(25),
                        height: getProportionateScreenHeight(20),
                        // ignore: deprecated_member_use
                        color: selectedIndex == bottomItems.indexOf(item)
                            ? kPrimaryColorprime
                            : kInActiveIconColor,
                      )),
                  label: item.label,
                ),
              )
              .toList(),
          currentIndex: selectedIndex,
          selectedItemColor: kPrimaryColorprime,
          onTap: _onItemTapped,
          selectedFontSize: 14,
          unselectedFontSize: 14,
        ),
      ),
    );
  }
}
