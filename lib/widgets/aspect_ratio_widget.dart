import 'package:flutter/material.dart';

class AspectRatioWidget extends StatefulWidget {
  const AspectRatioWidget({Key? key}) : super(key: key);

  @override
  State<AspectRatioWidget> createState() => _AspectRatioWidgetState();
}

class _AspectRatioWidgetState extends State<AspectRatioWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Container(
            // height: 150,
            width: double.infinity,
            child: AspectRatio(
              aspectRatio: 730/452,
                child: Image.asset(
              'assets/images/post1.jpg',
              fit: BoxFit.fill,
            ))),
      ),
    ));
  }
}
