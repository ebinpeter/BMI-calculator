
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  var weight = TextEditingController();
  var height = TextEditingController();
  double bimresult =0;
  String textresult="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Text(
            "BMI Calculator",
            style: TextStyle(color: Colors.yellow, fontWeight: FontWeight.w300),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 130,
                  child: TextField(
                    controller: height,
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 40,
                        color: Colors.yellowAccent),
                    decoration: InputDecoration(
                        hintText: "Height",
                        hintStyle: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w300,
                            color: Colors.white.withOpacity(.8)),
                        border: InputBorder.none),
                    keyboardType: TextInputType.number,
                  ),
                ),
                Container(
                  width: 130,
                  child: TextField(
                    controller: weight,
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 40,
                        color: Colors.yellowAccent),
                    decoration: InputDecoration(
                        hintText: "Weight",
                        hintStyle: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w300,
                            color: Colors.white.withOpacity(.8)),
                        border: InputBorder.none),
                    keyboardType: TextInputType.number,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(onTap: (){
              double w = double.parse(weight.text);
              double h = double.parse(height.text);
              setState(() {
                bimresult = w / (h*h);
                if(bimresult>25){
                  textresult='you are over the weight';

                }else if(bimresult>=18.5 && bimresult <=25){
                  textresult='you have normal weight';

                }else{
                  textresult = 'you under Weight';
                }
              });
            },
              child: Container(
                child: Text(
                  "Calculate",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.amberAccent),
                ),
              ),
            ),
            Container(
              child: Text(bimresult.toStringAsFixed(2),
                  style: TextStyle(fontSize: 90,
                    fontWeight: FontWeight.w400,color: Colors.amberAccent
                  )),
            ),
            Visibility(visible: textresult.isNotEmpty,
              child: Container(
                child: Text(textresult,
                    style: TextStyle(fontSize: 32,
                      fontWeight: FontWeight.w400,color: Colors.amberAccent
                    )),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
