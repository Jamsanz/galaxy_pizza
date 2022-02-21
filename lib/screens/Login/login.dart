
// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers
        // ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:restaurant_app/utils/constants.dart';

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String text ='';
  Widget loginContainer = Container(
    width: double.infinity,
    // margin: EdgeInsets.symmetric(horizontal: 50),
    decoration: BoxDecoration(
      color: Colors.white70
    ),
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              child: Text('Welcome Back!',
              style: TextStyle(
                fontSize: 24,
              ),
              ),
            ),
            Material(
              borderRadius: BorderRadius.circular(30),
              elevation: 5,
              child: TextField(
                onChanged: (value){
                    print(value);
                },
                  decoration: InputDecoration(
                  prefixIcon: Icon(Icons.mail_outline),
                  contentPadding: EdgeInsets.all(20),
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white, width: 1), borderRadius: BorderRadius.circular(30)),
                  label: Text('Email'),
                  fillColor: Colors.white,
                  filled: true
                ),
              ),
            ),
            SizedBox(height: 20,),
            Material(
              borderRadius: BorderRadius.circular(30),
              elevation: 5,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(20),
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white, width: 1), borderRadius: BorderRadius.circular(30)),
                  label: Text('Password'),
                  fillColor: Colors.white,
                  filled: true
                ),
              ),
            ),
            SizedBox(height: 100,)
          ],
        ) 
        ),
    ),
  );
  Widget signupContainer = Container(
    decoration: BoxDecoration(
      color: kPrimaryColor
    ),
    child: Column(
      children: [
        Text('Welcome Back!')
      ],
    )
  );
  BoxBorder bottom = Border(bottom: BorderSide(color: Colors.black, width: 1, style: BorderStyle.solid));
  bool login = true;

  @override
  Widget build(BuildContext context) {
  Size size= MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children:  <Widget>[
              const SizedBox(height: 100,),
              const Image(image: AssetImage("assets/images/galaxy 1.png")),
              const SizedBox(height: 40,),
              // Container(
              //   padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              //   margin: EdgeInsets.all(20),
              //   decoration:  const BoxDecoration(
              //     color: Colors.white,
              //     borderRadius: BorderRadius.all(Radius.circular(50)),
              //   ),
              //   child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceAround,
              //       crossAxisAlignment: CrossAxisAlignment.center,
              //     children: <Widget>[
              //       Container(
              //         decoration: BoxDecoration(
              //           border: login ? bottom : Border()
              //         ),
              //         child: GestureDetector(
              //           onTap: (){
              //             setState(() {
              //              login = true; 
              //             });
              //           },
              //           child: const Text('Log In',
              //           style: TextStyle(
              //             fontSize: 16.0,
              //             color: Colors.black
              //           ),),
              //         ),
              //       ),
              //       Container(
              //         decoration: BoxDecoration(
              //         border: !login ? bottom : Border()
              //         ),
              //         child: GestureDetector(
              //           onTap: (){
              //             setState(() {
              //              login = false; 
              //             });
              //           },
              //           child: const Text('SignUp',
              //           style: TextStyle(
              //             fontSize: 16.0,
              //             color: Colors.black
              //           ),
              //           ),
              //         ),
              //       ),
                    
              //     ],
              //   ),
              // ),
              
              login ? loginContainer : signupContainer,
              Container(
                width: size.width * 0.8,
                child: Material(
                  borderRadius: BorderRadius.circular(30),
                  color: kSecondaryColor,
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: InkWell(
                      onTap: (){},
                      child: Center(
                        child: Text('Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16
                        ),),
                      ),
                    ),
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