import 'package:batchapp/widget/containerwidget.dart';
import 'package:batchapp/widget/farmewidget.dart';
import 'package:batchapp/widget/teachercontactw.dart';
import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home({super.key});



  @override
  Widget build(BuildContext context) {



    submitbutton ()
    {
      showDialog(context: context, builder: (context)
      {
        return AlertDialog(
          title: Text("Are Sure ....."),
        );
      }
      );
    }

    TextEditingController Submitcontoller = TextEditingController();
    final _formkey = GlobalKey<FormState>();

    return Scaffold(


      appBar: AppBar(
        title: Text("Teachers Contact"),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),

      body:

      Column(
        children: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: _formkey,
              child: TextFormField(

                controller: Submitcontoller,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search..",
                  label: Text("Teachers Name"),
                  //helper: Text("Write Your Couurse Teacher Name"),
                  suffixIcon: Icon(Icons.arrow_forward_ios),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.red)
                  )

                ),

                validator: (Value){
                  if (Value==null || Value.isEmpty){
                    return "Please Name Your Teacher's Name";
                  }
                  else if (Value.length < 8 ){
                    return "Please Minumum 8 Charecter..";
                  }

                }
              ),
            ),
          ),

          SizedBox(height: 10,),
          Center(
            child: ElevatedButton(onPressed: (){

              if(_formkey.currentState!.validate())
                {
                  print(Submitcontoller.text);
                }

              Submitcontoller.clear();
              //submitbutton ();
            },

                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  //maximumSize: Size(10, 5)
                ),

                child: Text("Submit",style: TextStyle(color: Colors.white),)),
          ),

          SizedBox(height: 10,),


          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: [

                  teacherscontactw(
                    img: 'img_7.png',
                    title: 'Rakib Hossain',
                    tex1: 'Lrcturer,Department of CSE',
                    tex2: '015817-46965',),

                  teacherscontactw(
                    img: 'ashraful.jpg',
                    title: 'Rakib Hossain',
                    tex1: 'Department of CSE',
                    tex2: '015817-46965',),

                  teacherscontactw(
                    img: 'ashraful.jpg',
                    title: 'Rakib Hossain',
                    tex1: 'Department of CSE',
                    tex2: '015817-46965',),

                  teacherscontactw(
                    img: 'ashraful.jpg',
                    title: 'Rakib Hossain',
                    tex1: 'Department of CSE',
                    tex2: '015817-46965',),

                ],
              ),
            ),
          )
        ],
      ),














      // body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 2),
      //     itemCount: 20,
      //
      //     itemBuilder: (context,index){
      //       return framewidget(img: 'assets/diucampus.jpg', title: 'Routine',);
      //     }),
      
      // body: SingleChildScrollView(
      //   scrollDirection: Axis.horizontal,
      //   child: Column(
      //     children: [
      //
      //       Row(children: [
      //         containerwidget(img: 'assets/img.png', title: 'Routine',),
      //         SizedBox(width: 10,),
      //         containerwidget(img: 'assets/img.png', title: 'Assignment',)
      //
      //       ],),
      //
      //       SizedBox(height: 10,),
      //
      //       Row(children: [
      //         containerwidget(img: 'assets/img.png', title: 'Student info.',),
      //         SizedBox(width: 10,),
      //         containerwidget(img: 'assets/img.png', title: 'Teachers info',)
      //
      //       ],)
      //
      //     ],
      //   ),
      // ),
    );
  }
}



