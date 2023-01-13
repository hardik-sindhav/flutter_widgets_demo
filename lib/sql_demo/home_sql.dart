import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeSql extends StatefulWidget {
  const HomeSql({Key? key}) : super(key: key);

  @override
  State<HomeSql> createState() => _HomeSqlState();
}

class _HomeSqlState extends State<HomeSql> {
  String? uname;
  bool isload=true;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getuname();
    isload=false;

  }

  getuname() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    uname = pref.getString('UserName')!;
print(uname);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isload?Center(child: CircularProgressIndicator(),):Center(
          child: Text(
        "Hello ${uname}",
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.greenAccent),
      )),
    );
  }
}
