import 'package:flutter/material.dart';

class teacherscontactw extends StatelessWidget {
  final String img,title,tex1,tex2;
  const teacherscontactw({
    super.key, required this.img, required this.title, required this.tex1, required this.tex2,
  });

  @override
  Widget build(BuildContext context) {

    submitbutton ()
    {
      showDialog(context: context, builder: (context)
      {
        return AlertDialog(
          title: Text("Are Sure ....."),
          
          actions: [
            ElevatedButton(onPressed: (){}, 
                child: Text("Ok"))
          ],
        );
      }
      );
    }
    return Card(
      color: Colors.yellow,


      margin: EdgeInsets.symmetric(vertical: 5),
      child:

      ListTile(
        leading: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              width: 3,color: Colors.black
            )
          ),
          child: CircleAvatar(
            radius: 25, backgroundImage: AssetImage(img),
          ),
        ),
        title: Text(title),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(tex1),
            Text(tex2)
          ],

        ),
        trailing:
        ElevatedButton(onPressed: (){
          submitbutton ();
        },
            child: Text("Details")),


      ),





    );
  }
}