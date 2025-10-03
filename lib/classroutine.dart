import 'package:flutter/material.dart';

class clasroutine extends StatelessWidget {
  const clasroutine({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Class Routine"),
        centerTitle: true,
      ),

      body: Column(
        children: [
          
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    color: Colors.yellow,
                    child: ListTile(
                      leading: Icon(Icons.book),
                      title: Text("Saturday"),
                      subtitle: Text("8.30 AM - 2.00 PM"),
                    )
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                      color: Colors.yellow,
                      child: ListTile(
                        leading: Icon(Icons.book),
                        title: Text("Sunday"),
                        subtitle: Text("8.30 AM - 2.00 PM"),
                      )
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                      color: Colors.yellow,
                      child: ListTile(
                        leading: Icon(Icons.book),
                        title: Text("Monday"),
                        subtitle: Text("8.30 AM - 2.00 PM"),
                      )
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                      color: Colors.yellow,
                      child: ListTile(
                        leading: Icon(Icons.book),
                        title: Text("Tuesday"),
                        subtitle: Text("8.30 AM - 2.00 PM"),
                      )
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                      color: Colors.yellow,
                      child: ListTile(
                        leading: Icon(Icons.book),
                        title: Text("Wednesday"),
                        subtitle: Text("8.30 AM - 2.00 PM"),
                      )
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                      color: Colors.yellow,
                      child: ListTile(
                        leading: Icon(Icons.book),
                        title: Text("Thursday"),
                        subtitle: Text("8.30 AM - 2.00 PM"),
                      )
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                      color: Colors.yellow,
                      child: ListTile(
                        leading: Icon(Icons.book),
                        title: Text("Friday"),
                        subtitle: Text("8.30 AM - 2.00 PM"),
                      )
                  ),
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}
