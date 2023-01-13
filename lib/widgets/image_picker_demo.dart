import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerDemo extends StatefulWidget {
  const ImagePickerDemo({Key? key}) : super(key: key);

  @override
  State<ImagePickerDemo> createState() => _ImagePickerDemoState();
}

class _ImagePickerDemoState extends State<ImagePickerDemo> {
  String? image;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: image != null && image!.isNotEmpty
                      ? Image.file(
                    File(image ?? ""),
                    fit: BoxFit.cover,
                  )
                      : Image.asset('assets/images/account.png'),
                ),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    Expanded(child: ElevatedButton(
                        onPressed: () => getImage(ImageSource.gallery),
                        child: const Text('Gallery'))),
                    const SizedBox(width: 20,),
                    Expanded(child: ElevatedButton(
                        onPressed: () => getImage(ImageSource.camera),
                        child: const Text('Camera'))),

                  ],
                ),
              ],
            ),
          ),
        ));
  }

  getImage(ImageSource source) async {
    ImagePicker imagePicker = ImagePicker();
    final file = await imagePicker.pickImage(source: source);
    setState(() {
      image=file?.path;
    });
  }
}
