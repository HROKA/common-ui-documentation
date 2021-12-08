import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_storage/get_storage.dart';
// for device preview
// import 'package:flutter/foundation.dart';
// import 'package:device_preview/device_preview.dart';
import 'package:url_strategy/url_strategy.dart';

import './screens/index.dart';
// import '../controllers/AppLanguage.dart';

void main() async {
  setPathUrlStrategy();

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.transparent, // navigation bar color
    statusBarColor: Colors.transparent, // status bar color
    statusBarIconBrightness: Brightness.dark, // status bar icons' color
    systemNavigationBarIconBrightness:
        Brightness.dark, //navigation bar icons' color
  ));
  await GetStorage.init();
  // Get.put(FullDrawerController());
  // Get.put(AppLanguageController());
  // Get.put(MyAppController());

  runApp(MyApp());

  // for device preview
  // runApp(DevicePreview(
  //   enabled: !kReleaseMode,
  //   builder: (context) => MyApp(), // Wrap your app
  // ));
}
