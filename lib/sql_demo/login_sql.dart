import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';
import 'package:testapp/sql_demo/user_Register.dart';
import 'package:testapp/sql_demo/user_sql_model.dart';

import 'database_provider.dart';
import 'home_sql.dart';

class LoginSql extends StatefulWidget {
  const LoginSql({Key? key}) : super(key: key);

  @override
  State<LoginSql> createState() => _LoginSqlState();
}

class _LoginSqlState extends State<LoginSql> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Login Detail",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: "Email Id",
                labelText: "EmailId",
              ),
            ),
            TextField(
              controller: passController,
              decoration: InputDecoration(
                hintText: "Password",
                labelText: "Password",
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  getData();
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue),
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                )),
          ],
        ),
      ),
    ));
  }

  getData() async {
    final db = await DatabaseProvider.db.databasedetail;
    var res = await db!.rawQuery(
        "Select count(*) from USER where Email=? and password=?",
        [emailController.text, passController.text]);
    int? count = Sqflite.firstIntValue(res);
    if (count == 0) {
      Navigator.push(
          context, MaterialPageRoute(builder: (_) => UserRegister()));
    } else {
      var res = await db.rawQuery(
          "Select uname from USER where Email=? and password=?",
          [emailController.text, passController.text]);
      print("resss:${res}");
      if (res != null && res.isNotEmpty) {
        List<UserSqlModel> student = [];
        for (var element in res) {
          UserSqlModel model = UserSqlModel.fromJson(element);
          student.add(model);
          SharedPreferences pref = await SharedPreferences.getInstance();
          
          pref.setString('UserName', model.uname ?? "");
        }
      }
      Navigator.push(context, MaterialPageRoute(builder: (_) => HomeSql()));
    }
  }
}
