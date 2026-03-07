import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'licensecheck.dart';

class Gridview2 extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>_GridView2();
}
class _GridView2 extends State<StatefulWidget>{
  List<String>profile=["FOLOWING","LIKES","ADDRESS"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

         child: Container(
           child: Card(
             color: Colors.black12,
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [ GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                   shrinkWrap: true,
                   itemCount: profile.length,
                   itemBuilder:(context,index){
                     return InkWell(
                       child: Card(
                         child:
                         Center(
                           child:Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             crossAxisAlignment: CrossAxisAlignment.center,
                             children: [
                               Text(profile[index], style: TextStyle(color: Colors.purple , fontSize: 15 ),)
                             ],
                           ),
                         ),
                         color: Colors.lightBlue,
                       )
                       ,
                       onTap: (){
                         Navigator.push(context,MaterialPageRoute(builder: (context)=>Licensecheck()));

                       },
                       onDoubleTap: (){
                         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:
                         Text("on DOUBLE TAB", style: TextStyle( color: Colors.green, fontSize: 15),),
                           duration: Duration(seconds: 3),backgroundColor: Colors.yellow

                           ,
                         ));
                       },
                       onLongPress: (){
                         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:
                         Text("on long PREES", style: TextStyle( color: Colors.red, fontSize: 15),),
                           duration: Duration(seconds: 3),backgroundColor: Colors.lightBlue,

                         ));
                       },


                     );



                   }
               )

               ],
             ),
           ),
         ),

      ),
    );
  }

}