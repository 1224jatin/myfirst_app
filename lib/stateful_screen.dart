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
   Color buttonColor = Color(0xFF5F372B);
   List<String>items=["jatin ","rahul","rohit","ram","sham","anshu","taran","mandeep"];


   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( backgroundColor: Colors.red ,
        title: Text("Second Screen" ,
          style: TextStyle( color: Colors.white  ),),
        leading: Icon(Icons.looks_two, size: 20,)
      ),
      body:Center(
        child:Padding(padding:
        const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                      label: const Text("name", style: TextStyle(fontSize: 20 , color: Colors.blue),),
                      hintText: " e.g. Ram "
                  ),
                )
            ,
            TextField(
              controller: collegeController,
              maxLines: 2,
              decoration: InputDecoration(
                  labelText: "College",
                  hintText: " e.g. Rayat Bahra University ",
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
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: const Text("Color Change"),
                    duration: Duration(seconds: 3),
                    shape: RoundedRectangleBorder(),
                    backgroundColor: Colors.red,
                  ));
                });
              }
            },
              style: ElevatedButton.styleFrom(
                  backgroundColor: buttonColor
              ), child: const Text("Submit"),

            ),
            Expanded(child:
                /*
           ListView(
              children: [
                Container(
                  height:50,width: 500,
                  child: const Text("jatin", style: TextStyle(fontSize: 10,color: Colors.deepOrange),),
                ),
                Container( height:50,width: 500,
                  child: const Text("Rahul", style: TextStyle(fontSize: 10,color: Colors.deepOrange),),
                ),
                Container( height:50,width: 500,
                  child: const Text("rohit", style: TextStyle(fontSize: 10,color: Colors.deepOrange),),)

              ],

            )*/
            ListView.builder(itemCount:items.length ,
            itemBuilder: (context, index){
              Color tileColor;

              if(index == 0){
                tileColor=Colors.blue;
              }
              else if( index == 1){
                tileColor=Colors.green;
              }
              else if(index == 2){
                tileColor= Colors.purple;
              }
              else if (index == 3){
                tileColor=Colors.red;
              }
              else if (index == 4){
                tileColor=Colors.yellow;
              }
              else{
                tileColor=Colors.brown;
              }
              return
                Container(
                  margin: EdgeInsets.all(5),

                  child: ListTile(
                    title: Text(items[index]),
                  ),
                  decoration: BoxDecoration(
                      color: tileColor,
                      borderRadius: BorderRadius.circular(5)

                  ),
                );
            }
            )
            )

          ],
        ),)

      )
      
      
    );
    
    
    
  }
  
}