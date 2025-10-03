import 'package:flutter/material.dart';

class widgetnew extends StatelessWidget {
  final String img,title,subtitle;
  final VoidCallback onpressed;
  const widgetnew({
    super.key, required this.img, required this.title, required this.subtitle, required this.onpressed,
  });

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
    title: Text("Al Bidaya 2.."),
    actions: [
    ElevatedButton(onPressed: (){
    Navigator.pop(context);
    },
    child: Text("Ok2"))
    ],
    );

    });
    }
    return Card(
      child: ListTile(
        leading: Image.asset(img),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Container(
          height: 30, width: 70,
          //color: Colors.blueAccent,
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10)
          ),
          child: 
              
              ElevatedButton(onPressed: onpressed,

                  child: Text("Book Now",style: TextStyle(fontSize: 8),))
          
            

        ),



      ),
    );
  }
}
