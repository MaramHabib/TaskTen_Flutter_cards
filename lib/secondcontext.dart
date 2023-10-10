import 'package:flutter/material.dart';


class Mysecondscreen extends StatefulWidget {

  var data;
  Mysecondscreen({this.data,super.key});

  @override
  State<Mysecondscreen> createState() => _MysecondscreenState();
}

class _MysecondscreenState extends State<Mysecondscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:AppBar(title:Text("Welcome to my second screen "),),
      body:Center(child: Column(
        children: [
          Text("Hello" "${widget.data}"),
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          }, child: Icon(Icons.backpack))
        ],),),
    );
  }
}
