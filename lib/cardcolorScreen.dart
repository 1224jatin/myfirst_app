import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardcolorScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _CardcolorScreen();
} 
class _CardcolorScreen extends State<CardcolorScreen> {
  List<String> cardItems =["folowers","Likes","Folowing","post","jatin"];



   int selectedIndex = -1 ;
   
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
           GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
           crossAxisSpacing: 2,
           mainAxisSpacing: 10),

               shrinkWrap: true,
               itemCount: cardItems.length,
                itemBuilder: (context,index){

                  Color cardColor = Colors.brown;

                  if(index == selectedIndex){
                    if(index == 0 ){
                      cardColor = Colors.green;
                    }
                    else if (index == 1){
                      cardColor = Colors.pinkAccent;
                    }
                    else if (index == 2){
                      cardColor= Colors.black38;
                    }
                    else if (index==3){
                      cardColor = Colors.lightGreenAccent;
                    }
                    else if (index == 4){
                      cardColor= Colors.greenAccent;
                    }
                  }

             return InkWell(
               onTap: () {
                 setState(() {
                   selectedIndex=index;
                 });
               },
               child: Card(

                 color: cardColor,
                 child: Center(
                   child: Text(cardItems[index]),

                 ),

               ),
                 );
               },

             )





         ],



  )
  )
  );
}
}