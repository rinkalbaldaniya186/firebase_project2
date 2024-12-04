import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              color: Colors.grey.shade700,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.home_outlined, size: 40, color: Color(0xFF123456),),
                      Icon(Icons.access_time_sharp, size: 40, color: Color(0xFF123456),),
                      Icon(Icons.account_balance_wallet_outlined, size: 40, color: Color(0xFF123456),),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60),bottomRight: Radius.circular(60))
                ),
              ),
            ),
            Container(
              height: 300,
              decoration: BoxDecoration(
                  color: Color(0xFF123456),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60),bottomRight: Radius.circular(60))
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 32),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Icon(Icons.menu_outlined, size: 40, color: Colors.white,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Icon(Icons.more_horiz, size: 40, color: Colors.white,),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text("Welcome Back",style: TextStyle(color: Colors.white, fontSize: 28),
                        ),
                      ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 180, left: 30,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image(
                      image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAQYCzoWCOwJ6G9ioW2Rm9E0P3XMdM8iFOsnGRfrqvgaGKVvbQpQrTlqX8MQ2UVwAIzZE&usqp=CAU", scale: 1.5)
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}
