import 'package:flutter/material.dart';

import '../generated/l10n.dart';

class Second extends StatefulWidget {
   Second({Key? key}) : super(key: key);

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(S().name),
      ),
    );
  }
}
