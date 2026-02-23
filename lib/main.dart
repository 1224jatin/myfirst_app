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
          mainAxisAlignment: MainAxisAlignment.center ,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              Container( height: 100 ,width: 100 ,color: Colors.brown,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text("POST", style: TextStyle(
                    color: Colors.black87 , fontSize: 10
                  ),),
              const Text("Followers", style: TextStyle(
                  color: Colors.black87 , fontSize: 10
              ),)
                ],
              ),
            ),
          Container( height: 100 ,width: 100 ,color: Colors.brown  ,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("Followers", style: TextStyle(
                    color: Colors.black87 , fontSize: 10
                 ),),
                const Text("1.2k", style: TextStyle(
                color: Colors.black87 , fontSize: 10
            ),)

              ],


            ),
          ),
            Container( height: 100 ,width: 100 ,color: Colors .brown,
          child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("Followings", style: TextStyle(
                    color: Colors.black87 , fontSize: 10
                ),), const Text("180", style: TextStyle(
                    color: Colors.black87 , fontSize: 10
                ),)
              ]
          )

            )
]
            ),
            Container(
              height: 200 , width: 300 , color: Colors.blueGrey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment. center,
                children: [
                  const Text("About Me ! ", style: TextStyle(
                    fontSize: 20 , color: Colors.black87
                  ),), const Text("Passinate Flutter developer with experince  ", style: TextStyle(
                      fontSize: 10 , color: Colors.black
                  ),)
                ],
              ),
            ),
            Container(
              height: 50 , width: 300 , color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text("Follow Me ! ", style: TextStyle( fontSize: 20 , color: Colors.white
                  ),)
                ],
              ),
            )

             ]

        )

      )
    );
  }

}





