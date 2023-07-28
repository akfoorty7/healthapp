

import 'package:flutter/material.dart';
import 'package:health_app/login.dart';

class Verify extends StatelessWidget {
  const Verify({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/logo.png'),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text('Enter Verification Code',style: TextStyle(color: Colors.red,fontSize: 24,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      // color: Colors.red,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(65),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      width: 20,
                    ),

                    Container(
                      height: 70,
                      width: 70,
                      // color: Colors.red,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(65),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      width: 20,
                    ),

                    Container(
                      height: 70,
                      width: 70,
                      // color: Colors.red,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(65),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),

                    Container(
                      height: 70,
                      width: 70,
                      // color: Colors.red,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(65),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              ElevatedButton(onPressed:(){
                Navigator.pop(context, MaterialPageRoute(builder: (context) => LoginPage()));
              },
                  child: Text('Verify'),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Couldn't get code?"),
                    GestureDetector(
                      onTap: (){
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("It takes time to send code,\nPlease wait for some time")));
                      },
                        child: Text("Resend it?",style: TextStyle(color: Colors.blue),)),
                  ],
                ),
              ),
              Column(
                children: [
                  Text("Sponsored By:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset('assets/ak47.jpg', scale: 4.5,),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
