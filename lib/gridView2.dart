import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Gridview2 extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>_GridView2();
}
class _GridView2 extends State<StatefulWidget>{
  List<String>profile=["POST","FOLOWERS","FOLOWING","LIKES","ADDRESS"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
       child: InkWell(
         child: Container(
           child: Card(
             color: Colors.black12,
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                 shrinkWrap: true,

                 )

               ],
             ),
           ),
         ),
       ),
      ),
    );
  }

}