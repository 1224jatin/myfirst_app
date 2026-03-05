import 'package:flutter/material.dart';
import 'package:flutter_appy/main.dart';

class ListviewScreen extends StatefulWidget{
  const ListviewScreen ({super.key});

  @override
  State<StatefulWidget> createState() => _ListviewScreen();

  }
  class _ListviewScreen extends State<ListviewScreen>{
  List<String>classA=["jatin","rahul","rohit","anshu","taran","mandeep",];



  @override
  Widget build(BuildContext context) {
   return Scaffold(
   appBar: AppBar(backgroundColor: Colors.red,
   title: const Text("List View" , style: TextStyle(color: Colors.black , fontSize:30 ),),
   leading: Icon(Icons.list_alt_sharp ,size: 40 ),
   ),
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             Expanded(child:
             /*ListView(
               children: [
                 Container( height: 30 ,width: 600, margin: EdgeInsets.all(3), color: Colors.pinkAccent,
                   child:
                   const Text("Jatin" , style: TextStyle( color: Colors.white, fontSize: 10 ),),
                 ),
                 Container( height: 30 ,width: 600, color: Colors.yellow ,margin: EdgeInsets.all(3),
                   child:
                   const Text("Rohit" , style: TextStyle( color: Colors.white, fontSize: 10 ),),
                 ),
                 Container( height: 30 ,width: 600, color: Colors.redAccent ,margin: EdgeInsets.all(3),
                   child:
                   const Text("Rahul" , style: TextStyle( color: Colors.white, fontSize: 10 ),),
                 ),
                 Container( height: 30 ,width: 600, color: Colors.green ,margin: EdgeInsets.all(3),
                   child:
                   const Text("ram" , style: TextStyle( color: Colors.white, fontSize: 10 ),),
                 )
               ],

             ),*/
               ListView.builder(itemCount:classA.length,
               itemBuilder:(context,index){
               return Container( margin: EdgeInsets.all(4),
                 child:
                 ListTile(
                   title: Text(classA[index]),
                   tileColor: Colors.blue,
                 ),
               );
               }
             )
             )
           ],
         ),

   ),

   );
  }

  }

