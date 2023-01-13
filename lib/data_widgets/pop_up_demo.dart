import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PopUpDemo extends StatefulWidget {
  const PopUpDemo({Key? key}) : super(key: key);

  @override
  State<PopUpDemo> createState() => _PopUpDemoState();
}

class _PopUpDemoState extends State<PopUpDemo> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return Center(
      child: ElevatedButton(onPressed: (){
        showDialog(
          context: context,
          builder: (BuildContext context) => _buildPopupDialog(context),
        );
      }, child: Text('show')),
    );
  }
  Widget _buildPopupDialog(BuildContext context) {
    return AlertDialog(
      title: const Text('Log In'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          InkWell(child: Icon(Icons.arrow_back,),
          onTap: (){
            Navigator.of(context).pop();

          }),
          Center(
            child: Column(
              children: [
                TextFormField(),
                TextFormField(),
                Container(height: 200,width: 250,child: Text("log In"),color: Colors.indigo,),
              ],
            ),
          ),
        ],
      ),
      actions: <Widget>[
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Close'),
        ),
      ],
    );
  }
}
