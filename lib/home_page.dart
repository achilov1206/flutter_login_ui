import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    final userLogo = Hero(
      tag: 'hero1',
      child: Padding(
        padding: EdgeInsets.all(16),
        child: CircleAvatar(
          radius: 90,
          backgroundColor: Colors.transparent,
          child: ClipOval(
            child: Image.asset(
              'assets/images/user.jpg',
            ),
          ),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8),
      child: Text(
        'Welcome User',
        style: TextStyle(
          fontSize: 24,
          color: Colors.white,
        ),
      ),
    );

    final someText = Padding(
      padding: EdgeInsets.all(8),
      child: Text(
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book',
        style: TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.blue,
            Colors.lightBlueAccent,
          ],
        ),
      ),
      child: Column(
        children: <Widget>[
          userLogo,
          welcome,
          someText,
        ],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}
