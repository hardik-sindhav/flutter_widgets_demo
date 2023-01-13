import 'package:flutter/material.dart';

class ClipRRectDemo extends StatefulWidget {
  const ClipRRectDemo({Key? key}) : super(key: key);

  @override
  State<ClipRRectDemo> createState() => _ClipRRectDemoState();
}

class _ClipRRectDemoState extends State<ClipRRectDemo> {
  bool light = true;
  double cValue = 10;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Card(
          elevation: 10,shadowColor: Colors.black45,
          shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(5) ,
              side: BorderSide(color: Colors.blueAccent,width: 2,style: BorderStyle.solid),
          ),
          child: Container(
            height: 150,
            width: 300,
            child: Column(
              children: [
            Center(
            child: Switch(
            value: light,
              inactiveThumbColor: Colors.red,
              onChanged: (value){
                setState(() {
                  light = value;
                });

              },
            ),
            ),
                Slider(
                    min: 0,
                    max: 10,
                    divisions: 10,
                    //label: cValue.toInt().toString(),
                    value: cValue, onChanged: (value){
                  setState(() {
                    cValue=value;
                  });
                }),
                SizedBox(height: 10,),
                Text(cValue.toInt().toString()),


              ],

              ),
            ),
          ),
        ),
      ),
    );
  }
}
