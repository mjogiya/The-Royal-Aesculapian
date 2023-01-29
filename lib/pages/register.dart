import 'package:flutter/material.dart';


class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        home: Scaffold(
            backgroundColor: Color.fromARGB(255, 3, 55, 57),
            appBar: AppBar(
              backgroundColor: Color.fromARGB(255, 3, 55, 30),
              title: Text('Login as Patient'),
            ),
            body: Center(

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,

                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 70),


                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: TextField(

                      decoration: InputDecoration(

                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(90.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),

                          borderRadius: BorderRadius.circular(90.0),
                        ),

                        labelText: 'Email',

                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      obscureText: true,

                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(90.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),

                          borderRadius: BorderRadius.circular(90.0),
                        ),
                        labelText: 'Password',

                      ),
                    ),
                  ),
                  Container(
                      height: 80,
                      padding: const EdgeInsets.all(20),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size.fromHeight(50),
                          backgroundColor: Color.fromARGB(255, 34, 93, 42),
                        ),
                        child: const Text('Log In'),
                        onPressed: () {},
                      )),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ),
                ],
              ),
            )));
  }
}
