import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:stc_gaming_app/images.dart';

class ForgotEnterUsername extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(79, 0, 140, 100),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                height: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Enter Username",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.white)),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Please note that your username cannot be changed later",
                      style: TextStyle(
                          fontWeight: FontWeight.w100,
                          fontSize: 14,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(30.0),
                child: Column(children: [
                  Container(
                    child: Form(
                      child: Column(
                        children: [
                          SizedBox(height: 50.0),
                          TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                hintText: "username",
                                hintStyle: TextStyle(color: Colors.redAccent),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.redAccent))),
                          ),
                          SizedBox(height: 20.0),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 40.0),
                  Container(
                      height: 55.0,
                      width: 372.0,
                      color: Hexcolor('#FF375E'),
                      child: MaterialButton(
                        onPressed: null,
                        splashColor: Color.fromRGBO(79, 0, 140, 100),
                        child:
                            Text('Save', style: TextStyle(color: Colors.white)),
                      )),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
