import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({Key? key}) : super(key: key);

  @override
  _BmiScreenState createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
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
                   child: Container(
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                       Image(
                           image:AssetImage('images/male.png'),
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
                       color: Colors.grey[300],
                     ),
                   ),
                 ),
                 SizedBox(width: 20,),
                 Expanded(
                   child: Container(
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Image(
                           image:AssetImage('images/female.png'),
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
                       color: Colors.grey[300],
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
                        Text('180',style: TextStyle(
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
                    Slider(value:
                      120,
                      max:220,
                      min: 88,
                      onChanged:(value){
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
                          Text('AGE',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25
                          ),),
                          Text('180',style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 40
                          ),),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: (){},
                                mini:true,
                                child:Icon(
                                  Icons.remove,
                                ) ,),
                              FloatingActionButton(
                                onPressed: (){},
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
                          Text('180',style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 40
                          ),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: (){},
                                mini:true,
                                child:Icon(
                                  Icons.remove,
                                ) ,),
                              FloatingActionButton(
                                onPressed: (){},
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
            child: MaterialButton(onPressed: (){},
              child:Text('Calculate',style: TextStyle(color: Colors.white),) ,

            ),
          ),
        ],
      ),
    );
  }
}
