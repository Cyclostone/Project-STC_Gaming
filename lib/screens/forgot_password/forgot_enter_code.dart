import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
// ignore: unused_import
import 'package:stc_gaming_app/images.dart';

class ForgotEnterCode extends StatelessWidget {
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
                        height: 20.0,
                      ),
                      RichText(
                        text: TextSpan(
                            text: 'Enter the Code sent your email',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                            children: [
                              TextSpan(
                                  text: ' xxxxx@gmail.com ',
                                  style: TextStyle(
                                      color: Colors.redAccent, fontSize: 14)),
                              TextSpan(
                                  text: 'to activate your account',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14))
                            ]),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(30.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Form(
                          child: Column(
                            children: [
                              SizedBox(height: 20.0),
                              TextField(
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                    hintText: "Email Code",
                                    hintStyle:
                                        TextStyle(color: Colors.redAccent),
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.redAccent))),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 50.0),
                      InkWell(
                        child: Text("Resend Code",
                            style: TextStyle(color: Colors.redAccent)),
                        onTap: () {},
                      ),
                      SizedBox(height: 50.0),
                      Container(
                          height: 55.0,
                          width: 372.0,
                          color: Hexcolor('#FF375E'),
                          child: MaterialButton(
                            onPressed: null,
                            splashColor: Color.fromRGBO(79, 0, 140, 100),
                            child: Text('Verify',
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
