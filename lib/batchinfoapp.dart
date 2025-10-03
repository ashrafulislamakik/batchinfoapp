import 'package:batchapp/tabdrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'alert.dart';
import 'assingment.dart';
import 'batchinfomain1.dart';
import 'cardwidget.dart';
import 'home.dart';

class batchinfoapp extends StatelessWidget {

  batchinfoapp({super.key});

  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (_ , child) {





    return MaterialApp(

      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.yellow,
        scaffoldBackgroundColor: Colors.white30,

          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              )
            )
          ),

        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8)
          ),

          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: Colors.orange)
          ),


        ),

        textTheme: TextTheme(
          bodyLarge: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
          titleMedium: TextStyle(fontSize: 6)
        ),

        cardTheme: CardTheme(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(2)
          ) ,
        )
      ),

      title: "Batch info App",
      home: batchinfomain1(),
      debugShowCheckedModeBanner: false,
    );

        },
    );
  }
}