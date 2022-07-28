import 'package:flutter/material.dart';
import 'package:flutter_application_2/routes.dart';
import 'package:flutter_application_2/main.dart';
import 'package:camera/camera.dart';

class Home_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Communicator",
        ),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Image.asset(
                "assets/images/gesture.jpg",
                height: 450,
                width: 400,
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "Start Recogntion by pressing START button",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13.5,
                ),
                textScaleFactor: 1.2,
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                child: Text(
                  "Start",
                  style: TextStyle(color: Colors.white),
                ),
                style: TextButton.styleFrom(backgroundColor: Colors.deepPurple),
                onPressed: () {
                  Navigator.pushNamed(context, Myroutes.work);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
