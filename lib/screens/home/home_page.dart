import 'package:flutter/material.dart';

import '../../widgets/category_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var value1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 45.0,
                  height: 45.0,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/cross.png'),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Premium',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Color.fromARGB(255, 222, 250, 255),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 8.0),
                    child: Text(
                        'The Secrets to be Fluent in English',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.grey
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Row(
                      children: [
                        // ปุ่ม 1
                        Expanded(
                          child: CategoryButton(
                            text: 'All Topics',
                            icon: Icons.bathtub,
                            color: Colors.black,
                            isSelected: value1,
                          ),
                        ),
                        SizedBox(width: 50.0),
                        // ปุ่ม 2
                        Expanded(
                          child: CategoryButton(
                            text: 'Unlock All Limitations',
                            icon: Icons.all_inbox_sharp,
                            color: Colors.black,
                            isSelected: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Row(
                      children: [
                        // ปุ่ม 3
                        Expanded(
                          child: CategoryButton(
                            text: 'All Topics Available',
                            icon: Icons.add_a_photo,
                            color: Colors.black,
                            isSelected: true,
                          ),
                        ),
                        SizedBox(width: 50.0),
                        // ปุ่ม 4
                        Expanded(
                          child: CategoryButton(
                            text: 'Personlized Coaching',
                            icon: Icons.access_alarms,
                            color: Colors.black,
                            isSelected: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            value1 = !value1;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text('check'),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 8.0),
                    child: Text(
                        '2021 Special Early Birds Offer',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.pinkAccent,
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 8.0),
                    child: Text(
                        'IDR50.000/month',
                        style: TextStyle(
                          fontSize: 23.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        )
                    ),
                  ),
                  CategoryButton(
                      text: 'Start 3 Days Free Trial',
                      //icon: Icons.access_time_sharp ,
                      color: Colors.purple ,
                      isSelected: true
                  ),
                  SizedBox(width: 50.0),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 8.0),
                    child: Text(
                        'View all Plan',
                        style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        )
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}