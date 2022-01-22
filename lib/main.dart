import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.grey),
    home: const FirstPage(),
  ));
}

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  var _slide = 10;

  get onPressed => null;

  get floatingActionButton => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade900,
        title: const Center(
          child: Text(
            "BMI CALCULATOR",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
          ),
        ),
      ),
      body: Container(
        color: Colors.black,
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5.0, right: 15.0),
                  child: Container(
                    width: 160,
                    height: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade900),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.male, color: Colors.white, size: 80),
                        SizedBox(height: 5),
                        Text(
                          "MALE",
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0, left: 15.0),
                  child: Container(
                    width: 160,
                    height: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade900),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.female, color: Colors.white, size: 80),
                        SizedBox(height: 5),
                        Text(
                          "FEMALE",
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade900),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    const Text(
                      "HEIGHT",
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          _slide.toString(),
                          style: const TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        const Text(
                          "cm",
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        ),
                      ],
                    ),
                    Slider(
                        value: _slide.toDouble(),
                        min: 10,
                        max: 180,
                        onChanged: (v) {
                          setState(() {
                            // value = _currentValue.toDouble();
                            _slide = v.toInt();
                          });
                        })
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, right: 15.0),
                  child: Container(
                    width: 160,
                    height: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade900),
                    child: Column(
                      children: [
                        const SizedBox(height: 15),
                        const Text(
                          "WEIGHT",
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                        const Text(
                          "60",
                          style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, left: 15.0),
                              child: FloatingActionButton(
                                  child: const Center(
                                    child: Text(
                                      "-",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30,
                                          color: Colors.white),
                                    ),
                                  ),
                                  onPressed: () {}),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, left: 15.0),
                              child: FloatingActionButton(
                                  child: const Text(
                                    "+",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30,
                                        color: Colors.white),
                                  ),
                                  onPressed: () {}),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, left: 15.0),
                  child: Container(
                    width: 160,
                    height: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey.shade900),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 5),
                        const Text(
                          "AGE",
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                        const Text(
                          "20",
                          style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, left: 15.0),
                              child: FloatingActionButton(
                                  child: const Center(
                                    child: Text(
                                      "-",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30,
                                          color: Colors.white),
                                    ),
                                  ),
                                  onPressed: () {}),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, left: 15.0),
                              child: FloatingActionButton(
                                  child: const Text(
                                    "+",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30,
                                        color: Colors.white),
                                  ),
                                  onPressed: () {}),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              width: 100,
              height: 50,
              color: Colors.redAccent.shade400,
              child: const Center(
                child: Text(
                  "CALCULATE",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
