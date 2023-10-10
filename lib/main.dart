import 'package:flutter/material.dart';
import 'package:test_getx/page/home_page.dart';
import 'package:get/get.dart';
import 'package:test_getx/helper/init_controller.dart' as di;

import 'controller/ThemeController.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme: ThemeData.light(),
      darkTheme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.grey[900],
      ),
      home: HomePage(),
      initialBinding: BindingsBuilder(() {
        Get.put(ThemeController());
      }),
    );
  }
}
