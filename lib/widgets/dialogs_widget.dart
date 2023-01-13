import 'package:flutter/material.dart';

class DialogsDemo extends StatefulWidget {
  const DialogsDemo({Key? key}) : super(key: key);

  @override
  State<DialogsDemo> createState() => _DialogsDemoState();
}

class _DialogsDemoState extends State<DialogsDemo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('Show dialog'),
          onPressed: () {
            showDialog(
                context: context,
                barrierColor: Colors.transparent,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text("Welcome"),
                    content: Text("Welcome To Softices "),
                    actions: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Ok"),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Cansel"),
                      ),
                    ],
                  );
                });
          },
        ),
      ),
    ));
  }
}
