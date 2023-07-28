
import 'package:flutter/material.dart';

import 'login.dart';

class Page2 extends StatefulWidget {
  //const Page2({super.key});



  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  final _formKey = GlobalKey<FormState>();

  bool a = true;
  var  c = Icons.visibility_off;
  TextEditingController susername = TextEditingController();
  TextEditingController spassword = TextEditingController();
  TextEditingController scpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign up'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text('Sign up',style: TextStyle(color: Colors.deepPurple,fontSize: 24),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                key: _formKey,
                controller: susername,
                decoration: InputDecoration(
                    hintText: 'Username',
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),

                ),

                validator: (val){
                  if(val!.isEmpty){
                    return "username cannot be empty";

                  }
                  else{
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone),
                  hintText: 'Phone no.',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                controller: spassword,
                obscureText: a,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  suffix: GestureDetector(
                      onTap: (){
                        setState(() {
                          a = !a;
                          c = Icons.visibility;
                        });
                      },
                      onDoubleTap: (){
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
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: scpassword,
                obscureText: a,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  suffix: GestureDetector(
                      onTap: (){
                        setState(() {
                          a = !a;
                          c = Icons.visibility;
                        });
                      },
                      onDoubleTap: (){
                        setState(() {
                          a = !a;
                          c = Icons.visibility_off;
                        });
                      },
                      child: Icon(c)),
                  hintText: 'Confirm Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
              ),
            ),
            ElevatedButton(onPressed: (){
              setState(() {
                if(spassword.text != scpassword.text)
                  {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Password didn't match")));
                  }

                else {
                  Navigator.pop(context, MaterialPageRoute(builder: (context) => LoginPage()));
                }
              });
            },
              child: Text('sign up'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an account? '),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                    onTap: (){
                      setState(() {
                        Navigator.pop(context, MaterialPageRoute(builder: (context)=> LoginPage()
                        ),
                        );
                      },
                      );
                    },
                    child: Text('Log In',style: TextStyle(color: Colors.blue),)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
