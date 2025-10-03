import 'package:batchapp/alert.dart';
import 'package:batchapp/widget/containerwidget.dart';
import 'package:batchapp/widget/gridwidget.dart';
import 'package:batchapp/widget/newwidget.dart';
import 'package:flutter/material.dart';


class tabdrwer extends StatelessWidget {
  const tabdrwer({super.key});

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
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab & Drawer View"),
          centerTitle: true,

          bottom: TabBar(
              indicatorColor: Colors.amber,
              indicatorPadding: EdgeInsets.all(4),
              indicatorWeight: 6,
              isScrollable: true,


              tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: "Home",
            ),
            Tab(
              icon: Icon(Icons.account_box),
              text: "Page",
            ),
            Tab(
              icon: Icon(Icons.settings),
              text: "Settings",
            ),

            Tab(
              icon: Icon(Icons.home),
              text: "Home",
            ),

                Tab(
                  icon: Icon(Icons.home),
                  text: "Home",
                ),
                Tab(
                  icon: Icon(Icons.home),
                  text: "Home",
                ),
                Tab(
                  icon: Icon(Icons.home),
                  text: "Home",
                ),
          ]),
        ),

        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(child: Column(
                children: [
                  CircleAvatar(
                    radius: 44,
                    backgroundImage: AssetImage("img.png"),
                  ),
                  Text("MD.Ashraful islam Akik"),
                  Text("ashrafulislam3195@gmail.com",style: TextStyle(fontSize: 8),),
                ],
              )),
              
              ListTile(
                title: Text("Home"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> alert()));
                },
              ),
              Divider(),
              ListTile(
                title: Text("Home"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> alert()));
                },
              ),
              Divider(),
              ListTile(
                title: Text("Home"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> alert()));
                },
              ),
              Divider(),
              ListTile(
                title: Text("Home"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> alert()));
                },
              ),
              Divider()
            ],
          ),
        ),

        body: TabBarView(children: [
          containerwidget(img: "img_1.png", title: "Akik"),
          gridwidget(img: "img.png", title: "akik"),
          widgetnew(img: "img_1.png", title: "Akik", subtitle: "Ashraful", onpressed: (){
            popup();
          })
        ]),
      ),
    );
  }
}
