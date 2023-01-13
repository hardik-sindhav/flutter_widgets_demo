import 'dart:async';

import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:auth_buttons/auth_buttons.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:nice_buttons/nice_buttons.dart';
import 'package:flutter_social_button/flutter_social_button.dart';

class BrightnessChange extends StatefulWidget {
  final RoundedLoadingButtonController _btnController = RoundedLoadingButtonController();
   BrightnessChange({Key? key}) : super(key: key);

  @override
  State<BrightnessChange> createState() => _BrightnessChangeState();
}

class _BrightnessChangeState extends State<BrightnessChange> {
  bool isVisible = false;

  String text = "unclickrd";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(const Duration(seconds: 5), (timer) {
      setState(() {
        isVisible = true;
      });
    });
  }

  void _doSomething() async {
    Timer(const Duration(seconds: 3), () {
      widget._btnController.success();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 50,),
          LikeButton(
            size: 60,
            circleColor:
            const CircleColor(start: Colors.pink, end: Colors.cyan),
            bubblesColor: const BubblesColor(
              dotPrimaryColor: Colors.redAccent,
              dotSecondaryColor: Colors.limeAccent,
            ),
            likeBuilder: (bool isLiked) {
              return Icon(
                Icons.favorite,
                color: isLiked ? Colors.pink : Colors.grey,
                size: 40,
              );
            },
            likeCount: 0,

          ),
          const SizedBox(height: 20,),

          FacebookAuthButton(
            onPressed: () {},
            style: const AuthButtonStyle(
            ),
          ),
          const SizedBox(height: 20,),
          RoundedLoadingButton(
            controller: widget._btnController,
            onPressed: _doSomething,
            child: const Text('Install Now', style: TextStyle(color: Colors.white)),
          ),
          const SizedBox(height: 20,),
          AnimatedButton(
            height: 70,
            width: 300,
            text: 'Install Now',
            isReverse: true,
            selectedTextColor: Colors.black,
            transitionType: TransitionType.LEFT_TO_RIGHT,
            backgroundColor: Colors.black,
            borderColor: Colors.deepPurpleAccent,
            borderRadius: 50,
            borderWidth: 4, onPress: () {  },
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 30,right: 30),
            child: NiceButtons(
              stretch: true,
              gradientOrientation: GradientOrientation.Horizontal,
              onTap: (finish) {

              },
              child: const Text(
                'Install Now',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
          const SizedBox(height: 20,),
          FlutterSocialButton(
            buttonType: ButtonType.email,
              onTap: (){}),
          const SizedBox(height: 20,),



        ],
      ),
    ));
  }
}
