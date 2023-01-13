import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:libphonenumber_plugin/libphonenumber_plugin.dart';
import 'package:testapp/drawer_demo/all_drawers.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
// ignore: must_be_immutable

class SignUp extends StatefulWidget {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailAdressController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passWordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool showPassword = true;
  bool isValid = false;
  String? isoCode;
  String? phoneCode;

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                children: const [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.arrow_back_outlined,
                    color: Colors.indigoAccent,
                    size: 30,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Sign Up',
                    style: TextStyle(
                        color: Colors.indigoAccent,
                        fontSize: 25,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
                width: double.maxFinite,
              ),
              Form(
                key: widget._formKey,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 300,
                        child: TextFormField(
                          style: const TextStyle(fontSize: 14),
                          obscureText: false,
                          controller: widget.firstNameController,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          keyboardType: TextInputType.name,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please Enter First Name";
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
                            hintText: 'First Name',
                            labelStyle: const TextStyle(color: Colors.indigo),
                            prefixIcon: const Icon(
                              Icons.person,
                              color: Colors.indigoAccent,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 300,
                        child: TextFormField(
                          style: const TextStyle(fontSize: 14),
                          obscureText: false,
                          controller: widget.lastNameController,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          keyboardType: TextInputType.name,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please Enter Last Name";
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
                            hintText: 'Last Name',
                            labelStyle: const TextStyle(color: Colors.indigo),
                            prefixIcon: const Icon(
                              Icons.person,
                              color: Colors.indigoAccent,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 300,
                        child: TextFormField(
                          style: const TextStyle(fontSize: 14),
                          obscureText: false,
                          controller: widget.emailAdressController,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please Enter Email Address";
                            }
                            if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                              return "Please enter a valid email address";
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
                            hintText: 'Email Address',
                            labelStyle: const TextStyle(color: Colors.indigo),
                            prefixIcon: const Icon(
                              Icons.mail,
                              color: Colors.indigoAccent,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      /* SizedBox(
                        width: 300,
                        child: TextFormField(
                          style: const TextStyle(fontSize: 14),
                          obscureText: false,
                          controller: widget.phoneNumberController,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please Enter Phone Number";
                            }
                            if (value.length < 10) {
                              return 'Enter valid number';
                            }
                            if (value.length > 10) {
                              return 'Enter valid number';
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
                            prefixIcon: const Icon(
                              Icons.phone,
                              color: Colors.indigoAccent,
                              size: 30,
                            ),
                          ),
                        ),
                      ),*/
                      SizedBox(
                        width: 300,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 80,
                              child: TextFormField(
                                textAlign: TextAlign.center,
                                style: const TextStyle(fontSize: 14),
                                readOnly: true,
                                onTap: () {
                                  showCountryPicker(
                                    favorite: <String>['US'],
                                    showPhoneCode: true,
                                    onSelect: (Country country) {
                                      setState(() {
                                        isoCode = country.countryCode;
                                        phoneCode = country.phoneCode;
                                      });
                                    },
                                    context: context,
                                  );
                                },
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                keyboardType: TextInputType.name,
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
                                  hintText: phoneCode ?? '',
                                  labelStyle:
                                      const TextStyle(color: Colors.indigo),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Please Enter Phone Number";
                                  } else if (!isValid) {
                                    return 'invalid mobile number';
                                  }
                                },
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            SizedBox(
                              width: 210,
                              child: TextFormField(
                                style: const TextStyle(fontSize: 14),
                                obscureText: false,
                                controller: widget.phoneNumberController,
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                keyboardType: TextInputType.number,
                                onChanged: (value) async {
                                  bool? isMobile =
                                      await PhoneNumberUtil.isValidPhoneNumber(
                                          value, isoCode ?? "");
                                  setState(() {
                                    isValid = isMobile ?? false;
                                  });
                                },
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Please Enter Phone Number";
                                  } else if (!isValid) {
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
                                  labelStyle:
                                      const TextStyle(color: Colors.indigo),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 300,
                        child: TextFormField(
                          maxLength: 8,
                          style: const TextStyle(fontSize: 14),
                          obscureText: showPassword,
                          controller: widget.passWordController,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          keyboardType: TextInputType.visiblePassword,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please Enter Password";
                            }
                            if (value.length < 8) {
                              return 'Must be more than 8 charater';
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
                            hintText: 'Password',
                            labelStyle: const TextStyle(color: Colors.indigo),
                            prefixIcon: const Icon(
                              Icons.lock,
                              color: Colors.indigoAccent,
                              size: 30,
                            ),
                            suffixIcon: IconButton(
                                icon: Icon(Icons.remove_red_eye,
                                    color: showPassword == true
                                        ? Colors.indigoAccent
                                        : Colors.green),
                                onPressed: () {
                                  setState(() {
                                    if (showPassword == true) {
                                      showPassword = false;
                                    } else {
                                      showPassword = true;
                                    }
                                  });
                                }),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 300,
                        height: 55,
                        child: Card(
                          color: Colors.indigoAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                            side: const BorderSide(
                                color: Colors.indigoAccent,
                                width: 1,
                                style: BorderStyle.solid),
                          ),
                          child: InkWell(
                            child: Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: 300,
                              child: const Text(
                                'Sign Up',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            onTap: () {
                              if (widget._formKey.currentState!.validate()) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const AllDrawersDemo()),
                                );
                              }
                            },
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Text(
                              'Already Have Account  : ',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 1,
                            ),
                            Text(
                              'Log In',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.indigoAccent),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
