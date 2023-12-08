import 'package:mobile/view/pages/home_pages/home_page.dart';
import 'package:mobile/view/pages/login/body.dart';

import 'package:mobile/view/pages/main_page/main_page.dart';
import 'package:mobile/view/pages/profile/edit_profile/controller_edit_akun.dart';
import 'package:mobile/view/pages/register/body.dart';
import 'package:mobile/view/pages/ujian_pages/ujian_view/ujian_view.dart';

import './app_routes.dart';

class AppPages {
  static final routes = {
    Routes.HOME: (ctx) => HomePage(),
    Routes.LOGIN: (ctx) => LoginView(),
    Routes.MAINPAGE: (ctx) => MainPage(),
    Routes.REGISTER: (ctx) => RegisterView(),
    Routes.UJIAN: (ctx) => UjianView(),
    Routes.EDITPROFILEPAGE: (ctx) => EditProfileView(),
  };
}
