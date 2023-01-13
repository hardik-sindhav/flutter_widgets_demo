import 'package:flutter/material.dart';
import 'package:testapp/drawer_demo/curved_drawer_fork.dart';
import 'package:testapp/drawer_demo/fancy_drawer.dart';
import 'package:testapp/drawer_demo/flutter_slider_drawer.dart';
import 'package:testapp/drawer_demo/multilevel_drawer.dart';

import 'lining_drawer.dart';


class AllDrawersDemo extends StatelessWidget {
  const AllDrawersDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           SizedBox(width: MediaQuery.of(context).size.height*0.5,),
          InkWell(
            child: Container(
              alignment: Alignment.center,
              height: 50,width: 250,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Text('Advance Drawer',style: TextStyle(color: Colors.white,fontSize: 20),),
            ),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  HomeScreen()),
              );
            },
          ),
          SizedBox(height: 10,),
          InkWell(
            child: Container(
              alignment: Alignment.center,
              height: 50,width: 250,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Text('flutter slider drawer',style: TextStyle(color: Colors.white,fontSize: 20),),
            ),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  SliderDrawerDemo()),
              );
            },
          ),
          SizedBox(height: 10,),
          InkWell(
            child: Container(
              alignment: Alignment.center,
              height: 50,width: 250,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Text('curved drawer fork',style: TextStyle(color: Colors.white,fontSize: 20),),
            ),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  CurvedDrawerDemo()),
              );
            },
          ),
          SizedBox(height: 10,),
          InkWell(
            child: Container(
              alignment: Alignment.center,
              height: 50,width: 250,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Text('MultiLevel Drawer',style: TextStyle(color: Colors.white,fontSize: 20),),
            ),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  MultiLavelDrawerDemo()),
              );
            },
          ),
          SizedBox(height: 10,),
          InkWell(
            child: Container(
              alignment: Alignment.center,
              height: 50,width: 250,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Text('Lining Drawer',style: TextStyle(color: Colors.white,fontSize: 20),),
            ),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => liningDrawerDemo()),
              );
            },
          ),
          SizedBox(height: 10,),

        ],
      ),
    ));
  }
}
