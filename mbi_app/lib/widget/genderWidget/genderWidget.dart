import 'package:flutter/material.dart';



class genderWidget extends StatefulWidget {
  const genderWidget({super.key});

  @override
  State<genderWidget> createState() => _genderWidgetState();
}

class _genderWidgetState extends State<genderWidget> {
  bool isMale = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // MALE
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                isMale = true;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                color: isMale ? Colors.blue : Colors.grey[800],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.male, size: 130,
                      color: isMale ? Colors.white : Colors.grey),
                  SizedBox(height: 10),
                  Text(
                    "Male",
                    style: TextStyle(
                      fontSize: 30,
                      color: isMale ? Colors.white : Colors.grey,
                    ),
                  ),
                  SizedBox(height: 10,)
                ],
              ),
            ),
          ),
        ),

        SizedBox(width: 20),

        // FEMALE
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                isMale = false;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                color: !isMale ? Colors.pink : Colors.grey[800],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.female, size: 130,
                      color: !isMale ? Colors.white : Colors.grey),
                  SizedBox(height: 10),
                  Text(
                    "Female",
                    style: TextStyle(
                      fontSize: 30,
                      color: !isMale ? Colors.white : Colors.grey,
                    ),
                  ),
                  SizedBox(height: 10,)

                ],
              ),
            ),
          ),
        ),
      ],
    );
  }}