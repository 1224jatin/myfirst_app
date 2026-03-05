import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Licensecheck extends StatefulWidget {
  const Licensecheck({super.key});

  @override
  State<StatefulWidget> createState()=> _Licensecheck();
}

class _Licensecheck extends State<Licensecheck>{

  TextEditingController ageController = TextEditingController();
  Color buttonColor = Colors.pink;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.garage),
      title: const Text("Licence Apply"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: ageController,
              decoration: InputDecoration(
                label: const Text("Enter your age = ", style: TextStyle(color: Colors.purple,),
                ),
                  hintText: " e.g = 18 ,30 "
              )),
            ElevatedButton(onPressed: (){
              if (int.tryParse(ageController.text.trim())!>=18 ){
                setState(() {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: const Text("you are eligible"),
                    duration: Duration(seconds: 3),
                    shape: RoundedRectangleBorder(),
                    backgroundColor: Colors.red,
                  ));
                }
                );

              }else{
                setState(() {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:
                      Text("You are not eligible "),
                    duration: Duration(seconds: 3 ),
                  ));
                });

              }
            }, child: const Text("submit" ,  style: TextStyle(color: Colors.black),))
          ],

        )
      ),
    );
  }

}