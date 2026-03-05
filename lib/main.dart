import 'package:flutter/material.dart';
import 'package:flutter_appy/licensecheck.dart';
import 'package:flutter_appy/listView.dart';
import 'package:flutter_appy/stateful_screen.dart';

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
      home: const Licensecheck()

      );

  }
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});






  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter_appy"),
        leading: Icon(Icons.shop_two,size: 40,color: Colors.cyan,),
        backgroundColor: Colors.amberAccent,
        actions: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 10,),
          child: Icon(Icons.search,size: 40, ))
        ]
      ),

      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment. center,
          children: [
            Container(height: 100,width: 300, color: Colors.blue,
            padding: EdgeInsets.symmetric(vertical: 20,horizontal:10 ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.person_rounded, size: 70, color: Colors.cyan,),
                Column(
                  children: [
                    const Text("Anandita Sharma" , style: TextStyle(fontSize: 20 , color: Colors.black),),
                    const Text("Class : 10th ", style: TextStyle(fontSize: 15 , color: Colors.black38),)
                  ],
                )
              ],
            )
            ),
            SizedBox(height: 10,),
            Container( height: 50 ,width: 300 , color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.chat_bubble_outlined ,size: 30 ,),
                  Icon(Icons.notifications, size: 30 ,),
                  Icon(Icons.settings,size: 30,)
                ],
              ),
               
            )

            ,
            SizedBox(height: 10, ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(height: 30,width: 40, color: Colors.green ,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text("Attendence ")
                    ],
                  ),
                )

              ],

            ),
            SizedBox(height: 25,width: 300,
            child: 
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text("Subjects ", style: TextStyle(color: Colors.black, fontSize: 20  ),)
                ],
              ),
            )

            
          ],
        ),
      )
    );

  }

}









