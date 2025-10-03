import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class studentsinfo extends StatelessWidget {
  const studentsinfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Students Info"),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 100,width: 200,

                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        border: Border.all(width: 3,color: Colors.black),
                        borderRadius: BorderRadius.circular(15)

                    ),

                    child:

                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.holiday_village_sharp),
                          SizedBox(height: 3,),
                          Text("13 Deparments",
                            style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
                        ],),
                    )
                ),
                SizedBox(width: 10,),
                Container(
                    height: 100,width: 200,

                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        border: Border.all(width: 3,color: Colors.black),
                        borderRadius: BorderRadius.circular(15)

                    ),

                    child:

                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.people_alt),
                          SizedBox(height: 3,),
                          Text("5000 Students",
                            style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
                        ],),
                    )
                ),
              ],
            ),
            SizedBox(height: 10,),
            Container(
              height: 100.h,
                width: 150.w,

              decoration: BoxDecoration(
                  color: Colors.yellow,
                  border: Border.all(width: 3,color: Colors.black),
                  borderRadius: BorderRadius.circular(15)

              ),

              child:

              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Icon(Icons.phone),
                  SizedBox(height: 3,),
                  Text("+8801581746965",
                    style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
                ],),
              )
            ),
          ],
        ),
      ),
    );
  }
}
