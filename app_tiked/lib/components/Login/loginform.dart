import 'dart:html';

import 'package:app_tiked/components/custom_surfix_icon.dart';
import 'package:app_tiked/components/default_button_custome_color.dart';
import 'package:app_tiked/screens/Register/register.dart';
import 'package:app_tiked/size_config.dart';
import 'package:app_tiked/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SinginForm extends StatefulWidget {
  const SinginForm({super.key});

  @override

  State<SinginForm> createState() => _SinginFormState();
}

class _SinginFormState extends State<SinginForm> {

  final _formKey = GlobalKey<FormState>();
  String? username;
  String? password;
  bool? remeber = false;

  TextEditingController txtUserName = TextEditingController(),
      txtPassword = TextEditingController();


  FocusNode focusNode = new FocusNode();

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
          children: [
            buildUserName(),
            SizedBox(height: getProportionateScreenHeight(30)),
            buildPassword(),
            SizedBox(height: getProportionateScreenHeight(30)),
            Row(
              children: [
                Checkbox(
                  value: remeber, 
                  onChanged: (value) { 
                    setState(() {
                      remeber = value;  
                    });
                  }),
                  Text("Ingat Saya"),
                  Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: Text("Saya Lupa Sama Password Saya", 
                    style: TextStyle(decoration: TextDecoration.underline),
                    ),
                  )
              ],
            ),
            DefaultButtonCustomeColor(
              color: kPrimaryColor,
              text: "SingIn",
              press: () {},

            ),
            SizedBox(height: 20,
            ),
            GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, RegisterScreen.routeName);
                    },
                    child: Text(
                      "Belum Punya Akun? Daftar Sekarang!", 
                      style: TextStyle(
                        decoration: TextDecoration.underline),
                    ),
                  ),
            buildOtherLogin(),
            SizedBox(height: getProportionateScreenHeight(30)),      
          ],
         ),
      );
  }

  TextFormField buildUserName(){
    return TextFormField(
      controller: txtUserName,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
        labelText: 'Username',
        hintText: 'Masukan Username Kalian',
        labelStyle: TextStyle(color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/User.svg",
        )),
    );
  }


  TextFormField buildPassword(){
    return TextFormField(
      controller: txtPassword,
      obscureText: true,
      style: mTitleStyle,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Masukan Password Kalian',
        labelStyle: TextStyle(color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/Lock.svg",
        )),
    );
  }
   Widget buildOtherLogin(){
    return Center(
      child: Column(
        children: [
          SizedBox(height: getProportionateScreenHeight(30)),
          Text("atau Login dengan"),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Tab(icon: Image.asset("assets/images/1.png")),
              Tab(icon: Image.asset("assets/images/3.png")),
              Tab(icon: Image.asset("assets/images/4.png")),
            ],
          )
        ],
      ),
    );
  }

}