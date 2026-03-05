import 'package:flutter/material.dart';

class ListviewScreen extends StatefulWidget{
  const ListviewScreen ({super.key});

  @override
  State<StatefulWidget> createState() => _ListviewScreen();

  }
  class _ListviewScreen extends State<ListviewScreen>{
  Color buttonColor =  Color(0xFF5F372B);
  List<String>classA=["jatin","rahul","rohit","anshu","taran","mandeep"];




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
             ElevatedButton(onPressed: (){
               setState(() {
                 buttonColor=Colors.purple;
                 ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                   content: const Text("Snackbarrrrr"),
                   duration: Duration(seconds: 3),
                   shape: RoundedRectangleBorder(),
                   backgroundColor: Colors.amberAccent,
                 ));
               });
             },child: const Text("hi"),style: ElevatedButton.styleFrom(
               backgroundColor: buttonColor
             ),
             ),



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
                   leading: Icon(Icons.check_box),

                 ),
               );
               }
             ),

             ),



           ],
         ),

   ),

   );
  }

  }

