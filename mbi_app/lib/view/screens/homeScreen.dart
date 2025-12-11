import 'package:flutter/material.dart';
import 'package:mbi_app/view/screens/resultScreen.dart';
import 'package:mbi_app/view/screens/resultScreen.dart';
import 'package:mbi_app/widget/genderWidget/genderWidget.dart';


class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}
double height = 140;
int weight =60;
int age = 20;
class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF24263B),
        title:
        Text("BMI Calculator ", style: TextStyle(fontSize: 30 , color: Colors.white ,)
          ,),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        decoration:BoxDecoration(
            color: Color(0xFF1C2135)
        ) ,
        child:
        Column(
          children: [
           genderWidget(),
            SizedBox(height:20 ,),
            Expanded(
                child: Container(
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFF24263B)
                    ),
                    child:
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 20,),
                        Text("Height" ,style: TextStyle(color: Color(0xFF747486), fontSize: 25),),
                        SizedBox(height: 20,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(height.toInt().toString() ,style: TextStyle(color: Color(0xFFEAEAEA) ,fontSize: 30,fontWeight: FontWeight.bold),),
                            Padding(
                              padding: const EdgeInsets.only(top: 9),
                              child: Text("  cm",style: TextStyle(color: Color(0xFFEAEAEA),fontSize: 15),),
                            )
                          ],
                        ),
                        SizedBox(height: 20),
                        Slider(value: height,
                            min: 80,
                            max: 200,
                            activeColor:Color(0xFFD13B62),
                            inactiveColor: Color(0xFFEAEAEA),
                            onChanged: (double newValue){
                              setState(() {
                                height=newValue;
                              });
                            }),
                      ],
                    )
                )
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFF24263B)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("weight",style: TextStyle(color: Color(0xFF646A85), fontSize: 25),),
                        Text(weight.toString(),style: TextStyle(color: Color(0xFFEAEAEA), fontSize: 40),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  weight--;
                                });;
                              },
                              borderRadius: BorderRadius.circular(15),
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Color(0xFF79829E),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.only(bottom: 15),
                                      child: Icon(Icons.minimize,color: Color(0xFFEAEAEA),size: 30,),
                                    )
                                ),
                              ),
                            ),

                            InkWell(
                              onTap: () {
                                setState(() {
                                  weight++;
                                });;
                              },
                              borderRadius: BorderRadius.circular(15),
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Color(0xFF79829E),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Center(
                                    child: Icon(Icons.add,color: Color(0xFFEAEAEA))
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(width:30,)
                ,
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFF24263B)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Age",style: TextStyle(color: Color(0xFF646A85), fontSize: 25),),
                        Text(age.toString(),style: TextStyle(color: Color(0xFFEAEAEA), fontSize: 40),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  age--;
                                });
                              },
                              borderRadius: BorderRadius.circular(15),
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Color(0xFF79829E),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.only(bottom: 15),
                                      child: Icon(Icons.minimize,color: Color(0xFFEAEAEA),size: 30,),
                                    )
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  age++;
                                });;
                              },
                              borderRadius: BorderRadius.circular(15),
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Color(0xFF79829E),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Center(
                                    child: Icon(Icons.add,color: Color(0xFFEAEAEA))
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        width: double.infinity,
        color: Color(0xFFE73D67),
        child: TextButton(onPressed: (){
          Navigator.push(context,
            MaterialPageRoute(builder: (context)=> (resulScreen())),
          );
        },
            child: Text('Calculate',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),)
        ),
      ),
    );
  }
}
