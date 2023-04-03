// import 'dart:html';

import 'dart:math';

import 'package:flutter/material.dart';

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({super.key});

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  double height = 0;
  Color clor1 = Colors.white;
  Color clor2 = Colors.white;
  double age = 0;
  double weight = 0.0;
  double bmi = 0;
  String gender = "male";
  Color background1 = Color.fromARGB(163, 3, 3, 3);
  Color background2 = Color.fromARGB(163, 3, 3, 3);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Container(
          height: 50,
          // color: Color.fromARGB(255, 15, 54, 86),
          // margin: const EdgeInsets.all(10),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 111, 0, 190),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/result', arguments: {
                'height': height,
                'wieght': weight,
                'gender': gender,
                'age': age
              });
            },
            child: const Center(
              child: Text('Calculate BMI'),
            ),
          ),
        ),
        appBar: AppBar(
          title: Text(
            "BMI CALCULATOR",
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 111, 0, 190),
        ),
        body: Container(
          padding: EdgeInsets.fromLTRB(10, 0, 10, 50),
          color: Color.fromARGB(255, 15, 45, 69),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 90,
                      width: 90,
                      padding: EdgeInsets.all(5),
                      // color: Color.fromARGB(163, 3, 3, 3),
                      child: Column(
                        children: [
                          IconButton(
                            iconSize: 35,
                            focusColor: Colors.green,
                            hoverColor: Colors.blue,
                            onPressed: () {
                              setState(() {
                                gender = 'male';
                                background1 = Colors.yellow;
                                background2 = Color.fromARGB(163, 3, 3, 3);
                                clor1 = Colors.black;
                                clor2 = Colors.white;
                              });
                            },
                            icon: Icon(Icons.male),
                            color: clor1,
                          ),
                          Text(
                            "Male",
                            style: TextStyle(color:clor1),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: background1,
                      ),
                    ),
                    Container(
                      width: 90,
                      padding: EdgeInsets.all(5),
                      height: 90,
                      child: Column(
                        children: [
                          IconButton(
                            iconSize: 35,
                            onPressed: () {
                              setState(() {
                                gender = 'female';
                                background2 = Colors.yellow;
                                background1 = Color.fromARGB(163, 3, 3, 3);
                                clor1 = Colors.white;
                                clor2 = Colors.black;
                              });
                            },
                            icon: Icon(Icons.female),
                            color: clor2,
                          ),
                          Text(
                            "Female",
                            style: TextStyle(color: clor2),
                          )
                        ],
                      ),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.all(Radius.circular(20)),
                        
                        color: background2
                        ),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color.fromARGB(163, 3, 3, 3),
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          "HEIGHT",
                          style: TextStyle(color: Colors.white),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "${height.toInt()}",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                            Text(
                              'cm',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        Slider(
                            divisions: 200,
                            value: height,
                            max: 200,
                            label: height.round().toString(),
                            onChanged: (double value) {
                              setState(() {
                                height = value;
                              });
                            }),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Color.fromARGB(163, 3, 3, 3),
                        ),
                        width: 90,
                        padding: EdgeInsets.all(5),
                        height: 90,
                        child: Column(
                          children: [
                            Text(
                              "WEIGHT",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "$weight",
                              style: TextStyle(color: Colors.white),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      
                                      weight += 1;
                                    });
                                  },
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.amber),
                                    child: Icon(Icons.add, color: Colors.green),
                                    // backgroundColor:Colors.yellow?
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      if(weight > 0) weight -= 1;
                                    });
                                  },
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.red),
                                    child: Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color.fromARGB(163, 3, 3, 3),
                      ),
                      width: 90,
                      padding: EdgeInsets.all(5),
                      height: 90,
                      child: Column(
                        children: [
                          Text(
                            "AGE",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "$age",
                            style: TextStyle(color: Colors.white),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    age += 1;
                                  });
                                },
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.amber),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    if (age > 0)
                                    age -= 1;
                                  });
                                },
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.red),
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
