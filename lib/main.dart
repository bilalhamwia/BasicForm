// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, use_key_in_widget_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
void  main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App 10',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: Forms(),
      ),
    );
  }
}

class Forms extends StatefulWidget {
  @override
  State<Forms> createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  final Keys = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: Keys,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(
            decoration: InputDecoration(
              hintText: "Enter Your Name",
              labelText: "Name",
              icon: Icon(Icons.person),
            ),
            validator: (value){
              if(value!.isEmpty){
                return 'please fill the details';
              }
              return null;
            },
          ),

           TextFormField(
            decoration: InputDecoration(
              hintText: "Enter Your Password",
              labelText: "Password",
              icon: Icon(Icons.lock),
            ),
            validator: (value){
              if(value!.isEmpty){
                return 'please fill the details';
              }
              return null;
            },
          ),

           TextFormField(
            decoration: InputDecoration(
              hintText: "Enter Your phone",
              labelText: "phone",
              icon: Icon(Icons.phone),
            ),
            validator: (value){
              if(value!.isEmpty){
                return 'please fill the details';
              }
              return null;
            },
          ),

        Container(
          child: RaisedButton(
            child: Text("Sumbit"),
            onPressed: (){
              if(Keys.currentState!.validate()){
                Scaffold.of(context).showSnackBar(SnackBar(content: Text("Validation Going on"),));
              }
            },
          ),
          )
        ],
      ),
    );
  }
}