import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:stc_gaming_app/images.dart';

class ForgotEnterPassword extends StatelessWidget {
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
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Reset Password",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.white)),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Enter new Password",
                        style: TextStyle(
                            fontWeight: FontWeight.w100,
                            fontSize: 14,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(30.0),
                child: Column(children: [
                  Container(
                    child: Form(
                      child: Column(
                        children: [
                          SizedBox(height: 20.0),
                          TextField(
                            decoration: InputDecoration(
                                hintText: "New Password",
                                hintStyle: TextStyle(color: Colors.redAccent),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.redAccent))),
                          ),
                          SizedBox(height: 20.0),
                          TextField(
                            decoration: InputDecoration(
                                hintText: "Confirm Password",
                                hintStyle: TextStyle(color: Colors.redAccent),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.redAccent))),
                          ),
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
                        child: Text('Reset',
                            style: TextStyle(color: Colors.white)),
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
