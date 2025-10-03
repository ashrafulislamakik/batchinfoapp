import 'package:batchapp/alert.dart';
import 'package:flutter/material.dart';

class cardwidget extends StatelessWidget {

  final String image,title,Text1,Text2,Text3,Text4;
  final VoidCallback onpressed;
  const cardwidget({
    super.key, required this.image, required this.title, required this.Text1, required this.Text2, required this.Text3, required this.onpressed, required this.Text4,
  });

  @override
  Widget build(BuildContext context) {
    return

      Container(
        height: 1000,width: 500,

        decoration: BoxDecoration(
            color: Colors.green,
            border: Border.all(
                color: Colors.black,width: 3
            ),
            borderRadius: BorderRadius.circular(15)
        ),


        child: Container(
          height: 500,width: 500,
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(20)),

                    child: Image.asset(image,
                      height: 90,width: double.infinity,fit: BoxFit.cover,),),

                  SizedBox(height: 10,),

                  // Positioned(
                  //     top: 10, right: 10,
                  //     child: Icon(Icons.people_alt_outlined)),

                  Spacer(),



                  //Spacer(),


                ],


              ),
              SizedBox(height: 5,),

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                        height: 25,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey.shade100,
                            borderRadius: BorderRadius.circular(10)
                        ),

                        child:

                        Padding(
                          padding: const EdgeInsets.only(top: 5,right: 5,left: 18,bottom: 5),
                          child: Row(
                            children: [
                              Text(Text1,
                                style: TextStyle(fontSize: 7,color: Colors.black,fontWeight: FontWeight.bold),),
                            ],
                          ),
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5,left: 5,right: 5,bottom: 5),
                    child: Container(
                        height: 25,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey.shade100,
                            borderRadius: BorderRadius.circular(10)
                        ),

                        child: Padding(
                          padding: const EdgeInsets.only(top: 5,left: 12,right: 5,bottom: 5),
                          child: Row(
                            children: [
                              Icon(Icons.people_outline,color: Colors.black,
                                size: 10,),
                              SizedBox(width: 5,),
                              Text(Text2,
                                style: TextStyle(fontSize: 7,color: Colors.black,fontWeight: FontWeight.bold),),
                            ],
                          ),
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                        height: 25,
                        width: 70,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey.shade100,
                            borderRadius: BorderRadius.circular(10)
                        ),

                        child: Padding(
                          padding: const EdgeInsets.only(top: 5,left: 8,right: 5,bottom: 5),
                          child: Row(
                            children: [
                              Icon(Icons.watch_later_outlined,color: Colors.black,
                                size: 10,),
                              SizedBox(width: 5,),
                              Text(Text3,
                                style: TextStyle(fontSize: 7,color: Colors.black,fontWeight: FontWeight.bold),),
                            ],
                          ),
                        )
                    ),
                  )

                ],
              ),

              Divider(),

              Padding(

                padding: const EdgeInsets.only(top: 1,right: 5,left: 5,bottom: 5),
                child: Text(title,
                  maxLines: 2,
                  //overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.w800),),
              ),



              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: 200,
                  child: ElevatedButton(onPressed: onpressed ,

                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey.shade100,
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                          )
                      ),

                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Text(Text4,style: TextStyle(fontWeight: FontWeight.bold),),
                          ),
                          //SizedBox(width: 10,),
                          Icon(Icons.arrow_right_alt_outlined)
                        ],
                      )),
                ),
              )



            ],
          ),
        ),
      );
  }
}


