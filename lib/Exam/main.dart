import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                color: Colors.black87,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(left: 10, bottom: 5, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.grey.shade800,
                                child: Icon(
                                  Icons.calendar_month,
                                  size: 35,
                                  color: Colors.white,
                                )
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Calendar",
                              style: TextStyle(
                                fontSize: 15,
                                  color: Colors.grey.shade500
                              ),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.grey.shade800,
                                child: Icon(
                                  Icons.insert_chart_outlined,
                                  size: 35,
                                  color:Colors.white,
                                )
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Statistic",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey.shade500
                              ),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.grey.shade800,
                                child: Icon(
                                  Icons.work_history_outlined,
                                  size: 35,
                                  color:Colors.white,
                                )
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Work",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey.shade500
                              ),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.red.shade500,
                                child: Icon(
                                  Icons.person,
                                  size: 35,
                                  color:Colors.white,
                                )
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Profile",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey.shade500
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 105),
                child:  Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFFFAFAFA),
                          Color(0xFFF5F5F5),
                          Color(0xFFB0BEC5)
                        ]
                      ),
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight: Radius.circular(40))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              // color: Colors.grey,
                              width: 50,
                            ),
                            Text('Profile',style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),),
                            CircleAvatar(
                              radius: 27,
                              backgroundColor: Colors.grey.shade300,
                              child: IconButton(
                                onPressed: () {
                                },
                                icon: Icon(Icons.arrow_circle_right_outlined),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(
                          height: 20,
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7, bottom: 12),
                          child: Container(
                            height: 250,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: Colors.grey,
                              ),
                             //   color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(18.0),
                                      child: Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(image: NetworkImage("https://cdn-icons-png.flaticon.com/256/2991/2991148.png"),
                                          )
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(width: 10,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      radius: 55,
                                      backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTbgEspxhviZCaArUEXWjGVFpRXWS8FMVcXw&s'),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                        "Gilbert ZellWeger",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 23
                                      ),
                                    ),
                                    Text(
                                      "@gilbertzellWeger",
                                      style: TextStyle(
                                          color: Colors.grey.shade700,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 12, left: 12, right: 12),
                          child: Container(
                            height: 60,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                    Colors.grey.shade300,
                                    Colors.grey.shade400
                                    // Color(0xFFEEEEEE),
                                    // Color(0xFFECEFF1),
                                    // Color(0xFFCFD8DC),
                                  ]
                              ),
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.cases_sharp,
                                        color: Colors.grey,
                                        size: 27,),
                                      SizedBox(width: 10,),
                                      Text(
                                          "invoices",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.arrow_forward_ios_outlined,
                                        color: Colors.grey,
                                        size: 20,)
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12, left: 12, right: 12),
                          child: Container(
                            height: 60,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                    Colors.grey.shade300,
                                    Colors.grey.shade400
                                    // Color(0xFFEEEEEE),
                                    // Color(0xFFECEFF1),
                                    // Color(0xFFCFD8DC),
                                  ]
                              ),
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.archive_outlined,
                                        color: Colors.grey,
                                        size: 27,),
                                      SizedBox(width: 10,),
                                      Text(
                                        "Archive",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.arrow_forward_ios_outlined,
                                        color: Colors.grey,
                                        size: 20,)
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12, left: 12, right: 12),
                          child: Container(
                            height: 60,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                    Colors.grey.shade300,
                                    Colors.grey.shade400
                                    // Color(0xFFEEEEEE),
                                    // Color(0xFFECEFF1),
                                    // Color(0xFFCFD8DC),
                                  ]
                              ),
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.language,
                                        color: Colors.grey,
                                        size: 27,),
                                      SizedBox(width: 10,),
                                      Text(
                                        "Language",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "English",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.grey.shade700,
                                        ),
                                      ),
                                      SizedBox(width: 10,),
                                      Icon(Icons.arrow_forward_ios_outlined,
                                        color: Colors.grey,
                                        size: 20,)
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12, left: 12, right: 12),
                          child: Container(
                            height: 60,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                    Colors.grey.shade300,
                                    Colors.grey.shade400
                                    // Color(0xFFEEEEEE),
                                    // Color(0xFFECEFF1),
                                    // Color(0xFFCFD8DC),
                                  ]
                              ),
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.help_outline,
                                        color: Colors.grey,
                                        size: 27,),
                                      SizedBox(width: 10,),
                                      Text(
                                        "Help",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.arrow_forward_ios_outlined,
                                      color: Colors.grey,
                                        size: 20,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: 65,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                                "Privecy Policy",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                                "Terms of Service",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                                "v 2.0",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey.shade700,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}
