import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginAccount extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _LoginAccount();

}
class _LoginAccount extends State<StatefulWidget> {
  String email = "admin";
  int pass = 122;
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.person_2_rounded , size: 20 ,),
        title: Text("Login Account ", style: TextStyle(color: Colors.black ),),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child:
        Container(
          height: 700 , width: 350,

          child: Card(//master card
            margin: EdgeInsetsGeometry.all(0),
            color: Colors.black12,
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    height: 300, width: 350,
                    child:
                    Card(
                      color: Colors.white,
                      child:
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextField(
                            controller: emailController,
                            decoration: InputDecoration(

                              label: const Text("Enter Your Email", style: TextStyle(color: Colors.black38, fontSize:15 ),),
                              hintText: "khikgyig356@email.com ",
                            ),
                          ),
                          TextField(
                            controller: passController,
                            decoration: InputDecoration(
                              label: const Text("Enter Your Password", style: TextStyle(color: Colors.black38, fontSize: 15),),
                            ),
                          ),
                          SizedBox(height: 20,),
                          Container(
                            height: 30,width: 70 ,
                            child:
                            InkWell(
                              child:
                              Card(

                                child:
                                Center(
                                    child: const Text("Submit" , style: TextStyle(color: Colors.white),)) ,
                                color: Colors.black26,

                              ),
                              onTap: (){
                                if (emailController.text == email && int.tryParse(passController.text.toString())! == pass ){
                                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                    content: const Text("email pass are matched"),
                                    duration: Duration(seconds: 3),
                                  ));
                                } else{
                                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                    content: const Text("Email and pass is not matched"),
                                    duration: Duration(seconds: 3),)
                                  );

                                }
                              },
                            ),
                          )
                        ],
                      ),

                    )
                ),

              ],
            ),
          ),


        )
      ),

    );
  }



}