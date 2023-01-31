// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flexible_slider/arrays.dart';
import 'package:flutter/material.dart';
import 'package:flutter_balloon_slider/flutter_balloon_slider.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:bubble_slider/bubble_slider.dart';
import 'package:flutter_radio_slider/flutter_radio_slider.dart';
import 'package:flexible_slider/flexible_slider.dart';
import 'package:reviews_slider/reviews_slider.dart';
import 'package:selection_wave_slider/selection_wave_slider.dart';
import 'package:slide_switcher/slide_switcher.dart';
import 'package:slider_button/slider_button.dart';

class SliderWidgets extends StatefulWidget {
  const SliderWidgets({Key? key}) : super(key: key);

  @override
  State<SliderWidgets> createState() => _SliderWidgetsState();
}

class _SliderWidgetsState extends State<SliderWidgets> {
  double sValue = 10;
  double mValue = 40;
  double nValue = 20;
  double bValue = 20;
  int index = 0;


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
                Slider(
                  value: sValue,
                  max: 100,
                  min: 0,
                  divisions: 10,
                  label: sValue.toInt().toString(),
                  onChanged: (value) {
                    setState(() {
                      sValue = value;
                    });
                  },
                ),
                SizedBox(height: 20,),
                Text(sValue.toInt().toString()),
                BalloonSlider(
                    value: 0.5,
                    ropeLength: 70,
                    showRope: false,
                    onChangeStart: (value) {},
                    onChanged: (value) {},
                    onChangeEnd: (value) {},
                    color: Colors.blueAccent
                ),
                SizedBox(height: 20,),

                SfSlider(
                  min: 0.0,
                  max: 500.0,
                  value: mValue,
                  interval: 50,
                  showTicks: true,
                  showLabels: true,
                  enableTooltip: true,
                  minorTicksPerInterval: 1,
                  onChanged: (dynamic value){
                    setState(() {
                      mValue = value;
                    });
                  },
                ),
                SizedBox(height: 20,),
                BubbleSlider(
                  value: nValue,
                  bubbleSize: BubbleSize.large,
                  thumbRadiusSpeed: ThumbRadiusSpeed.veryFast,
                  bubblesSpeed: BubbleSpeed.veryFast,
                  isBubbleVisible: true,
                  onChanged: (val) {
                    nValue = val;
                  },
                  onChangeEnd: (s) {},
                  color: Colors.blue,
                ),
                SizedBox(height: 20,),



            RadioSlider(
              activeColor: Colors.cyan,
              orientation: RadioSliderOrientation.Horizontal,
              onChanged: (value) {
              },
              divisions: 7,
              value: 3,
              outerCircle: false,
            ),
                SizedBox(height: 20,),

                FlexibleSlider(
                  min: 0,
                  max: 100,
                  divisions:  10,
                  direction:  Direction.vertical,
                  position:  Position.reversedPosition,
                  fractionDigits:  1,
                  onValueChanged: (value) {
                    print(value);
                  },
                ),
                SizedBox(height: 20,),

            ReviewSlider(
                onChange: (int value){
                }),
                SizedBox(height: 20,),

                WaveSliderWithDragPoint(
                  dragButton: Container(
                    color: Colors.blue,
                  ),
                  sliderHeight: 80,
                  sliderPointColor: Colors.blue,
                  sliderPointBorderColor: Colors.orange,
                  sliderColor: Colors.red,
                  toolTipBackgroundColor: Colors.black,
                  toolTipBorderColor: Colors.black,
                  toolTipTextStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  onSelected: (value) {
                    print(value);
                  },
                  optionToChoose: [
                    "Yes",
                    "May Be",
                    "No",
                  ],
                ),
                SizedBox(height: 20,),

                SlideSwitcher(
                  children: [
                    Text('Home'),
                    Text('Likes'),

                  ],
                  onSelect: (index) {},
                  containerHeight: 40,
                  containerWight: 350,
                  containerColor: Colors.blueAccent,
                  slidersColors: [
                    Colors.amberAccent
                  ],
                ),
                SizedBox(height: 20,),

            Center(child: SliderButton(
              action: () {
              },
              label: Text(
                "Slide to cancel Event",
                style: TextStyle(
                    color: Color(0xff4a4a4a), fontWeight: FontWeight.w500, fontSize: 17),
              ),
              icon: Text(
                "x",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w400,
                  fontSize: 44,
                ),
              ),


            ),),
                SizedBox(height: 20,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
