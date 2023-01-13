import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PremierLeagueView extends StatefulWidget {
  const PremierLeagueView({Key? key}) : super(key: key);

  @override
  State<PremierLeagueView> createState() => _PremierLeagueViewState();
}

class _PremierLeagueViewState extends State<PremierLeagueView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(body: Column(
         children: [
           Padding(
             padding: const EdgeInsets.only(left: 15,top: 15),
             child: Row(
               children: const [
                 Expanded(child: Text('Club'),),
                 SizedBox(width: 20,),
                 Text('MP'),
                 SizedBox(width: 5,),
                 Text('W'),
                 SizedBox(width: 5,),
                 Text('D'),
                 SizedBox(width: 5,),
                 Text('GF'),
                 SizedBox(width: 5,),
                 Text('GA'),
                 SizedBox(width: 5,),
                 Text('GD'),
                 SizedBox(width: 5,),
                 Text('Pts'),
                 Expanded(child: Text(textAlign: TextAlign.center,'Last 5'),),
                 SizedBox(width: 5,),
               ],
             ),
           ),
           SizedBox(height: 20,),
           ListViewde(),
           ListViewde(),
           ListViewde(),
           ListViewde(),
           ListViewde(),

         ],
      ),),
    );
  }
  Widget ListViewde({text=''})=>Row(
    children: [
      SizedBox(width: 15,),
      Expanded(
        child: Row(
          children: [
            Text('1'),
            SizedBox(width: 3,),
            Image.asset('assets/images/Arsenal.png',height: 20,width: 20,),
            SizedBox(width: 5,),
            Text('Arsenal'),
          ],
        ),
      ),
      SizedBox(width: 20,),
      Text('10'),
      SizedBox(width: 5,),
      Text('5'),
      SizedBox(width: 5,),
      Text('11'),
      SizedBox(width: 5,),
      Text('0'),
      SizedBox(width: 5,),
      Text('22'),
      SizedBox(width: 5,),
      Text('GD'),
      SizedBox(width: 5,),
      Text('Pts'),
      Expanded(child:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(CupertinoIcons.check_mark_circled_solid,size: 20,color: Colors.green,),
          Icon(CupertinoIcons.check_mark_circled_solid,size: 20,color: Colors.green,),
          Icon(CupertinoIcons.minus_circle_fill,size: 20,color: Colors.black26,),
          Icon(CupertinoIcons.clear_circled_solid,size: 20,color: Colors.red,),


        ],
      ),),
      SizedBox(width: 5,),

    ],
  );
}
