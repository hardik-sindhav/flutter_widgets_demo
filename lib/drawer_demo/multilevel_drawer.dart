
import 'package:flutter/material.dart';
import 'package:multilevel_drawer/multilevel_drawer.dart';



class MultiLavelDrawerDemo extends StatelessWidget {
  const MultiLavelDrawerDemo({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter ML Menu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        drawer: MultiLevelDrawer(
          backgroundColor: Colors.white,
          rippleColor: Colors.white,
          subMenuBackgroundColor: Colors.grey.shade100,
          divisionColor: Colors.grey,
          header: Container(
            height: size.height * 0.25,
            child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.network(
                      "https://i.postimg.cc/zBQjSXwQ/virag.png",
                      width: 100,
                      height: 100,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("Softices")
                  ],
                )),
          ),
          children: [
            MLMenuItem(
                leading: const Icon(Icons.person),
                trailing: const Icon(Icons.arrow_right),
                content: const Text(
                  "My Profile",
                ),
                subMenuItems: [
                  MLSubmenu(
                      onClick: () {

                      },
                      submenuContent: const Text("Option 1")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 2")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 3")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 4")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 5")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 6")),
                ],
                onClick: () {}),
            MLMenuItem(
                leading: const Icon(Icons.settings),
                trailing: const Icon(Icons.arrow_right),
                content: const Text("Settings"),
                onClick: () {},
                subMenuItems: [MLSubmenu(onClick: () {}, submenuContent: const Text("Option 1")), MLSubmenu(onClick: () {}, submenuContent: const Text("Option 2"))]),
            MLMenuItem(
              leading: const Icon(Icons.notifications),
              content: const Text("Notifications"),
              onClick: () {

              },
            ),
            MLMenuItem(
                leading: const Icon(Icons.payment),
                trailing: const Icon(Icons.arrow_right),
                content: const Text(
                  "Payments",
                ),
                subMenuItems: [
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 1")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 2")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 3")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 4")),
                ],
                onClick: () {}),
            MLMenuItem(
                leading: const Icon(Icons.payment),
                trailing: const Icon(Icons.arrow_right),
                content: const Text(
                  "Payments",
                ),
                subMenuItems: [
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 1")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 2")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 3")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 4")),
                ],
                onClick: () {}),
            MLMenuItem(
                leading: const Icon(Icons.payment),
                trailing: const Icon(Icons.arrow_right),
                content: const Text(
                  "Payments",
                ),
                subMenuItems: [
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 1")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 2")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 3")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 4")),
                ],
                onClick: () {}),
            MLMenuItem(
                leading: const Icon(Icons.payment),
                trailing: const Icon(Icons.arrow_right),
                content: const Text(
                  "New Option",
                ),
                subMenuItems: [
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 1")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 2")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 3")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 4")),
                ],
                onClick: () {}),
            MLMenuItem(
                leading: const Icon(Icons.payment),
                trailing: const Icon(Icons.arrow_right),
                content: const Text(
                  "New Option 1",
                ),
                subMenuItems: [
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 1")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 2")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 3")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 4")),
                ],
                onClick: () {}),
            MLMenuItem(
                leading: const Icon(Icons.payment),
                trailing: const Icon(Icons.arrow_right),
                content: const Text(
                  "New Option 2",
                ),
                subMenuItems: [
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 1")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 2")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 3")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 4")),
                ],
                onClick: () {}),
            MLMenuItem(
                leading: const Icon(Icons.payment),
                trailing: const Icon(Icons.arrow_right),
                content: const Text(
                  "New Option 3",
                ),
                subMenuItems: [
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 1")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 2")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 3")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 4")),
                ],
                onClick: () {}),
            MLMenuItem(
                leading: const Icon(Icons.payment),
                trailing: const Icon(Icons.arrow_right),
                content: const Text(
                  "New Option 4",
                ),
                subMenuItems: [
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 1")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 2")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 3")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 4")),
                ],
                onClick: () {}),
            MLMenuItem(
                leading: const Icon(Icons.payment),
                trailing: const Icon(Icons.arrow_right),
                content: const Text(
                  "New Option 5",
                ),
                subMenuItems: [
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 1")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 2")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 3")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 4")),
                ],
                onClick: () {}),
            MLMenuItem(
                leading: const Icon(Icons.payment),
                trailing: const Icon(Icons.arrow_right),
                content: const Text(
                  "New Option 6",
                ),
                subMenuItems: [
                  MLSubmenu(onClick: () {


                  }, submenuContent: const Text("Option 1")),

                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 2")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 3")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 4")),
                ],
                onClick: () {
                }),
          ],
        ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black),
          title: const Text(
            "Multi Level Menu",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [
                Color.fromRGBO(255, 65, 108, 1.0),
                Color.fromRGBO(255, 75, 43, 1.0),
              ]),
            ),
            child: const Center()),
      ),
    );
  }
}