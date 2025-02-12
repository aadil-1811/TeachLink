import 'package:cms/dbHelper/mongodb.dart';
import 'package:cms/pages/Student/Add/add_Student.dart';
import 'package:cms/pages/Student/Display/display_student.dart';
import 'package:cms/pages/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:cms/pages/loginPage.dart';
import 'package:cms/pages/main_page.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MongoDatabase.connect();

  runApp(const MyApp());
  configLoading();
}
void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.dark
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.yellow
    ..backgroundColor = Colors.green
    ..indicatorColor = Colors.yellow
    ..textColor = Colors.yellow
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = false;
    // ..customAnimation = CustomAnimation();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const splashScreen(),
        '/loginPage': (context) => const loginPage(),
        '/mainPage': (context) => const mainPage(),
        '/addStudent': (context) => const addStudent(),
        '/displayStudent': (context) => const DisplayStudent()
      },
      builder: EasyLoading.init(),
    );
  }
}
