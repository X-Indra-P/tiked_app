import 'package:app_tiked/components/Side_Menu/side_menu.dart';
import 'package:app_tiked/size_config.dart';
import 'package:app_tiked/utils/constants.dart';
import 'package:flutter/material.dart';


class HomeUserScreen extends StatelessWidget {
  const HomeUserScreen({super.key});

  static String routeName = "/home_user";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        title: Text("Home Screen", style: TextStyle(color: mTitleColor, fontWeight: FontWeight.bold ),
        ),
        leading: Icon(
          Icons.home, 
          color: mTitleColor,
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.person, 
              color: mTitleColor,
              ),
          ),
          SizedBox(width: 10,
          )
        ],
      ),
      body: Container(child: Text("Selamat Datang Kawan",)),
    );
  }


}