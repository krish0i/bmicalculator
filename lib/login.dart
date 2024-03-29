import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _MyAppState();
}

class _MyAppState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 300,
              width: 380,
              child: Image.asset("assets/bmi.png"),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 50),
              child: Text("BMI Calculator",style: TextStyle(color: Color(0xff289DF6),fontSize: 25,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(fixedSize: Size(190, 40),
                      backgroundColor: Color(0xff289DF6),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "bmi");
                  }, child: Text("Click",style: TextStyle(color: Color(0xffFFFBFE),fontSize: 18),)),
            )
          ],
        ),
      ),
    );
  }
}
