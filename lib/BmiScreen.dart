import 'dart:math';

import 'package:bmi_calculator/BMI_Result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({Key? key}) : super(key: key);

  @override
  _BmiScreenState createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool isMale=true;
  double height=120;
  int weight=50;
  int age=20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
               children: [
                 Expanded(
                   child: GestureDetector(
                     onTap: (){
                       setState(() {
                         isMale=true;
                       });
                     },
                     child: Container(
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                         Image(
                             image:AssetImage('assets/images/male.png'),
                           height: 90,
                             width: 90,
                         ),
                           SizedBox(
                             height: 15,
                           ),
                           Text('MALE',style: TextStyle(
                             fontSize: 25,
                             fontWeight: FontWeight.bold,
                           ),),
                         ],
                       ),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         color: isMale ? Colors.blue : Colors.grey[400],
                       ),
                     ),
                   ),
                 ),
                 SizedBox(width: 20,),
                 Expanded(
                   child: GestureDetector(
                     onTap: (){
                       setState(() {
                         isMale=false;
                       });
                     },
                     child: Container(
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Image(
                             image:AssetImage('assets/images/female.png'),
                             height: 90,
                             width: 90,
                           ),
                           SizedBox(
                             height: 15,
                           ),
                           Text('FEMALE',style: TextStyle(
                             fontSize: 25,
                             fontWeight: FontWeight.bold,
                           ),),
                         ],
                       ),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         color: isMale ? Colors.grey[400] :Colors.blue,
                       ),
                     ),
                   ),
                 ),
               ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Height',style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('${height.round()}',style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w900,
                        ),),
                        SizedBox(width: 5,),
                        Text('CM',style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),),
                      ],
                    ),
                    Slider(
                      value: height,
                      max:220,
                      min: 88,
                      onChanged:(value){
                        setState(() {
                          height=value;
                        });
                      print(value.round());
                      } ,)
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[400],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('WEIGHT',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25
                          ),),
                          Text('$weight',style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 40
                          ),),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    weight--;
                                  });
                                },
                                heroTag: 'weight--',
                                mini:true,
                                child:Icon(
                                  Icons.remove,
                                ) ,),
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    weight++;
                                  });
                                },
                                heroTag: 'weight++',
                                mini:true,
                                child:Icon(
                                  Icons.add,
                                ) ,),
                            ],
                          )
                        ],
                      ),
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                              color: Colors.grey[400],
                    ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('AGE',style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25
                          ),),
                          Text('$age',style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 40
                          ),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    age--;
                                  });
                                },
                                heroTag: 'age--',
                                mini:true,
                                child:Icon(
                                  Icons.remove,
                                ) ,),
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    age++;
                                  });
                                },
                                heroTag: 'age++',
                                mini:true,
                                child:Icon(
                                  Icons.add,
                                ) ,),
                            ],
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[400],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.blue,
            child: MaterialButton(onPressed: (){
              double Result=weight/pow(height / 100,2);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context)=>BMI_Result(age: age,isMale: isMale,result: Result.round(),),
                  ),
              );
            },
              child:Text('Calculate',style: TextStyle(color: Colors.white),) ,

            ),
          ),
        ],
      ),
    );
  }
}
