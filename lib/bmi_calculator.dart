import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BMICalculator extends StatefulWidget {
  @override
  State<BMICalculator> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(
          child: Text("BMI Calculator"),
        ),
      ),
      body: Container(
        color: Colors.grey[900],
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.black,
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 24),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.male_rounded,
                              color: Colors.white,
                              size: 52,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Male",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 48,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.black,
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 24),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.female_rounded,
                              color: Colors.white,
                              size: 52,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Female",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsetsDirectional.all(12.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.black,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "HEIGHT",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: const [
                        Text(
                          "180",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 46,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "cm",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Slider(
                        value: 180.0,
                        max: 240.0,
                        min: 80.0,
                        thumbColor: Colors.red,
                        activeColor: Colors.redAccent,
                        onChanged: (value) {
                          print(value.round());
                        })
                  ],
                ),
              ),
            )),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.black,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Age",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            const Text(
                              "24",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 36,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  backgroundColor: Colors.grey[900],
                                  onPressed: () {},
                                  child: Icon(Icons.remove),
                                  mini: true,
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                FloatingActionButton(
                                  backgroundColor: Colors.grey[900],
                                  onPressed: () {},
                                  child: Icon(Icons.add),
                                  mini: true,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 48,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.black,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Age",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            const Text(
                              "24",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 36,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  backgroundColor: Colors.grey[900],
                                  onPressed: () {},
                                  child: Icon(Icons.remove),
                                  mini: true,
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                FloatingActionButton(
                                  backgroundColor: Colors.grey[900],
                                  onPressed: () {},
                                  child: Icon(Icons.add),
                                  mini: true,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius:
                    BorderRadiusDirectional.vertical(top: Radius.circular(12)),
                color: Colors.redAccent,
              ),
              child: MaterialButton(
                minWidth: double.infinity,
                height: 52,
                onPressed: () {},
                child: const Text(
                  "CALCULATE",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
