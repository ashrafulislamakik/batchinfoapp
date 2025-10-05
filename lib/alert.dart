import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class alert extends StatelessWidget {
  const alert({super.key});

  @override
  Widget build(BuildContext context) {

    alertdialog ()
    {
      showDialog(context: context,
          barrierDismissible: false,

          builder: (context)
          {
            return AlertDialog(
              title: Text("আশরাফুলের বন্ধু স্বজন হইলো একটা ২ নাম্বার তুমি কি একমত?"),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(children: [
                    Icon(Icons.warning,color: Colors.red,),
                    SizedBox(width: 10,),
                    Text("Warning..")
                  ],),

                  SizedBox(height: 10,),
                  Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,")
                ],
              ),

              actions: [
                ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                },
                    child: Text("ok",style: TextStyle(color: Colors.red),))
              ],

            );
          });
    }

    showsipledialog()
    {
      showDialog(context: context,
          builder: (context) => SimpleDialog(
            title: Text("Title"),
            children: [
              SimpleDialogOption(
                child: Text("Option..1"),
              ),

              SimpleDialogOption(
                child: TextField(),
              )
            ],
          ));
    }


    bottomshheet()
    {
      showBottomSheet(context: context,

          builder: (context)=> Container(
            child: Column(
              children: [
                Text("Title"),
                ListTile(
                  title: Text("Option-1"),
                ),
                ListTile(
                  title: Text("Option-1"),
                ),
                ListTile(
                  title: Text("Option-1"),
                ),
              ],
            ),
          ));
    }

    loading(){
      showDialog(context: context, builder: (context)=> Dialog(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              CircularProgressIndicator(),
              SizedBox(width: 10,),
              Text("Loqading")
            ],
          ),
        ),

      ) );
    }

    showsnakebar()
    {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("This is snakebar"))
      );
    }

    return Scaffold(
      
      appBar: AppBar(
        title: Text("Alert"),
        centerTitle: true,
        backgroundColor: Colors.red,
        

      ),

      body: SfPdfViewer.asset("assets/sample.pdf"),


      // body: Column(
      //
      //
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //
      //     Text("Akik",style: Theme.of(context).textTheme.titleMedium,),
      //
      //   Center(
      //     child: ElevatedButton(onPressed: (){
      //       alertdialog();
      //     },
      //         child: Text("Alert")),
      //   ),
      //
      //     SizedBox(height: 10,),
      //
      //
      //     Center(
      //       child: ElevatedButton(onPressed: (){
      //         showsipledialog();
      //       },
      //           child: Text("Alert2")),
      //     ),
      //
      //     SizedBox(height: 10,),
      //
      //     Center(
      //       child: ElevatedButton(onPressed: (){
      //         bottomshheet();
      //       },
      //           child: Text("bottomsheet")),
      //     ),
      //
      //     SizedBox(height: 10,),
      //
      //     Center(
      //       child: ElevatedButton(onPressed: (){
      //         loading();
      //       },
      //           child: Text("loading")),
      //     ),
      //
      //     SizedBox(height: 10,),
      //
      //
      //     Center(
      //       child: ElevatedButton(onPressed: (){
      //         showsnakebar();
      //       },
      //           child: Text("Snakebar")),
      //     ),
      //
      //     Card(
      //       child: Text("Ashraful"),
      //     )
      //
      //
      //
      // ],),
    );
  }
}
