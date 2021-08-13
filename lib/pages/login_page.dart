
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/common/theme_helper.dart';

import 'widgets/header_widget.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({Key? key}): super(key:key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  double _headerHeight = 250;
  Key _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: _headerHeight,
              child: HeaderWidget(_headerHeight, true, Icons.login_rounded), //let's create a common header widget
            ),
            SafeArea(
              child: Container( // This will be the login form
                child: Column(
                  children: [
                    Text(
                      'Hello',
                      style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 30.0),
                    Form(
                      key: _formKey,
                        child: Column(
                          children: [
                            TextField(
                              decoration: ThemeHelper().textInputDecoration('User Name', 'Enter your user name'),
                            ),
                            SizedBox(height: 30.0),
                            TextField(
                              obscureText: true,
                              decoration: ThemeHelper().textInputDecoration('Password', 'Enter your password'),
                            ),
                            SizedBox(height: 15.0),
                            Container(
                              child: Text('Forgot your password?'),
                            ),
                            Container(
                              child: Text('Sign In'),

                            ),
                            Container(
                              child: Text('Don\'t have an account? Create'), // Now let's style the forms. For that we will create a theme helper class
                            ),
                          ],
                        )
                    ),
                  ],
                )
              ),
            ),
          ],
        ),
      ),
    );

  }
}