import 'package:flutter/material.dart';


class SecondScreen extends StatefulWidget{
  const SecondScreen({super.key});
  @override
  State<SecondScreen> createState() => _SecondScreen();
  

  
}
class _SecondScreen extends State<SecondScreen>{

   TextEditingController nameController =TextEditingController();
   TextEditingController collegeController = TextEditingController();
   TextEditingController passwordController = TextEditingController();
   TextEditingController confirmPasswordController = TextEditingController();
   Color buttonColor = const Color(0xFF5F372B);

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( backgroundColor: Colors.red ,
        title: Text("Second Screen" ,
          style: TextStyle( color: Colors.white  ),),
        leading: Icon(Icons.looks_two, size: 20,)
      ),
      body:Center(
        child:
        Column(
          children: [
            Expanded(child: Row(
              children: [
                Text("Name"),
                TextField(
                  controller: nameController,
                  maxLines: 1,
                  decoration: InputDecoration(
                      label: const Text("name", style: TextStyle(fontSize: 20 , color: Colors.blue),),
                      hintText: " e.g. Ram "
                  ),
                )

              ],
            ))



            ,
            TextField(
              controller: collegeController,
              maxLines: 2,
              decoration: InputDecoration(
                labelText: "College",
                hintText: " e.g. Rayat Bahra University "
              ),
            ),
            TextField(
              controller:  passwordController ,
              maxLines: 1 ,
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "ex.8hdfiuh",
              ),
            ),
            TextField(
              controller: confirmPasswordController,
              maxLines: 1,
              decoration: InputDecoration(
                labelText: " Confirm Password ",
                hintText: " Same as Password" ,
              ),
            ),
            ElevatedButton(onPressed: (){
              if (passwordController.text==confirmPasswordController.text){
                setState(() {
                  buttonColor = Color(0xFFB08968);
                  S

                });
              }
            },
              style: ElevatedButton.styleFrom(
                backgroundColor: buttonColor
              ), child: const Text("Submit"),

            )

          ],
        ),
      )
      
      
    );
    
    
    
  }
  
}