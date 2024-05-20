import 'dart:math';
import 'package:bmi/constants/colors.dart';
import 'package:bmi/widgets/calculatebutton.dart';
import 'package:bmi/widgets/gendercontainer.dart';
import 'package:bmi/widgets/ageoeweightcontainer.dart';
import 'package:bmi/widgets/heightslidercontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:bmi/BMIresultscreen.dart';
import 'package:flutter/widgets.dart';

class BmiHomePage extends StatefulWidget {
  const BmiHomePage({super.key});

  @override
  State<BmiHomePage> createState() => _BmiHomePageState();
}

class _BmiHomePageState extends State<BmiHomePage> {
  bool isMale = true;
  int manheight = 155;
  int age = 20;
  int weight = 45;
  double result = 0.0;
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appbackgroundcolor,
      appBar: AppBar(
        backgroundColor: Color(0XFF3FA796),
        title: Text('BMI Calculator'),
        centerTitle: true,
        titleTextStyle: TextStyle(color: whitecolor, fontSize: 22.0),
      ),
      body: Column(
        children: [
          //first part
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: GenderContainer(
                        onTap: () {
                          setState(() {
                            isMale = true;
                          });
                        },
                        iconandtextcolor: isMale ? whitecolor : blackcolor,
                        icon: Icons.male,
                        isMale: isMale,
                        text: "Male",
                        backgroundcolor:
                            isMale ? malebackgroundcolor : greycolor,
                        Width: 145.0,
                        Height: 170.0),
                  ),
                  //Female Container
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: GenderContainer(
                        onTap: () {
                          setState(() {
                            isMale = false;
                          });
                        },
                        icon: Icons.female,
                        isMale: isMale,
                        text: "female",
                        iconandtextcolor: isMale ? blackcolor : whitecolor,
                        backgroundcolor:
                            isMale ? greycolor : femalebackgroundcolor,
                        Width: 145.0,
                        Height: 170.0),
                  ),
                ],
              ),
            ),
          ),

          // Seconed Part
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: HeightSliderContainer(
                manheight: manheight,
                Height: 156,
                Width: 320,
                sliderwidget: Slider(
                  value: manheight.roundToDouble(),
                  min: 40,
                  max: 230.0,
                  onChanged: (value) {
                    setState(() {
                      manheight = value.round();
                    });
                  },
                )),),
          //third part
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20.0),
            child: Row(
              children: [
                AgeOrWeightContainer(
                    Age: age,
                    text: "Age",
                    plusFunc: () {
                      setState(() {
                        age++;
                      });
                    },
                    removeFunc: () {
                      setState(() {
                        age--;
                      });
                    }),
                SizedBox(
                  width: 25.0,
                ),
                AgeOrWeightContainer(
                    Age: weight,
                    text: "Weight",
                    plusFunc: () {
                      setState(() {
                        weight++;
                      });
                    },
                    removeFunc: () {
                      setState(() {
                        weight--;
                      });
                    }),
              ],
            ),
          ),
          //fourth Part
        //   Expanded(
        //     child: Container(
        //       width: double.infinity,
        //       decoration: BoxDecoration(color: Colors.blue),
        //       child: TextButton(
        //         child: Text(
        //           "Calculate",
        //           style: TextStyle(
        //             fontSize: 25.0,
        //             color: Colors.white,
        //           ),
        //         ),
        //         onPressed: () {
        //           setState(() {
        //             result = weight / pow(manheight / 100, 2);
        //             result.round();
        //           });
        //           Navigator.push(
        //               context,
        //               MaterialPageRoute(
        //                   builder: (context) => Result(
        //                         result: result.round(),
        //                         Age: age,
        //                         gender: isMale ? "Male" : "Female",
        //                         weight: weight,
        //                         height: manheight,
        //                       )));
        //         },
        //       ),
        //     ),
        //   )
        // ],
        CalculateButton(text: "Calculate", onPressed:() {
                  setState(() {
                    result = weight / pow(manheight / 100, 2);
                    result.round();
                  });
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Result(
                                result: result.round(),
                                Age: age,
                                gender: isMale ? "Male" : "Female",
                                weight: weight,
                                height: manheight,
                              )));
                })
        ],
      ),
    );
  }
}
