import 'package:flutter/material.dart';
import 'package:mbi_app/view/screens/homeScreen.dart';

class resulScreen extends StatefulWidget {
  const resulScreen({super.key});

  @override
  State<resulScreen> createState() => _resulScreenState();
}

class _resulScreenState extends State<resulScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1C2135),
      appBar: AppBar(
        backgroundColor: Color(0xFF24263B),
        title: Text('BMI Calculator', style: TextStyle(fontSize: 30 , color: Colors.white ,)),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 15,left: 15),
            child: Text(
              'Your Result',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Expanded(
            child: Container(
              width: 420,
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color(0xFF333244),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Normal',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '19.2',
                    style: TextStyle(
                      fontSize: 80,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        'You Have A Normal Body Weight',
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                      Text(
                        'Good Job',
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                      SizedBox(
                        height: 150,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 30)
        ],
      ),
      bottomNavigationBar: Container(
        height: 60,
        width: double.infinity,
        color: Color(0xFFE73D67),
        child: TextButton(onPressed: (){
          Navigator.push(context,
            MaterialPageRoute(builder: (context)=> homeScreen()),
          );
        },
            child: Text('Re - Calculate',
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

