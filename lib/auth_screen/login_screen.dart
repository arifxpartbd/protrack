import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:protrack_project/forgot_password.dart';
import 'package:protrack_project/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool _secureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            children: [
              SizedBox(height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset(
                  'images/welcomeimage.png',
                  height: MediaQuery.of(context).size.height*0.20,
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      Form(
                        //key: formKey,
                        child: Column(
                          children: [
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: "User Name",
                                    labelText: "User Name",
                                    labelStyle: TextStyle(
                                      color: Colors.black,
                                    ),
                                    border: OutlineInputBorder(),
                                    prefixIcon: Icon(Icons.person
                                    ),
                                    suffixIcon: Icon(Icons.keyboard_arrow_down_outlined)
                                ),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TextField(
                                obscureText: _secureText,
                                decoration: InputDecoration(
                                  hintText: "Password",
                                  labelText: "Password",
                                  labelStyle: TextStyle(
                                    color: Colors.black,
                                  ),
                                  suffixIcon: IconButton(
                                    icon: Icon(_secureText? Icons.remove_red_eye:Icons.visibility_off),
                                    onPressed: (){
                                      setState((){
                                        _secureText = !_secureText;
                                      });
                                    },
                                  ),
                                  border: OutlineInputBorder(),
                                  prefixIcon: Icon(Icons.security_rounded),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            child: Text("Demo",
                              style: TextStyle(
                                  color: Colors.grey
                              ),
                            ),
                            onPressed: (){

                            },
                          ),
                          TextButton(
                            child: Text("Forget Password?"),
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (c)=>ForgotPasswordScreen()));
                            },
                          )
                        ],
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.grey,
                            padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 12),

                          ),
                          onPressed: (){
                            //validateForm();
                            Navigator.push(context, MaterialPageRoute(builder: (c)=>HomeScreen()));
                          },
                          child: const Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                      ),
                      SizedBox(height: 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text('Version:1.1.0',style: TextStyle(
                            color: Colors.grey
                        ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

            ]
        ),
      ),
    );
  }
}
