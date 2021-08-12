import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:Common_UI_Docs/utils/Constants.dart';

// import '../../controllers/AppLanguage.dart';
import '../index.dart';
// import '../../language/translation.dart';
// import '../../utils/index.dart';

class MyApp extends StatelessWidget {
  // final AppLanguageController appLanguageController =
  //     Get.find<AppLanguageController>();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // locale: Locale(appLanguageController.appLocale),
      // builder: (BuildContext context, Widget child) {
      //   return ScrollConfiguration(
      //     behavior:
      //         MyScrollBehavior(), // This behavior disables the effect of the default scroll behavior.
      //     child: FlutterSmartDialog(child: child),
      //   );
      // },
      theme: ThemeData(
        fontFamily: 'Righteous',
        //  appLanguageController.appLocale == ARABIC_VALUE
        //     ? 'GeFlow'
        //     : 'Futura',
      ),

      // translations: Translation(),
      // we use the fallbackLocale to handel any error in language files and use the en as default language
      fallbackLocale: Locale('en'),
      debugShowCheckedModeBanner: false,
      initialRoute: HOME_ROUTE,
      getPages: [
        GetPage(name: HOME_ROUTE, page: () => Home()),
        GetPage(name: CONTAINERS_ROUTE, page: () => Containers()),
        GetPage(name: TEXTS_ROUTE, page: () => Texts()),
        GetPage(name: DATE_PICKERS_ROUTE, page: () => DatePickers()),
      ],
    );
  }
}
