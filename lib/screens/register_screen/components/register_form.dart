import 'package:flutter/material.dart';
import 'package:stc_gaming_app/components/default_button.dart';
import 'package:stc_gaming_app/components/form_error.dart';
import 'package:stc_gaming_app/screens/login_success/login_success_screen.dart';

import '../../../constants.dart';

class BuildForm extends StatefulWidget {
  const BuildForm({
    Key key,
  }) : super(key: key);

  @override
  _BuildFormState createState() => _BuildFormState();
}

class _BuildFormState extends State<BuildForm> {
  final _formKey = GlobalKey<FormState>();
  String username;
  String email;
  String password;
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          buildEmailFormField(),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          buildUsernameFormField(),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          buildPasswordFormField(),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          FormError(errors: errors),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          Container(
            color: kFormTextColor,
            child: DefaultButton(
              text: "Register",
              press: () {
                if (_formKey.currentState.validate()) {
                  _formKey.currentState.save();
                  // If everything is valid then we proceed
                  Navigator.pushNamed(context, LoginSuccessScreen.routeName);
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  TextFormField buildUsernameFormField() {
    return TextFormField(
      onSaved: (newValue) => username = newValue,
       onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kUserNameNullError)) {
          setState(() {
            errors.remove(kUserNameNullError);
          });
        } else if (value.length >= 8 && errors.contains(kShortUserError)) {
          setState(() {
            errors.remove(kShortUserError);
          });
        }
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kUserNameNullError)) {
          setState(() {
            errors.add(kUserNameNullError);
          });
          return "";
        } else if (value.length < 8 && !errors.contains(kShortUserError)) {
          setState(() {
            errors.add(kShortUserError);
          });
          return "";
        }
        return null;
      },
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
          hintText: "Username",
          hintStyle: TextStyle(color: Colors.redAccent),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.redAccent))),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      onSaved: (newValue) => password = newValue,
      obscureText: true,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPassNullError)) {
          setState(() {
            errors.remove(kPassNullError);
          });
        } else if (value.length >= 8 && errors.contains(kShortPassError)) {
          setState(() {
            errors.remove(kShortPassError);
          });
        }
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kPassNullError)) {
          setState(() {
            errors.add(kPassNullError);
          });
          return "";
        } else if (value.length < 8 && !errors.contains(kShortPassError)) {
          setState(() {
            errors.add(kShortPassError);
          });
          return "";
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: "Password",
          hintStyle: TextStyle(color: Colors.redAccent),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.redAccent))),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          setState(() {
            errors.remove(kEmailNullError);
          });
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.remove(kInvalidEmailError);
          });
        }
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            errors.add(kEmailNullError);
          });
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.add(kInvalidEmailError);
          });
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: "Email address",
          hintStyle: TextStyle(color: Colors.redAccent),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.redAccent))),
    );
  }
}
