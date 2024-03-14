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
  String select = "";

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
      body: SingleChildScrollView(
        /// Main Column
        child: Column(
          children: [
            // SvgPicture.asset(""),
            // SvgPicture.network(""),
            // SvgPicture.file(""),
             Center(
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
            /// BMI Calcaulator
            SizedBox(height: 40,),
            /// main Container
            Padding(
              padding: const EdgeInsets.only(left: 20,right:20),
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xffFFFBFE),
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 1),
                    blurRadius: 2,
                    color: Colors.black.withOpacity(0.3),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:20,top: 20,right: 20),
                      /// Age Row
                      child: Row(
                        children: [
                          Text("Age",style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold),
                            ),
                          SizedBox(width: 45,),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                ),
                                hintText: "Enter your age",
                                contentPadding: EdgeInsets.all(16),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    /// Height
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Height",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 24),),
                              Text("(cm)",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 24),),
                            ],
                          ),
                          SizedBox(width:15,),
                          Expanded(
                            child: TextField(
                              controller: txtHeight,
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                                ),
                                hintText: "Enter your Height",
                                contentPadding: EdgeInsets.all(16)
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    /// weight
                    Padding(
                      padding: const EdgeInsets.only(left: 20,top: 10, right: 20),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Weight",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 24),),
                              Text("(kg)",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 24),),
                            ],
                          ),
                          SizedBox(width:10,),
                          Expanded(
                            child: TextField(
                              controller: txtWeight,
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                                ),
                                hintText: "Enter your Weight",
                                contentPadding: EdgeInsets.all(16)
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    /// Male and Female Row
                    Row(
                      children: [
                        /// Male
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left:10,top: 50),
                            child: GestureDetector(

                              onTap: () {

                                setState(() {
                                  select = "Male";

                                });
                              },
                              child: Container(
                                height: 50,
                                width: 115,
                                decoration: BoxDecoration(
                                color : select == 0? Color(0xff3973DA) : Color(0xff289DF6),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    "Male",
                                    style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        /// Female
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left:10,top: 50,right: 20),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  select = "Female";
                                });
                              },
                              child: Container(
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                  color : select == 1? Color(0xff3973DA) : Color(0xff289DF6),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    "Female",
                                    style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]
                    ),
                    /// Calculate BMI GestureDetector
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          ans = double.parse(txtHeight.text) * double.parse(txtHeight.text);
                          BMI = double.parse(txtWeight.text) / ans ;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,top: 50,right: 20 ),
                        child: Container(
                          height: 55,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xff289DF6),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(child: Text("Calculate BMI",style: TextStyle(color: Color(0xffFFFBFE),fontSize: 20,fontWeight: FontWeight.bold),)),
                        ),
                      ),
                    ),
                    /// Male or Female
                    Align(alignment: Alignment.centerLeft,child: Padding(
                      padding: const EdgeInsets.only(left: 20, top: 15),
                      child: Text("Male or Female",style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold),),
                      ),),
                    /// Print the male or Female
                    Align(alignment: Alignment.centerLeft,child: Padding(
                      padding: const EdgeInsets.only(left: 20, top: 15),
                      child: Text("$select",style: TextStyle(color: Colors.black,fontSize: 20),),
                      ),),
                    /// BMI Simple text
                    Align(alignment: Alignment.centerLeft,child: Padding(
                      padding: const EdgeInsets.only(left: 20, top: 15),
                      child: Text("BMI",style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold),),
                      ),),
                    /// Print the value of BMI
                    Align(alignment: Alignment.centerLeft,child: Padding(
                      padding: const EdgeInsets.only(left: 20, top: 10),
                      child: Text("$BMI",style: TextStyle(color: Colors.black,fontSize: 20),),
                      ),),
                    /// Result
                    Align(alignment: Alignment.centerLeft,child: Padding(
                      padding: const EdgeInsets.only(left: 20, top: 10),
                      child: Text("Result",style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold),),
                      ),),
                    /// Extremely obese
                    Align(alignment: Alignment.centerLeft,child: Padding(
                      padding: const EdgeInsets.only(left: 20, top: 10, bottom: 15),
                      child: Text("Extremely obese",style: TextStyle(color: Colors.black,fontSize: 20),),
                      ),),
                  ],
                ),
              ),
            ),
            SizedBox(height: 50,)
          ],
        ),
      ),
    );
  }
}
