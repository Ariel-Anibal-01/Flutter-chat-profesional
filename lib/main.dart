import 'package:chat_profesional/src/pages/login/login_page.dart';
import 'package:chat_profesional/src/pages/register/register_page.dart';
import 'package:chat_profesional/src/utils/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Delivery App Flutter',
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => LoginPage()),
        GetPage(name: '/register', page: () => RegisterPage())
      ],
      theme: ThemeData(
        primaryColor: MyColors.primaryColor,
      ),
      navigatorKey: Get.key,
    );
  }
}
