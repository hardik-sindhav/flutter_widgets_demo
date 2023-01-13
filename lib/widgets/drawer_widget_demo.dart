import 'package:flutter/material.dart';

class DrawerWidgetDemo extends StatefulWidget {
  const DrawerWidgetDemo({Key? key}) : super(key: key);

  @override
  State<DrawerWidgetDemo> createState() => _DrawerWidgetDemoState();
}

class _DrawerWidgetDemoState extends State<DrawerWidgetDemo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Drawer'),
      ),
          drawer: Drawer(

            child: ListView(
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Text('Drawer Header'),
                ),
                ListTile(
                  title: const Text('Item 1'),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  title: const Text('Item 2'),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
              ],

            ),
          ),
    ));
  }
}
