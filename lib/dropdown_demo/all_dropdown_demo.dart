import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:awesome_dropdown/awesome_dropdown.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:dropdown_plus/dropdown_plus.dart';
import 'package:find_dropdown/find_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';
import 'package:flutter_dropdown_search/flutter_dropdown_search.dart';

class AllDropdownDemo extends StatefulWidget {
  const AllDropdownDemo({Key? key}) : super(key: key);


  @override
  State<AllDropdownDemo> createState() => _AllDropdownDemoState();
}

class _AllDropdownDemoState extends State<AllDropdownDemo> {
  final jobRoleCtrl = TextEditingController();
  TextEditingController _controller=TextEditingController();

  final List<String> items = [
    'Jio',
    'Airtel',
    'Vi',
    'BSNL',
  ];
  String? selectedValue;

  List<String> countries=['india','us','russia','nepal','pakistan','uae','uk','brazil','africa'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30,right: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
             children: [
               const SizedBox(height: 50,),
               TextDropdownFormField(
                 options: const ["Male", "Female","Other",],
                 decoration: const InputDecoration(
                     border: OutlineInputBorder(),
                     suffixIcon: Icon(Icons.arrow_drop_down),
                     labelText: "Gender"),
                 dropdownHeight: 170,
               ),
               const SizedBox(height: 20,),
          FindDropdown(
            items: const ["Airtel", "Jio", "VI", "BSNL"],
            label: "Sim",
            selectedItem: "Jio", onChanged: (String? selectedItem) {  },
          ),
               const SizedBox(height: 20,),

               Center(
                 child: DropdownButtonHideUnderline(
                   child: DropdownButton2(
                     isExpanded: true,
                     hint: Row(
                       children: const [
                         Icon(
                           Icons.list,
                           size: 16,
                           color: Colors.yellow,
                         ),
                         SizedBox(
                           width: 4,
                         ),
                         Expanded(
                           child: Text(
                             'Select Item',
                             style: TextStyle(
                               fontSize: 14,
                               fontWeight: FontWeight.bold,
                               color: Colors.yellow,
                             ),
                             overflow: TextOverflow.ellipsis,
                           ),
                         ),
                       ],
                     ),
                     items: items
                         .map((item) =>
                         DropdownMenuItem<String>(
                           value: item,
                           child: Text(
                             item,
                             style: const TextStyle(
                               fontSize: 14,
                               fontWeight: FontWeight.bold,
                               color: Colors.white,
                             ),
                             overflow: TextOverflow.ellipsis,
                           ),
                         ))
                         .toList(),
                     value: selectedValue,
                     onChanged: (value) {
                       setState(() {
                         selectedValue = value as String;
                       });
                     },
                     icon: const Icon(
                       Icons.arrow_forward_ios_outlined,
                     ),
                     iconSize: 14,
                     iconEnabledColor: Colors.yellow,
                     iconDisabledColor: Colors.grey,
                     buttonHeight: 50,
                     buttonWidth: 160,
                     buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                     buttonDecoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(14),
                       border: Border.all(
                         color: Colors.black26,
                       ),
                       color: Colors.redAccent,
                     ),
                     buttonElevation: 2,
                     itemHeight: 40,
                     itemPadding: const EdgeInsets.only(left: 14, right: 14),
                     dropdownMaxHeight: 200,
                     dropdownWidth: 200,
                     dropdownPadding: null,
                     dropdownDecoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(14),
                       color: Colors.redAccent,
                     ),
                     dropdownElevation: 8,
                     scrollbarRadius: const Radius.circular(40),
                     scrollbarThickness: 6,
                     scrollbarAlwaysShow: true,
                     offset: const Offset(-20, 0),
                   ),
                 ),
               ),
               const SizedBox(height: 20,),
               DropDown<String>(
                 items: const <String>["Male", "Female", "Other"],
                 icon: const Icon(
                   Icons.expand_more,
                   color: Colors.blue,
                 ),
                 customWidgets: <Widget>[
                   Row(
                     children: const <Widget>[
                       Text("Male"),
                      Icon(Icons.male),
                     ],
                   ),
                   Row(
                     children: const <Widget>[
                       Text("Female"),
                       Icon(Icons.female)
                     ],
                   ),
                   Row(
                     children: const <Widget>[
                       Text("Other"),
                       Icon(Icons.person_add)
                     ],
                   )
                 ],
                 hint: const Text("Select Gender"),
                 onChanged: print,
               ),
               const SizedBox(height: 20,),
          CustomDropdown(
            fillColor: Colors.indigoAccent,
            hintText: 'Select job role',
            items: const ['Developer', 'Designer', 'Consultant', 'Student'],
            controller: jobRoleCtrl,
          ),
               const SizedBox(height: 20,),
               const Text('Select Your Salary'),
               AwesomeDropDown(
                 elevation: 5,
                 dropDownList: const ["50000", "50000-70000", "70000-90000", "1 Lakh", "2 Lakh", "3 Lakh"],
               ),
               const SizedBox(height: 20,),
               FlutterDropdownSearch(
                 hintText: 'Select Your Country',
                 textController: _controller,
                 items: countries,
                 dropdownHeight: 300,
               ),




             ],
          ),
        ),
      ),
    ));
  }
}
