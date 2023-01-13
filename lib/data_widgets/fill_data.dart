import 'package:flutter/material.dart';
import 'package:testapp/data_widgets/show_data.dart';
import 'package:testapp/generated/l10n.dart';

class FillData extends StatefulWidget {
  const FillData({Key? key}) : super(key: key);

  @override
  State<FillData> createState() => _FillDataState();
}

class _FillDataState extends State<FillData> {
  String ? load;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(S().hello),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                const Icon(
                  Icons.arrow_back_outlined,
                  size: 30,
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  S().header_text,
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      S.load(const Locale('en'));
                      load='en';
                    });
                    
                  },
                  child: const Text("English"),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {

                    setState(() {
                      S.load(const Locale('hi',"IN"));

                    });
                  },
                  child: const Text("हिन्दी"),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed:  () {
                    setState(() {
                      S.load(const Locale('gu',"IN"));

                    });

                  },
                  child: const Text("ગુજરાતી"),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      S.load(const Locale('mr',"IN"));

                    });
                    
                    
                  },
                  child: const Text("मराठी"),
                ),
                const Spacer(),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Expanded(child: SizedBox()),
            Image.asset(
              "assets/images/Brighton.png",
              height: 100,
              width: 100,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              S().about,
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 20,
            ),


            Row(
              children: [
                const SizedBox(
                  width: 30,
                ),
                Text(
                  S().name,
                  style: const TextStyle(
                      fontWeight: FontWeight.w500, fontSize: 16),
                ),
                 Text(
                  S().uname,
                  style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 30,
                ),
                Text(
                  S().age,
                  style: const TextStyle(
                      fontWeight: FontWeight.w500, fontSize: 16),
                ),
                 Text(
                  S().uage,
                  style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 30,
                ),
                Text(
                  S().location,
                  style: const TextStyle(
                      fontWeight: FontWeight.w500, fontSize: 16),
                ),
                 Text(
                  S().ulocation,
                  style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 30,
                ),
                Text(
                  S().email,
                  style: const TextStyle(
                      fontWeight: FontWeight.w500, fontSize: 16),
                ),
                 Text(
                  S().uemail,
                  style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 50,
            ),
            InkWell(
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.indigo,
                ),
                child: Text(
                  S().log_button,
                  style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.white),
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  Second(
                            )));
              },
            ),
            const Expanded(child: SizedBox()),
          ],
        ),
      ),
    ),);
  }
}
