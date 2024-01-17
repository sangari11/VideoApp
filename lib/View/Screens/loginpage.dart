import 'package:flutter/material.dart';
import 'package:vidapp/View/Screens/homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  

  var username = TextEditingController();
  var password = TextEditingController();
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://preview.redd.it/7ap667bjf3n61.png?auto=webp&s=a11860bf8e70fe97201773fbceaa0d1fb30b01b5'), fit: BoxFit.cover)),
          child: Stack(
            children: [
              Center(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.7,
                  width: MediaQuery.of(context).size.width * 0.9,
                  color: Color(0x80ffffff),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: Text(
                          "Welcome!",
                          style: TextStyle(color: Colors.black, fontSize: 40,fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                      height: 50,
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: TextField(
                              decoration: InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 2.0
                                          ),),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 3.0
                                          ),)
                                          ,
                                  hintText: "Enter Username",
                                  hintStyle: TextStyle(color: Color(0xff000000)),
                                  
                                  ),
                                  cursorColor: Colors.black,
                                  style: TextStyle(color: Colors.black),
                                  controller: username,),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                      height: 50,
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: TextField(
                              decoration: InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                      
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 2.0
                                          ),),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 3.0
                                          ),)
                                          ,
                                  hintText: "Enter Password",
                                  suffixIcon: IconButton(icon: Icon(_isObscure ? Icons.visibility : Icons.visibility_off, color: Colors.black,),
                                  onPressed: () {
                                    setState(() {
                                      _isObscure =!_isObscure;
                                    });
                                  },),
                                  
                                  hintStyle: TextStyle(color: Colors.black),
                                  
                                  ),
                                  cursorColor: Colors.black,
                                  style: TextStyle(color: Colors.black),
                                  controller: password,
                                  obscureText: _isObscure,),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            
                            if(username.text == "user1" && password.text == "123"){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const HomePage()),
                              );}
                              // else if(username.text == "Premium User" && password.text == "123") {
                              //   Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => const HomePage()),
                              // );
                              // }
                            
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Container(
                            height: MediaQuery.of(context).size.height*0.05,
                            width: MediaQuery.of(context).size.width*0.3,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(5)
                            ),
                            child: Center(child: Text("Login", style: TextStyle(fontSize: 20,color: Colors.white, fontWeight: FontWeight.bold),)),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 30, bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Dont have an account? ", style: TextStyle(color: Colors.black, fontSize: 17,fontWeight: FontWeight.bold),),
                            Text("SignUp.", style: TextStyle(decoration: TextDecoration.underline,color: Colors.black, fontSize: 17,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height*0.06,
                        width: MediaQuery.of(context).size.width*0.8,
                        decoration: BoxDecoration(
                          color: Color(0x4d000000),
                          border: Border.all(
                          color: Colors.red,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(5)
                        ),
                        child: Center(child: Text("Continue with Google", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.white),)),
                      ),
                      // Flexible(
                      //   child: Container(
                      //     margin: EdgeInsets.only(top: 14),
                      //     height: MediaQuery.of(context).size.height*0.06,
                      //     width: MediaQuery.of(context).size.width*0.8,
                      //     decoration: BoxDecoration(
                      //       color: Color(0x4d000000),
                      //       border: Border.all(
                      //       color: Colors.blue,
                      //       width: 2,
                      //     ),
                      //     borderRadius: BorderRadius.circular(5)
                      //     ),
                      //     child: Center(child: Text("Continue with Facebook", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.white),)),
                      //   ),
                      // )
                      
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}