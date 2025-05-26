import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color bulbColor = Colors.grey;
  String TName = "ON";
  String HNAme = " LED OFF";
  int ledState = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("IOT APP 08"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(HNAme, style: TextStyle(fontSize: 30)),
              SizedBox(height: 10),
              Icon(Icons.lightbulb, color: bulbColor, size: 100),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (ledState == 0) {
                      ledState = 1;
                      bulbColor = Colors.yellow;
                      TName = "OFF";
                      HNAme = "LED ON";
                    } else if (ledState == 1) {
                      ledState = 0;
                      bulbColor = Colors.grey;
                      TName = "ON";
                      HNAme = "LED OFF";
                    }
                  });
                },
                child: Text(
                  TName,
                  style: TextStyle(color: Colors.purple, fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
