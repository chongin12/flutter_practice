import 'package:flutter/material.dart';
import 'package:flutter_login/components/custom_text_form_field.dart';
import 'package:flutter_login/size.dart';
import 'package:validators/validators.dart';

class CustomForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormField(
            text: "Email",
            mValide: (value) {
              print("value : $value");
              if (value == null || value.isEmpty) {
                return "Please enter some text";
              } else if (!isEmail(value)) {
                return "이메일 형식이 아닙니다.";
              } else {
                return null;
              }
            },
          ),
          SizedBox(height: medium_gap),
          CustomTextFormField(
            text: "Password",
            mValide: (value) {
              print("value : $value");
              if (value == null || value.isEmpty) {
                return "Please enter some text";
              } else if (value.toString().length > 20) {
                return "Password 길이를 초과함.";
              } else {
                return null;
              }
            },
          ),
          SizedBox(height: large_gap),
          TextButton(
            onPressed: () {
              //유효성 검사 성공 true리턴, 아니면 false리턴
              if (_formKey.currentState!.validate()) {
                Navigator.pushNamed(context, "/home");
              }
            },
            child: Text("Login"),
          ),
        ],
      ),
    );
  }
}
