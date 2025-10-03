import 'package:batchapp/widget/gridwidget.dart';
import 'package:batchapp/widget/newwidget.dart';
import 'package:flutter/material.dart';

class assingment extends StatelessWidget {
  const assingment({super.key});

  @override
  Widget build(BuildContext context) {

    popup () {
      showDialog(context: context,

          builder: (context){
            return AlertDialog(
              title: Text("Al Bidaya .."),
              actions: [
                ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                },
                    child: Text("Ok"))
              ],
            );

          });
    }

    popup2 () {
      showDialog(context: context,

          builder: (context){
            return AlertDialog(
              title: Text("Al Bidaya2 .."),
              actions: [
                ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                },
                    child: Text("Ok2"))
              ],
            );

          });
    }



    return Scaffold(
      body:

      SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
        
              Image.asset("img_1.png"),
              Positioned(
                bottom: 100,
                left: 20,
                child: Text('Explore the Woarld',style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40
                ),),
              ),
        
              SizedBox( height: 10,),
              Positioned(
                bottom: 32,
                right: 16,
                left: 16,
        
                child: TextField(
        
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      prefix: Icon(Icons.search),
                      hintText: "Search destination...",
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none
                      )
                  ),
        
                ),
              )
            ],),
        
          Align(
            alignment: Alignment.topLeft,
            child: Text("Top Destinations",style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),),
          ),
        
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  gridwidget(img: "img_1.png", title: "London"),
                  SizedBox(width: 10,),
                  gridwidget(img: "img_1.png", title: "America"),
                  SizedBox(width: 10,),
                  gridwidget(img: "img_2.png", title: "America")
                ],
              ),
            ),
        
            widgetnew(img: "img_1.png", title: "agasgh", subtitle: "hsdhjhd", onpressed: () {
              popup();

            },),
            widgetnew(img: "img_2.png", title: "jhdwdddnkj", subtitle: "kjkdjddjdk", onpressed: () {
              popup2();
            },
            )
        
          ],
        ),
      )
    );
  }
}

