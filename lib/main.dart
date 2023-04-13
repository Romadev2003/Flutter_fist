import 'package:flutter/material.dart';
import 'package:my_fist/scrins/home_page.dart';

void main() {
  runApp(myFist());
}
class myFist extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'my Fist app',
      theme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}
