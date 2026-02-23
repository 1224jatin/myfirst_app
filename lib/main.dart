import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My First App",
      debugShowCheckedModeBanner: false,
      home: const MyHome()
    );

  }
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(" First App developed by Jatin", style: TextStyle(
                fontSize: 20,color: Color(0x0000FFFF)
              )),
              const Text("from RBU", style: TextStyle(
                  fontSize : 25,color: Color(0x000000ff)
              ),)
            ],
        ),
      ),
    );
  }

}





