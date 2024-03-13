import 'package:flutter/material.dart';

class Bmi extends StatefulWidget {
  const Bmi({super.key});

  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  TextEditingController txtAge = TextEditingController();
  TextEditingController txtHeight = TextEditingController();
  TextEditingController txtWeight = TextEditingController();
  double ans = 00;
  double BMI = 00;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
        centerTitle: true,
        title: const Text(
          "BMI",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        backgroundColor: const Color(0xffEEF2F3),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_circle_left_outlined,
          ),
          iconSize: 30,
          onPressed: () {
            Navigator.pushNamed(context, "/");
          },
        ),
      ),
      backgroundColor: const Color(0xffEEF2F3),
      body: Column(
        children: [
          const Center(
            child: Padding(
              padding: EdgeInsets.only(top: 30),
              child: Text(
                "BMI Calcaulator",
                style: TextStyle(
                    color: Color(0xff289DF6),
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Stack(
                children: [
                  Positioned(
                    child: Container(
                      height: 680,
                      width: 500,
                      decoration: BoxDecoration(
                        color: const Color(0xffFFFBFE),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(0, 1),
                            blurRadius: 5,
                            color: Colors.black.withOpacity(0.3),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 30, top: 14),
                          child: Text(
                            "Age",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff202020),
                              fontSize: 24,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 50, top: 20),
                          child: SizedBox(
                            height: 50,
                            width: 190,
                            child: TextField(
                              controller: txtAge,
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  hintText: "Enter your age",
                                  hintStyle: TextStyle(fontSize: 20)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Positioned(
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 30, top: 90),
                                  child: Text(
                                    "Height",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff202020),
                                      fontSize: 24,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "(cm)",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff202020),
                                    fontSize: 24,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 125, top: 105),
                            child: SizedBox(
                              height: 50,
                              width: 190,
                              child: TextField(
                                controller: txtHeight,
                                decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                    ),
                                    hintText: "Enter your Height",
                                    hintStyle: TextStyle(fontSize: 20)),
                              ),
                            ),
                          ),
                        ],
                      )),
                  const Positioned(
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 30, top: 180),
                                  child: Text(
                                    "Weight",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff202020),
                                      fontSize: 24,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "(kg)",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff202020),
                                    fontSize: 24,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 125, top: 190),
                            child: SizedBox(
                              height: 50,
                              width: 190,
                              child: TextField(
                                controller: txtWeight,
                                decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                    ),
                                    hintText: "Enter your Height",
                                    hintStyle: TextStyle(fontSize: 20)),
                              ),
                            ),
                          ),
                        ],
                      )),
                  Positioned(
                    top: 300,
                    left: 20,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(140, 50),
                        backgroundColor: const Color(0xffDBEFFE),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(10))),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Male",
                        style: TextStyle(color: Colors.black, fontSize: 22),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 300,
                    left: 190,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(140, 50),
                          backgroundColor: const Color(0xffDBEFFE),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(10)))),
                      onPressed: () {},
                      child: const Text(
                        "Female",
                        style: TextStyle(color: Colors.black, fontSize: 22),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 390,
                    left: 10,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(320, 70),
                          backgroundColor: const Color(0xff289DF6),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(10)))),
                      onPressed: () {

                        setState(() {
                          BMI = double.parse(txtHeight.text) * double.parse(txtHeight.text);
                          ans =  int.parse(txtWeight.text) / BMI;
                        });
                      },
                      child: const Text(
                        "Calculate BMI",
                        style: TextStyle(color: Colors.white, fontSize: 25,fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const Positioned(
                      top: 510,
                      left: 10,
                      child: Text(
                        "BMI:",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                      )),
                  Positioned(
                      top: 550,
                      left: 10,
                      child: Text("$ans",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      )),
                  const Positioned(
                    top: 580,
                    left: 10,
                    child: Text(
                      "Result:",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Positioned(
                    top: 620,
                    left: 10,
                    child: Text(
                      "Extremely obese",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
