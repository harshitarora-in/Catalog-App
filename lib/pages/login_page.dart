import 'package:first_project/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "./assets/images/login_image.png",
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    Text(
                      "Welcome",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20.0),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter Username", labelText: "Username"),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter Password", labelText: "password"),
                    ),
                    SizedBox(height: 20.0),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, Myroutes.homeRoute);
                        },
                        child: Text("Login"),
                        style:
                            TextButton.styleFrom(minimumSize: Size(150, 40))),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
