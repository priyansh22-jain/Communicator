import 'package:flutter/material.dart';
import 'package:flutter_application_2/home_page.dart';
import 'package:flutter_application_2/routes.dart';
import 'package:flutter_application_2/work_page.dart';
import 'package:camera/camera.dart';

List<CameraDescription>? cameras;

void main() async {
  print("Hello");
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: Home_Page(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      routes: {
        "/": (context) => Home_Page(),
        Myroutes.home: (context) => Home_Page(),
        Myroutes.work: (context) => Work_Page(),
      },
    );
  }
}
