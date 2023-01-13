import 'package:flutter/material.dart';
import 'package:custom_check_box/custom_check_box.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import 'package:msh_checkbox/msh_checkbox.dart';
import 'package:parent_child_checkbox/parent_child_checkbox.dart';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:cupertino_radio_choice/cupertino_radio_choice.dart';
import 'package:group_radio_button/group_radio_button.dart';

class CheckBoxDemo extends StatefulWidget {
  const CheckBoxDemo({Key? key}) : super(key: key);

  @override
  State<CheckBoxDemo> createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {
  int _stackIndex = 0;

  String _singleValue = "Text alignment right";
  String _verticalGroupValue = "Pending";

  List<String> _status = ["Pending", "Released", "Blocked"];

  String? gValue;
  bool cValue = false;
  bool isChecked=false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomCheckBox(
                checkBoxSize: 30,
                  value: cValue, onChanged: (value){
                setState(() {
                  cValue=value;
                });
              }),
              RoundCheckBox(
                onTap: (selected) {},
                uncheckedWidget: Icon(Icons.close),
                animationDuration: Duration(
                  milliseconds: 50,
                ),
              ),
              SizedBox(height: 15,),
              RoundCheckBox(
                onTap: (selected) {},
                checkedWidget: Icon(Icons.mood, color: Colors.white),
                uncheckedWidget: Icon(Icons.mood_bad),
                animationDuration: Duration(
                  seconds: 1,
                ),
              ),
              SizedBox(height: 15,),
              MSHCheckbox(
                size: 40,
                value: isChecked,
                checkedColor: Colors.blue,
                style: MSHCheckboxStyle.stroke,
                onChanged: (selected) {
                  setState(() {
                    isChecked = selected;
                  });
                },
              ),
              SizedBox(height: 15,),
              ParentChildCheckbox(
                parent: Text('Parent 1'),
                children: [
                  Text('Children 1.1'),
                  Text('Children 1.2'),
                  Text('Children 1.3'),
                  Text('Children 1.4'),
                ],
                parentCheckboxColor: Colors.green,
                childrenCheckboxColor: Colors.indigoAccent,
              ),
              SizedBox(height: 15,),
              CustomRadioButton(
                elevation: 0,
                absoluteZeroSpacing: true,
                unSelectedColor: Theme.of(context).canvasColor,
                buttonLables: [
                  'Student',
                  'Parent',
                  'Teacher',
                ],
                buttonValues: [
                  "STUDENT",
                  "PARENT",
                  "TEACHER",
                ],
                buttonTextStyle: ButtonTextStyle(
                    selectedColor: Colors.white,
                    unSelectedColor: Colors.black,
                    textStyle: TextStyle(fontSize: 16)),
                radioButtonValue: (value) {
                  print(value);
                },
                selectedColor: Theme.of(context).accentColor,
              ),
              SizedBox(height: 15,),
              RadioGroup<String>.builder(
                groupValue: _verticalGroupValue,
                onChanged: (value) => setState(() {
                  _verticalGroupValue = value!;
                }),
                items: _status,
                itemBuilder: (item) => RadioButtonBuilder(
                  item,
                ),
              ),
              SizedBox(height: 15,),
              CupertinoRadioChoice(
                  choices: {'male' : 'Male', 'female' : 'Female', 'other': 'Other'},
                  onChange: (selectedGender) {},
                  initialKeyValue: 'male'),

              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Radio(value: "Male", groupValue: gValue, onChanged: (value){
                    setState(() {
                      gValue=value;
                    });

                  }),
                  Text('Male'),
                  SizedBox(width: 15,),
                  Radio(value: "Female", groupValue: gValue, onChanged: (value){
                    setState(() {
                      gValue=value;
                    });

                  }),
                  Text('Female'),
                  SizedBox(width: 15,),
                  Radio(value: "Other", groupValue: gValue, onChanged: (value){
                    setState(() {
                      gValue=value;
                    });

                  }),
                  Text('Other'),
                  SizedBox(width: 15,),

                ],
              ),
              SizedBox(height: 50,),
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),
                  side: BorderSide(color: Colors.blueAccent,width: 1,style: BorderStyle.solid),),
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 300,
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration.collapsed(hintText: 'User Name', ),

                  ),
                ),
              ),
              SizedBox(height: 15,),
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),
                  side: BorderSide(color: Colors.blueAccent,width: 1,style: BorderStyle.solid),),
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 300,
                  child: TextField(
                    obscureText: true,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration.collapsed(hintText: 'Password', ),

                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
