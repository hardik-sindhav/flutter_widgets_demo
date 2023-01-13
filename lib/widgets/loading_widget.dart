import 'dart:async';
import 'package:lottie/lottie.dart';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoadingWidget extends StatefulWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  State<LoadingWidget> createState() => _LoadingWidgetState();
}

class _LoadingWidgetState extends State<LoadingWidget> {
  bool isLoad = true;

  Timer? timer;

  SharedPreferences? preference;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initislisePreference();
    if (isLoad) {
      loadingTime();
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: isLoad
            ? Container(
                child: Lottie.network(
                    'https://assets6.lottiefiles.com/packages/lf20_Xho5ht.json'),
                height: 150,
                width: 150,
              )
            : const Text(
                "data loaded",
                style: TextStyle(fontSize: 24),
              ),
      ),
    ));
  }

  void loadingTime() {
    timer = Timer.periodic(const Duration(seconds: 10), (timer) {
      setState(() {
        isLoad = false;
        preference?.setBool("isLoad", isLoad);
      });
    });
  }

  initislisePreference() async {
    preference = await SharedPreferences.getInstance();
    isLoad = preference?.getBool("isLoad") ?? true;
  }
}
