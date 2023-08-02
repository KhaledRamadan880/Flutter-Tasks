import 'package:flutter/material.dart';
import 'package:futter_tasks/BMI_app/screens/result.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  late String gender;
  double height = 100;
  late var newHeight;
  var weight = 50.0;
  var age = 20.0;
  var bmi = 0.0;
  var rate = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(10, 14, 33, 1),
      appBar: AppBar(
        title: const Text('BMI Calculator'),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(26, 31, 56, 1),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            child: Column(
              children: [
                const SizedBox(height: 20),

                // Gender Select
                Row(
                  children: [
                    // Male
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          gender = 'male';
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(26, 31, 56, 1),
                        fixedSize: const Size(130, 130),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.male,
                            size: 40,
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Male',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    // Female
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          gender = 'female';
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(26, 31, 56, 1),
                        fixedSize: const Size(130, 130),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.female, size: 40),
                          SizedBox(height: 5),
                          Text('Female', style: TextStyle(fontSize: 20)),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                // Hight
                Container(
                  padding: const EdgeInsets.all(10),
                  height: 130,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(26, 31, 56, 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'HEIGHT',
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                          Text(
                            'cm',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      Slider(
                        value: height,
                        min: 100,
                        max: 250,
                        divisions: 150,
                        // label: '$height',
                        label: '$height',

                        onChanged: (newHeight) {
                          setState(() {
                            height = newHeight;
                          });
                        },
                        thumbColor: Colors.red,
                        activeColor: Colors.purple,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                // Weight & Age
                Row(
                  children: [
                    Container(
                      width: 130,
                      height: 150,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(26, 31, 56, 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'WEIGHT',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '$weight',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: const CircleBorder(),
                                  fixedSize: const Size(20, 20),
                                ),
                                child: const Icon(
                                  Icons.remove,
                                  color: Color.fromRGBO(10, 14, 33, 1),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: const CircleBorder(),
                                  fixedSize: const Size(20, 20),
                                ),
                                child: const Icon(
                                  Icons.add,
                                  color: Color.fromRGBO(10, 14, 33, 1),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const Spacer(),
                    Container(
                      width: 130,
                      height: 150,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(26, 31, 56, 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'AGE',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '$age',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: const CircleBorder(),
                                  fixedSize: const Size(10, 10),
                                ),
                                child: const Icon(
                                  Icons.remove,
                                  color: Color.fromRGBO(10, 14, 33, 1),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: const CircleBorder(),
                                  fixedSize: const Size(10, 10),
                                ),
                                child: const Icon(
                                  Icons.add,
                                  color: Color.fromRGBO(10, 14, 33, 1),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {
              setState(() {
                bmi = weight / ((height / 100) * (height / 100));

                if (bmi < 18.5) {
                  rate = 'Underweight';
                } else if (bmi >= 18.5 && bmi <= 24.9) {
                  rate = 'Normal Weight';
                } else if (bmi >= 25.0 && bmi <= 29.9) {
                  rate = 'Overweight';
                } else if (bmi >= 30.0 && bmi <= 34.9) {
                  rate = 'Obesity Class I';
                } else if (bmi >= 35.0 && bmi <= 39.9) {
                  rate = 'Obesity Class II';
                } else if (bmi >= 40) {
                  rate = 'Obesity Class III';
                }

                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultPage(rate, bmi),
                    ));
              });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 241, 6, 1),
              fixedSize: const Size(double.maxFinite, 70),
            ),
            child: const Text('Calculate'),
          ),
        ],
      ),
    );
  }
}
