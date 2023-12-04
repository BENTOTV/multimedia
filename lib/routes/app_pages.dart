import 'package:mobile/view/pages/home_pages/home_page.dart';
import 'package:mobile/view/pages/login_pages/view_login.dart';
import 'package:mobile/view/pages/main_page/main_page.dart';
import 'package:mobile/view/pages/profile/edit_profile/controller_edit_akun.dart';

import './app_routes.dart';

class AppPages {
  static final routes = {
    Routes.HOME: (ctx) => HomePage(),
    Routes.LOGIN: (ctx) => LoginPage(),
    Routes.MAINPAGE: (ctx) => MainPage(),
    Routes.EDITPROFILEPAGE: (ctx) => EditProfileView(),
  };
}
