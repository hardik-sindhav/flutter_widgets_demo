import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:libphonenumber_plugin/libphonenumber_plugin.dart';


class LibPhoneUtil extends StatefulWidget {
  LibPhoneUtil({Key? key}) : super(key: key);

  @override
  State<LibPhoneUtil> createState() => _LibPhoneUtilState();
}

class _LibPhoneUtilState extends State<LibPhoneUtil> {
  TextEditingController phoneNumber = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String ?isoCode="IN";
  bool isValid=false;

  String ?phoneCode;

  @override
  Widget build(BuildContext context) {



    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(height: 50,),
                ElevatedButton(
                  style: ButtonStyle(
                  ),
                  onPressed: () {
                    showCountryPicker(
                      showPhoneCode: true,
                      onSelect: (Country country) {
                        setState((){
                          isoCode=country.countryCode;
                          phoneCode=country.phoneCode;
                        });
                      }, context: context,

                    );
                  },
                  child: const Text('Select Country'),
                ),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    style: const TextStyle(fontSize: 14),
                    controller: phoneNumber,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    keyboardType: TextInputType.number,
                    onChanged: (value) async {
                      bool? isMobile = await PhoneNumberUtil.isValidPhoneNumber(value, isoCode??"");
                      setState(() {
                        isValid=isMobile??false;
                      });
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter Phone Number";
                      }else if(!isValid){
                        return 'invalid mobile number';
                      }
                    },
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(
                          color: Colors.indigoAccent,
                          width: 2,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(
                          color: Colors.indigoAccent,
                          width: 2,
                        ),
                      ),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(25),
                        ),
                      ),
                      hintText: 'Phone Number',
                      labelStyle: const TextStyle(color: Colors.indigo),

                    ),
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}

