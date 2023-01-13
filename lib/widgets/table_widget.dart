import 'package:flutter/material.dart';

class TableWidget extends StatelessWidget {
  const TableWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
       body: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           SizedBox(height: 20,),
           Text('Students Information',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600),),
           Padding(
             padding: const EdgeInsets.all(15),
             child: Table(

                children: const [
                  TableRow(
                    children: [
                      Text('Name',textScaleFactor: 1.5,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                      Text('Course',textScaleFactor: 1.5,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                      Text('City',textScaleFactor: 1.5,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                    ],
                  ),
                  TableRow(
                    children: [
                      Text('Virag',textScaleFactor: 1.5,),
                      Text('B.Com',textScaleFactor: 1.5,),
                      Text('Botad',textScaleFactor: 1.5,),
                    ],
                  ),
                  TableRow(
                    children: [
                      Text('Bhavin',textScaleFactor: 1.5,),
                      Text('BSC',textScaleFactor: 1.5,),
                      Text('Rajkot',textScaleFactor: 1.5,),
                    ],
                  ),
                  TableRow(
                    children: [
                      Text('Mohit',textScaleFactor: 1.5,),
                      Text('LLB',textScaleFactor: 1.5,),
                      Text('Surat',textScaleFactor: 1.5,),
                    ],
                  ),
                  TableRow(
                    children: [
                      Text('Dhaval',textScaleFactor: 1.5,),
                      Text('B.A',textScaleFactor: 1.5,),
                      Text('Bhavnagar',textScaleFactor: 1.5,),
                    ],
                  ),
                ],


             ),
           ),
         ],
       ),
    ));
  }
}
