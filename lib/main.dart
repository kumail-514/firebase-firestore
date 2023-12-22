import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});
  @override
  State<MyHome> createState() => _MyHomeState();

}

class _MyHomeState extends State<MyHome> {

  TextEditingController userEmail = TextEditingController();
  TextEditingController userPassword = TextEditingController();

  void userRegister()async{

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration Form"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: TextFormField(
              controller: userEmail,
              decoration: InputDecoration(
                label: Text("Enter Your Email"),
                hintText: "Ali@gmail.com",
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(14),
                )
              ),
            ),
    ),

      Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: TextFormField(
          controller: userEmail,
          decoration: InputDecoration(
              label: Text("Enter Your Email"),
              hintText: "Ali@gmail.com",
              prefixIcon: Icon(Icons.email),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(14),
              )
          ),
        ),
      ),

          Center(
            child: Container(
              width: 120,
              height: 40,
              child: Center(
                child: ElevatedButton(onPressed: (){
                  print(userEmail);
                  print(userPassword);
                }, child: Text("Register")),
              ),
            ),
          )
        ],
      ),
    );
  }
}

