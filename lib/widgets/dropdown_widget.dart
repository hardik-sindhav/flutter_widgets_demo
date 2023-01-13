import 'package:flutter/material.dart';

class DropdownDemo extends StatefulWidget {
  const DropdownDemo({Key? key}) : super(key: key);

  @override
  State<DropdownDemo> createState() => _DropdownDemoState();
}

class _DropdownDemoState extends State<DropdownDemo> {
  String selectedValue = 'Item 1';

  var items =[
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4'
    ,'Item 5',


  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: Center(
      child: Container(
        child: DropdownButton(

          // Initial Value
          value: selectedValue,


          // Down Arrow Icon
          icon: const Icon(Icons.keyboard_arrow_down),

          // Array list of items
          items: items.map((String items) {
            return DropdownMenuItem(
              value: items,
              child: Text(items),
            );
          }).toList(),
          // After selecting the desired option,it will
          // change button value to selected value
          onChanged: (String? newValue) {
            setState(() {
              selectedValue = newValue!;
            });
          },
        ),


      ),
    ),
     ),);
  }
}
