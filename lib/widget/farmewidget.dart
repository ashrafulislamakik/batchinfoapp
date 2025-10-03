import 'package:flutter/material.dart';


class framewidget extends StatelessWidget {
  final String img,title;
  const framewidget({
    super.key, required this.img, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.red,

      child: Column(
        children: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(

              radius: 70,
              backgroundImage: AssetImage(img),
            ),
          ),
          SizedBox(height: 5,),
          Text("D-82 & D83 Batch Information",
            style: TextStyle(fontStyle:FontStyle.italic ,color: Colors.white),),
          ElevatedButton(onPressed: (){},
              child: Text(title))
        ],
      ),
    );
  }
}