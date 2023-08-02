import 'package:flutter/material.dart';
import 'package:futter_tasks/BMI_app/screens/calculator.dart';

class ResultPage extends StatefulWidget {
  final String rate;
  final double bmi;
  const ResultPage(this.rate, this.bmi, {super.key});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  // late String rate;
  // late double bmi;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(10, 14, 33, 1),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 40),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CalculatorScreen(),
                            ));
                      });
                    },
                    style: IconButton.styleFrom(
                      padding: const EdgeInsets.all(0),
                      fixedSize: const Size(50, 50),
                    ),
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 40,
                    )),
                const Text(
                  'Your Result:',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 50),
            Container(
              width: double.maxFinite,
              height: 400,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(26, 31, 56, 1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.rate,
                    style: const TextStyle(
                      color: Color.fromRGBO(9, 255, 122, 1),
                      fontSize: 35,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 50),
                  Text(
                    widget.bmi.toStringAsFixed(1),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 80,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 50),
                  const Text(
                    'culees badan malihide is daji',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
