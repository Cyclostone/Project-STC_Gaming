import 'package:flutter/material.dart';
import 'package:stc_gaming_app/components/default_button.dart';
import 'package:stc_gaming_app/components/form_error.dart';
import 'package:stc_gaming_app/constants.dart';
import 'package:stc_gaming_app/screens/forgot_password/forgot_email.dart';
import 'package:stc_gaming_app/screens/forgot_password/forgot_enter_new_password.dart';
import 'package:stc_gaming_app/screens/login_success/login_success_screen.dart';


class SignInForm extends StatefulWidget {
  const SignInForm({
    Key key,
  }) : super(key: key);

  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(height: 20.0),
          buildEmailFormField(),
          SizedBox(height: 20.0),
          buildPasswordFormField(),
          SizedBox(
            height: 20,
          ),
          FormError(errors: errors),
          Row(
            children: [
              Spacer(),
              GestureDetector(
                  onTap: () => Navigator.pushNamed(context, ForgotEmail.routeName),
                  child: Text("Forgot Password?",
                      style: TextStyle(color: Colors.white))),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          DefaultButton(
            text: 'Login',
            press: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
                // If everything is valid then it happens
                Navigator.pushNamed(context, LoginSuccessScreen.routeName);
              }
            },
          ),
        ],
      ),
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
