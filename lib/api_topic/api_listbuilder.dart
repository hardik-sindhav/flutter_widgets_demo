import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:testapp/api_topic/Newmodel.dart';
import 'package:testapp/api_topic/Users.dart';
import 'package:testapp/api_topic/api_list_view.dart';
import 'package:http/http.dart' as http;

class ApiListBuilder extends StatefulWidget {
  const ApiListBuilder({Key? key}) : super(key: key);

  @override
  State<ApiListBuilder> createState() => _ApiListBuilderState();
}

class _ApiListBuilderState extends State<ApiListBuilder> {

  List<Newmodel> userList = [];

  Future<List<Newmodel>> getUserApi () async{
    final response = await http.get(Uri.parse("https://639c311716d1763ab141f07b.mockapi.io/like"));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200){
      for (Map i in data){
        userList.add(Newmodel.fromJson(i));
      }
      return userList;

    }else{
      return userList;
    }
  }
  

  String ? errorString;
  bool isLoad = true;
  
  @override

  
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          Expanded(child: FutureBuilder(
            future: getUserApi() ,
            builder: (context ,AsyncSnapshot<List<Newmodel>>snapshots){
              return ListView.builder(
                  itemCount: userList.length,
                  itemBuilder: (context , index){
                return Column(
                   children: [
                     Text(snapshots.data![index].id.toString()),
                   ],
                );
              }

              );
            }
    ),),

        ],
      ),
    ),

     );
  }

    void showLoader(bool load){
    setState(() {
      isLoad = load;
    });

    }
  }

