import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridViewScreen extends StatefulWidget{
  @override

  State<StatefulWidget> createState() =>_GridViewScreen();
}
class _GridViewScreen extends State<GridViewScreen>{
  List<String>items=["Likes","Folowers","post","folowing"];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar( leading: Icon(Icons.grid_view_rounded , size: 15  ),
       title: Text("GridView Screen", style: TextStyle(color: Colors.lightBlue,
           fontSize: 15),),),
     body: Center(
     child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       crossAxisAlignment: CrossAxisAlignment.center,
       children: [
         GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
             shrinkWrap: true,
             itemCount: items.length,
             itemBuilder:(context,index){
           return InkWell(
             child: Card(
               child:
               Center(
                 child:Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Text(items[index], style: TextStyle(color: Colors.purple , fontSize: 15 ),)
                   ],
                 ),
               ),
               color: Colors.lightBlue,
             )
             ,
             onTap: (){
               ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:
               Text("hloooo", style: TextStyle( color: Colors.lightBlue, fontSize: 15),),
                 duration: Duration(seconds: 3),
               ));
             },

           );



             }
             )


       ],
     )

     ),
   );
  }

}