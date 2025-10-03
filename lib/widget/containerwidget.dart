import 'package:flutter/material.dart';

class containerwidget extends StatelessWidget {
  final String img,title;
  const containerwidget({
    super.key, required this.img, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 250,
          width: 250,
          color: Colors.yellow.shade200,


        ),


        Positioned(
          right: 65,
          bottom: 105,
          child: CircleAvatar(
            radius: 70,
            backgroundImage: AssetImage(img),
          ),
        ),

        Positioned(
            right: 30,
            bottom: 80,
            child: Text("D-82 & D-83 Batch information ")),

        Positioned(
          right: 85,
          bottom: 40,
          child: ElevatedButton(onPressed: (){},
              child: Text(title)),
        )

        //Image.asset("assets/img.png",height: 100,width: 100,),

        //Icon(Icons.add)
      ],
    );
  }
}