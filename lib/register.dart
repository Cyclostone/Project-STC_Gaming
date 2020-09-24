import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:stc_gaming_app/images.dart';

class RegisterAccount extends StatelessWidget {
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
                height: 250,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Register",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.white)),
                      SizedBox(
                        height: 10.0,
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
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                hintText: "Email address",
                                hintStyle: TextStyle(color: Colors.redAccent),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.redAccent))),
                          ),
                          SizedBox(height: 20.0),
                          TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                hintText: "Username",
                                hintStyle: TextStyle(color: Colors.redAccent),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.redAccent))),
                          ),
                          SizedBox(height: 20.0),
                          TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                hintText: "Password",
                                hintStyle: TextStyle(color: Colors.redAccent),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.redAccent))),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                      height: 55.0,
                      width: 372.0,
                      color: Hexcolor('#FF375E'),
                      child: MaterialButton(
                        onPressed: null,
                        splashColor: Color.fromRGBO(79, 0, 140, 100),
                        child: Text('Register',
                            style: TextStyle(color: Colors.white)),
                      )),
                  SizedBox(height: 30.0),
                  Text("Or", style: TextStyle(color: Colors.white)),
                  SizedBox(height: 30.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 110,
                        height: 55,
                        child: MaterialButton(
                          onPressed: () {},
                          child: Image.asset(Images.facebook, fit: BoxFit.fill),
                        ),
                      ),
                      Container(
                        width: 110,
                        height: 55,
                        child: MaterialButton(
                          onPressed: () {},
                          child: Image.asset(Images.google, fit: BoxFit.fill),
                        ),
                      ),
                      Container(
                        width: 110,
                        height: 55,
                        child: MaterialButton(
                          onPressed: () {},
                          child: Image.asset(Images.steam, fit: BoxFit.fill),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 50.0),
                  Text("Already have an account?",
                      style: TextStyle(color: Colors.white)),
                  SizedBox(height: 20.0),
                  InkWell(
                    child: Text("Login", style: TextStyle(color: Colors.white)),
                    onTap: () {},
                  )
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
