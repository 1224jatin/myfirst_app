import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardcolorScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _CardcolorScreen();
} 
class _CardcolorScreen extends State<CardcolorScreen> {
  List<String> cardItems =["folowers","Likes","Folowing","post","jatin"];
  List<Colors> cardColors = [Colors.red]

   late  int selectedIndex;
   
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: 
     Center(
       child: 
       Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
               shrinkWrap: true,
               itemCount: cardItems.length
               , itemBuilder: (context,index){
                 Color cardColor=Colors.red;
             return InkWell(

               child:  Card(
               margin: EdgeInsets.all(10),
                 color: cardColor,
                 child: Container(
                   padding: EdgeInsets.all(50),
                     child:  Text(cardItems[index]),
                 ),


               ),
               onTap: (){
                 selectedIndex=index;
                 if(selectedIndex==0){
                   cardColor=Colors.green;
                 }
                 else if (selectedIndex==1){
                   cardColor=Colors.pinkAccent;
                 }
                 else if (selectedIndex==2){
                   cardColor=Colors.black38;
                 }
                 else if (selectedIndex==3){
                   cardColor=Colors.lightGreenAccent;
                 }
                 else if (selectedIndex==4){
                   cardColor=Colors.greenAccent;
                 }
               },
               
             );
               }
             
           )
         ],
       )
       )
     );
   
  }

}