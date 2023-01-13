
import 'package:flutter/material.dart';

import 'package:sqflite/sqflite.dart';
import 'package:testapp/sql_demo/user_sql_model.dart';

import 'database_provider.dart';

class UserRegister extends StatefulWidget {
  UserRegister({Key? key}) : super(key: key);

  @override
  State<UserRegister> createState() => _UserRegisterState();
}

class _UserRegisterState extends State<UserRegister> {
  TextEditingController unameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passController = TextEditingController();

  TextEditingController mobileController = TextEditingController();
  bool isLoad = true;
  List<UserSqlModel> userlist = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getStudentList();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue,
              title: Text(
                "Registration Detail",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  TextField(
                    controller: unameController,
                    decoration: InputDecoration(
                      hintText: "User name",
                      labelText: "User name",
                    ),
                  ),
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
                  TextField(
                    controller: mobileController,
                    decoration: InputDecoration(
                      hintText: "MobileNo",
                      labelText: "MobileNo",
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        insertData();
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue),
                      child: Text(
                        "REGISTER",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )),
                  Expanded(
                    child: isLoad
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : userlist.isNotEmpty
                            ? ListView.builder(
                                itemCount: userlist.length,
                                itemBuilder: (context, index) {
                                  UserSqlModel model = userlist[index];

                                  return Card(
                                    elevation: 2,
                                     color: Colors.lightGreen,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("User ID:${model.id.toString()}"),
                        Text("User Name:${model.uname??""}"),
                        Text("Email Id:${model.email??""}"),
                        Text("Password:${model.password??""}"),
                        Text("Mobile No:${model.mobileNo??""}"),
                        Container(
                          height: 25,
                          width: 100,
                          child: ElevatedButton(onPressed: () async {
                            final db = await DatabaseProvider.db.databasedetail;
                            await db!.rawDelete("DELETE FROM USER WHERE id=?",[model.id]);
                            getStudentList();
                          },child: Text("Delete")),
                        )
                      ],
                    ),
                                    ),
                                  );
                                })
                            : const Center(
                                child: Text("No Data Found"),
                              ),
                  ),
                ],
              ),
            )));
  }

  getStudentList() async {
    setLoader(true);
    try {
      final db = await DatabaseProvider.db.databasedetail;
      final result = await db?.rawQuery("SELECT * FROM USER");
      setLoader(false);
      if (result != null && result.isNotEmpty) {
        List<UserSqlModel> student = [];
        for (var element in result) {
          UserSqlModel model = UserSqlModel.fromJson(element);
          student.add(model);
          setState(() {
            userlist = student;
          });
        }
      }
    } catch (e) {
      setLoader(false);
    }
  }

  void setLoader(bool load) {
    setState(() {
      isLoad = load;
    });
  }

  insertData() async {
    final db = await DatabaseProvider.db.databasedetail;

    var res = await db!.rawQuery(
        "Select count(*) from USER where Email=?", [emailController.text]);
    int? count = Sqflite.firstIntValue(res);
    if (count == 0) {
      UserSqlModel model = UserSqlModel()
        ..uname = unameController.text
        ..email = emailController.text
        ..password = passController.text
        ..mobileNo = mobileController.text;

      await db.insert("USER", model.toJson());
      getStudentList();
    } else {
      int res = await db.rawUpdate(
          'UPDATE USER SET Uname=?,Password=?,MobileNo=? WHERE Email=?', [
        unameController.text,
        passController.text,
        mobileController.text,
        emailController.text
      ]);
      print(res);
      getStudentList();
    }
  }
  deletedeta()
  async {
    final db = await DatabaseProvider.db.databasedetail;

  }
}
