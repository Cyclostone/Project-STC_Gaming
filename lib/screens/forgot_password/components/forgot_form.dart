import 'package:flutter/material.dart';
import 'package:stc_gaming_app/components/default_button.dart';
import 'package:stc_gaming_app/components/form_error.dart';
import 'package:stc_gaming_app/constants.dart';
import 'package:stc_gaming_app/screens/login_success/login_success_screen.dart';

class BuildForm extends StatefulWidget {
  const BuildForm({
    Key key,
  }) : super(key: key);

  @override
  _BuildFormState createState() => _BuildFormState();
}

class _BuildFormState extends State<BuildForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          buildEmailFormField(),
          SizedBox(height: MediaQuery.of(context).size.height * 0.04),
          FormError(errors: errors),
          SizedBox(height: MediaQuery.of(context).size.height * 0.04),
          DefaultButton(
            text: "Reset",
            press: () {
              if (_formKey.currentState.validate()){
                _formKey.currentState.save();
                Navigator.pushNamed(context, LoginSuccessScreen.routeName);
              }
            },
          ),
        ],
      ),
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
