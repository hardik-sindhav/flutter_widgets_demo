import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpUi extends StatelessWidget {
  const SignUpUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xff989696FF),
      body: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            child: Image.asset('assets/images/account.png'),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  SizedBox(height: 30,),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text('Sign Up',style: TextStyle(fontSize: 30,fontFamily: 'LibreBaskerville-Regular',fontWeight: FontWeight.w600),),
                  ),
                  SizedBox(height: 50,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('Name',style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),),
                  ),
                  textInput(hintText: 'Your name'),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('Email',style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),),
                  ),
                  textInput(hintText: 'Your email'),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('Contact no',style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),),
                  ),
                  textInput(hintText: 'Your contact number'),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('Password',style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),),
                  ),
                  textInput(hintText: 'Your password',IconData: Icon(CupertinoIcons.eye)),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
  Widget textInput({hintText='',IconData=''})=>
      Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: TextFormField(
          decoration: InputDecoration(
            prefixIcon: IconData,
            hintText: hintText,
            labelStyle: const TextStyle(color: Colors.black54,fontSize: 17,fontWeight: FontWeight.w500),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black54),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black54),
            ),
          ),
          cursorColor: Colors.black26,
        ),
      );
}
