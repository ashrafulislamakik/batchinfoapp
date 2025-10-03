import 'package:flutter/material.dart';



class gridwidget extends StatelessWidget {
  final String img,title;
  const gridwidget({
    super.key, required this.img, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        Container(

          height: 220,
          width: 220,

          child: Image.asset(img),
        ),


        Positioned(
            left: 70,bottom: 35,
            child: Text(title,style: TextStyle(
                fontWeight: FontWeight.bold,color: Colors.white
            ),))
      ],
    );
  }
}

