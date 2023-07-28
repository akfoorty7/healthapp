

import 'package:flutter/material.dart';
import 'package:health_app/forgetpassword.dart';
import 'package:health_app/newpage.dart';
import 'package:health_app/signup.dart';



class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  bool a = true;
  var c = Icons.visibility_off;
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  // const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets/logo.png"),
        title: Column(
          children: [
            Row(
            children: [
              Text("H",style: TextStyle(fontSize: 55),),
              Text("amro Swyastha\namro hathmai"),

          ],
        ),
          ],
        ),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/logo.png', scale: 3.45,),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Log In', style: TextStyle(color: Colors.red, fontSize: 24),),
                SizedBox(
                  height: 70,
                ),

                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    key: _formKey,
                    validator: (value){
                      if(value!.isEmpty){
                        return "required";
                      }
                    },
                    controller: usernamecontroller,
                    keyboardType: TextInputType.text,
                    enableSuggestions: true,
                    autocorrect: false,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: 'Username',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24)
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: passwordcontroller,
                    obscureText: a,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      suffix: GestureDetector(
                          onTap: () {
                            setState(() {
                              a = !a;
                              c = Icons.visibility;
                            });
                          },
                          onDoubleTap: () {
                            setState(() {
                              a = !a;
                              c = Icons.visibility_off;
                            });
                          },
                          child: Icon(c)),
                      hintText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => ForgotPassword()));
                          });
                        },
                        child: Text('Forgot Password?',
                          style: TextStyle(color: Colors.blue),)),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      print(usernamecontroller.text);
                      print(passwordcontroller.text);
                      if (usernamecontroller.text == 'Devid' &&
                          passwordcontroller.text == '123456' || usernamecontroller.text == 'manisha' && passwordcontroller.text == '12345' || usernamecontroller.text == 'ak47' && passwordcontroller.text == '1234') {

                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) =>
                                NewPage(usernamecontroller.text,
                                    passwordcontroller.text)),
                        );
                        // usernamecontroller.clear();
                        // passwordcontroller.clear();
                      }
                      else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text('Invalid User Credentials')),
                        );
                      }
                    });
                  }, child: Text('Log In'),

                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account? "),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Page2()),
                          );
                        });
                      },
                      child: Text(
                        'Sign up?', style: TextStyle(color: Colors.blue),
                      ),
                    )
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}




