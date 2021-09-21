import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  double height = 50.0,
  Color color = Colors.lightBlueAccent,
  @required String string,
  @required Function function,
}) =>
    Container(
      width: width,
      height: height,
      color: color,
      child: Center(
        child: MaterialButton(
            minWidth: width,
            textColor: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(string.toUpperCase(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            onPressed: function),
      ),
    );





Widget defaultFormFeild({
  @required String validatorText,
  @required var emailController,
  @required var inputType,
  IconButton suffixIcon ,
  @required Icon prefixIcon ,
  @required String labelText,
  bool isObsecured=false,



})=>TextFormField(
  validator: (value){
    if(value.isEmpty)
    {return validatorText;}
    return null;
  },
  controller: emailController,
  keyboardType: inputType,
  obscureText: isObsecured,
  decoration: InputDecoration(
    labelText: labelText,
    prefixIcon: prefixIcon,
    suffixIcon: suffixIcon,
    border: OutlineInputBorder(),
  ),
);
