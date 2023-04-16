import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:travgo_ui/theme/nativeTheme.dart';
import 'package:travgo_ui/theme/themeService.dart';
import 'package:travgo_ui/views/splash/splashScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
 
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
 
  dynamic analytics;
  dynamic observer;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner:false,
        navigatorKey: Get.key,
       
        enableLog: true,
        theme: Themes.light,
        // initialBinding: NetworkBinding(),
        darkTheme: Themes.dark,
        themeMode: ThemeService().theme,
        locale: Get.deviceLocale,
        title: 'Flutter Demo',
        initialRoute: "SplashScreen",
        home: SplashScreen(
          a: analytics,
          o: observer,
        ));
  }
}
