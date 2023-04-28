import 'package:bmicalculator/constants/constants.dart';
import 'package:bmicalculator/view/widgets/customCalculateButton.dart';
import 'package:bmicalculator/view/widgets/customContainer.dart';
import 'package:bmicalculator/view/widgets/customEpanded.dart';
import 'package:bmicalculator/view/widgets/customIconBtn.dart';
import 'package:bmicalculator/view/widgets/customSlider.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int height = 170;
  int weight = 50;
  int age = 30;
  bool male = false;
  bool female = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: customText(text: "BMI CALCULATOR"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        color: backgroundColor,
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  CustomExpanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          male = !male;
                          female = false;
                        });
                      },
                      child: CustomContainer(
                        color: male ? Colors.blue : null,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.male,
                                  color: male ? Colors.white : primaryColor,
                                  size: 100),
                              customText(text: "MALE"),
                            ]),
                      ),
                    ),
                  ),
                  CustomExpanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          female = !female;
                          male = false;
                        });
                      },
                      child: CustomContainer(
                        color: female ? Colors.blue : null,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.female,
                                  color: female ? Colors.white : primaryColor,
                                  size: 100),
                              customText(text: "FEMALE"),
                            ]),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            CustomExpanded(
              child: CustomContainer(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      customText(text: "HEIGHT"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          customText(text: height.toString(), size: 40),
                          customText(text: "cm"),
                        ],
                      ),
                      CustomSlider(
                        height: height,
                        onChanged: (double currentHeight) {
                          setState(() {
                            height = currentHeight.round();
                          });
                        },
                      )
                    ]),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  CustomExpanded(
                    child: CustomContainer(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            customText(text: "WEIGHT"),
                            customText(text: weight.toString(), size: 40),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomIconBtn(
                                      onPressed: () {
                                        setState(() {
                                          weight > 0 ? weight-- : weight = 0;
                                        });
                                      },
                                      icon: Icons.remove_circle),
                                  CustomIconBtn(
                                    onPressed: () {
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                    icon: Icons.add_circle,
                                  ),
                                ]),
                          ]),
                    ),
                  ),
                  CustomExpanded(
                    child: CustomContainer(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          customText(text: "AGE"),
                          customText(text: age.toString(), size: 40),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomIconBtn(
                                    onPressed: () {
                                      setState(() {
                                        age > 0 ? age-- : age = 0;
                                      });
                                    },
                                    icon: Icons.remove_circle),
                                CustomIconBtn(
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  icon: Icons.add_circle,
                                ),
                              ]),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 60,
              child: CalculateButton(height: height, weight: weight),
            ),
          ],
        ),
      ),
    );
  }
}
