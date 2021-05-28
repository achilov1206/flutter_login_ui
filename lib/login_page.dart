import 'package:flutter/material.dart';
import 'package:loginui/home_page.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {

    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        radius: 100,
        backgroundColor: Colors.transparent,
        child: ClipOval(
          child: Image.asset('assets/images/login-logo.jpg'),
        ),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'emal@email.emal',
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );

    final password = TextFormField(
      obscureText: true,
      autofocus: false,
      initialValue: 'Password',
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );

    final loginButton = Material(
      borderRadius: BorderRadius.circular(25),
      shadowColor: Colors.lightBlueAccent.shade100,
      elevation: 5,
      child: MaterialButton(
        minWidth: 200,
        height: 50,
        onPressed: () {
          Navigator.of(context).pushNamed(HomePage.tag);
        },
        color: Colors.lightBlueAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
          side: BorderSide(color: Theme.of(context).primaryColor),
        ),
        child: Text(
          'Log In',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );

    Widget bottomLabel(String text, Function onPressedFunction) => TextButton(
          onPressed: onPressedFunction,
          child: Text(
            text,
            style: TextStyle(
              color: Colors.black54,
            ),
          ),
        );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24, right: 24),
          children: <Widget>[
            logo,
            SizedBox(height: 48),
            email,
            SizedBox(height: 8),
            password,
            SizedBox(height: 24),
            loginButton,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                bottomLabel('Sign up', () {}),
                bottomLabel('Forgot password?', () {}),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
