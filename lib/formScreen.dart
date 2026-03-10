import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class  Formscreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>_Formscreen();
}
class _Formscreen extends State<Formscreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController gmailController = TextEditingController();
  TextEditingController passWController = TextEditingController();

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      leading: Icon(Icons.padding_rounded),
      title: const Text("Forms"),
    ),
    body: Form(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      key: _formKey,
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(
            controller: gmailController,
            decoration: InputDecoration(
              label: const Text("gmail"),
              hintText: "jfhnb784@gmail.com"
            ),
            validator: (value){
              RegExp emailPattern =
              RegExp(r'/^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/');
              if (!emailPattern.hasMatch(gmailController.text)){
                return " enter vaild email ";
              }
              else {
                return null;
              }
            },
            maxLines: 2,
          ),
          TextFormField(
            controller: passWController,
            decoration: InputDecoration(
                label: const Text("Password"),
            ),
            validator: (value){

              if(passWController.value.toString().length !=8 ){
                return " enter eight digit ";
              }
              else{
                return null;
              }
            },

            maxLines: 2,
          ),
          ElevatedButton(onPressed: (){
            setState(() {
              if(_formKey.currentState!.validate()){
                 ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:
                 Text("trueeeee"),duration: Duration(seconds: 3),));
              }
              });
          }, child:  Text("submit"))

        ],
      ),
    ),
  );
  }
}