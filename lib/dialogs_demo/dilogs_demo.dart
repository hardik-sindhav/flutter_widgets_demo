import 'dart:math';

import 'package:easy_dialog/easy_dialog.dart';
import 'package:fluid_dialog/fluid_dialog.dart';
import 'package:flutter/material.dart';
import 'package:loading_alert_dialog/loading_alert_dialog.dart';
import 'package:panara_dialogs/panara_dialogs.dart';
import 'package:stylish_dialog/stylish_dialog.dart';
import 'package:testapp/drawer_demo/all_drawers.dart';
import 'package:z_dialog/z_dialog.dart';

class AllDialogsDemo extends StatelessWidget {
  const AllDialogsDemo({Key? key}) : super(key: key);



  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                child: ButtonUi(text: 'Easy Dialog'),
                onTap: () {
                  EasyDialog(
                    title: const Text("Welcome to softices"),
                    description:
                        const Text("Best Way To Learn web And App Development"),
                  ).show(context);
                },
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                child: ButtonUi(text: 'Panara Confirm Dialog'),
                onTap: () {
                  PanaraConfirmDialog.show(
                    context,
                    title: "Exit",
                    message: "Do you really want to exit app.",
                    confirmButtonText: "Yes",
                    cancelButtonText: "No",
                    onTapCancel: () {
                      Navigator.pop(context);
                    },
                    onTapConfirm: () {
                      Navigator.pop(context);
                    },
                    panaraDialogType: PanaraDialogType.normal,
                    barrierDismissible:
                        false, // optional parameter (default is true)
                  );
                },
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                child: ButtonUi(text: 'Fluid Dialog'),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => FluidDialog(
                      sizeCurve: Curves.linear,
                      rootPage: FluidDialogPage(
                        alignment: Alignment.bottomLeft,
                        builder: (context) => const AllDrawersDemo(),
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                child: ButtonUi(text: 'Z Dialog'),
                onTap: () {
                  ZDialog.showCustomDialog(context,
                      title: 'Today Pic',
                      customWidget: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Image.asset('assets/images/post1.jpg'),
                          ),
                          const Text('Travel with us')
                        ],
                      ),
                      actions: <Widget>[
                        ZButton(
                          isDark: true,
                          text: 'Join now',
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Padding(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Text(
                                'Cancel',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ))
                      ]);
                },
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                child: ButtonUi(text: 'Adaptive Dialog'),
                onTap: () {
                  showAdaptiveDialog(
                    context: context,
                    builder: (context) => AdaptiveDialog(
                      //preferedStyle: PreferedStyle.IOS,
                      title: const Text('Exti'),
                      content: const Text('Do you want to exit app'),
                      actions: [
                        TextButton(
                            onPressed: () {}, child: const Text('Confirm')),
                        TextButton(
                            onPressed: () {}, child: const Text('Cancel')),
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                child: ButtonUi(text: 'LoadingAlert Dialog'),
                onTap: () {
                  LoadingAlertDialog.showLoadingAlertDialog<int>(
                    context: context,
                    builder: (
                      context,
                    ) =>
                        Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(
                          24.0,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: const <Widget>[
                            CircularProgressIndicator(),
                            Text(
                              "Please Wait...",
                            ),
                          ],
                        ),
                      ),
                    ),
                    computation: Future.delayed(
                      const Duration(
                        seconds: 3,
                      ),
                      () {
                        final randomNumber = Random().nextInt(
                          300,
                        );
                        return randomNumber;
                      },
                    ),
                  );
                },
              ),

              const SizedBox(
                height: 10,
              ),

            ],
          ),
        ),
      ),
    );
  }

  }


Widget ButtonUi({text = ""}) => Container(
      alignment: Alignment.center,
      height: 40,
      width: 350,
      decoration: BoxDecoration(
        color: Colors.indigo,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        text ?? '',
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18),
      ),
    );
