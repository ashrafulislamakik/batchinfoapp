
import 'package:batchapp/home.dart';
import 'package:batchapp/studentsinfo.dart';
import 'package:batchapp/widget/cardwidget.dart';
import 'package:flutter/material.dart';

import 'alert.dart';
import 'classroutine.dart';

class batchinfomain1 extends StatelessWidget {

  final List <Map <String,dynamic>> courser =[

    {
      "image" : "img_3.png",
      "title" : "Dhaka international University Information App",
      "Text1" : "ব্যাচ ১১",
      "Text2" : "৬ সিট বাকি",
      "Text3" : "৬ দিন বাকি",
      "page": studentsinfo(),
      "Text4" : "Students info"
    },

    {
      "image" : "img_5.png",
      "title" : "Dhaka international University Information App",
      "Text1" : "ব্যাচ ৬",
      "Text2" : "৮৬ সিট বাকি",
      "Text3" : "৪০ দিন বাকি",
      "page": home(),
      "Text4" : "Teachers info"
    },

    {
      "image" : "img_6.png",
      "title" : "Dhaka international University Information App ",
      "Text1" : "ব্যাচ ৭",
      "Text2" : "৭৫ সিট বাকি",
      "Text3" : "৩৯ দিন বাকি",
      "page": alert(),
      "Text4" : "Class Room info"
    },

    {
      "image" : "img_4.png",
      "title" : "Dhaka international University Information App",
      "Text1" : "ব্যাচ ১৩",
      "Text2" : "৬৫ সিট বাকি",
      "Text3" : "৪১ দিন বাকি",
      "page": clasroutine(),
      "Text4" : "Class Routine"
    },

  ];


  //const assignmentmainpage({super.key});

  @override
  Widget build(BuildContext context) {

    submitbutton() {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            //title: Center(child: Text("About Of Owner")),

            
            content: Column(
              children: [
                Container(
                  width: 80, // ছবির width
                  height: 80, // ছবির height
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 3,
                      color: Colors.black,
                    ),
                    image: DecorationImage(
                      image: AssetImage("Ashraful3.jpg"),
                      fit: BoxFit.cover, // contain দিলে zoom হবে না
                    ),
                  ),
                ),
                
                Text("MD. Ashraful islam Akik",style: TextStyle(fontWeight: FontWeight.bold),),
                Divider(),
                Text("Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.aspernatur aut odit aut fugit, sed quia "
                    "consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.",style: TextStyle(color: Colors.black),),
              ],
            ),
            
            
            
            
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Ok"),
              )
            ],
          );
        },
      );
    }


    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.account_box),label: "home"),
            BottomNavigationBarItem(icon: Icon(Icons.phone_callback),label: "Phone"),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
          ]),


      appBar: AppBar(
        title: Text("HOME PAGE",style: TextStyle(fontWeight: FontWeight.w900,color: Colors.black),),
        centerTitle: false,
        backgroundColor: Colors.white54,
        actions: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: GestureDetector(

              onTap: (){
                submitbutton ();
                // Navigator.push(context, MaterialPageRoute(builder: (context)=> alert(
                //     )));
              },

              child: Container(

                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 2,color: Colors.blueAccent
                  )
                ),


                child: CircleAvatar(
                  radius: 20,backgroundImage: AssetImage("ashraful2.jpg"),
                ),
              ),
            ),
          )
        ],
      ),


      drawer: Drawer(
        backgroundColor: Colors.green,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Center(child: Text("About App Owner",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15),)),
            ),

            Divider(),

            DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.green
                ),
                child: Column(
              children: [

                Container(

                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 3,color: Colors.black
                    )

                  ),

                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage("ashraful.jpg"),
                  ),
                ),


                SizedBox(height: 10,),
                Text("MD. Ashraful islam Akik",style: TextStyle(color: Colors.white,fontSize: 15),),
                Text("015817-46965",style: TextStyle(color: Colors.white,fontSize: 10),),

              ],
            )),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 350, width: 38,

                decoration: BoxDecoration(
                  color: Colors.green,
                  border: Border.all(
                    color: Colors.black,width: 3
                  ),
                  borderRadius: BorderRadius.circular(15)
                ),

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.aspernatur aut odit aut fugit, sed quia "
                      "consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.",style: TextStyle(color: Colors.black),),
                ),



              ),
            ),

            
          ],
        ),
      ),

      body: GridView.builder(
          itemCount: courser.length,

          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context,index){
            return cardwidget(
              image: courser [index]["image"]!,
              title: courser [index]["title"]!,
              Text1: courser [index]["Text1"]!,
              Text2: courser [index]["Text2"]!,
              Text3: courser [index]["Text3"]!,
              onpressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> courser[index]["page"]!));

              }, Text4: courser [index]['Text4']!,


            );
          }),
    );
  }
}


