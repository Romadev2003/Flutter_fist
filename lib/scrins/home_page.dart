import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget{
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 15,
        title: const Text('Mening birinchi ilovam',
        textAlign: TextAlign.center,),
      ),
      body: body(),
      floatingActionButton: fab(),
    );

  }
  body(){
   return Center(
       child:Text("$counter marta bosildi",
         textScaleFactor: 3,
         style: const TextStyle(
           color: Colors.cyanAccent,
         )
         ,)
   );

  }
  fab(){
   return Stack(
      children: [
        Positioned(
          bottom: 80.0,
          right: 16.0,
          child: FloatingActionButton(
            onPressed: () {
              setState(() {
                //print("button taped $counter");
              });
              counter++;
            },
            child: const Icon(Icons.add),
          ),
        ),
        Positioned(
          bottom: 16.0,
          right: 16.0,
          child: FloatingActionButton(
            onPressed: () {
              setState(() {
                //print("button taped $counter");
              });
              counter--;
            },
            child: const Icon(Icons.remove),
          ),
        ),
      ],
    );
  }
}