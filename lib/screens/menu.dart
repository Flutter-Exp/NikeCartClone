import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: ListView(
          padding: EdgeInsets.all(30),
          children: <Widget>[
            SizedBox(
              height: 60,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30, 0, 0, 50),
              child: Hero(
                tag: 'logo',
                child: Image.asset(
                  'assets/images/NikeBlack.png',
                  height: 80,
                  alignment: Alignment.centerLeft,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.photo_library,
                color: Colors.black,
              ),
              title: Text(
                'Gallery',
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.map,
                color: Colors.black,
              ),
              // leading: Icon(Icons.dashboard),
              title: Text(
                'Find a Store',
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                FontAwesomeIcons.compass,
                color: Colors.black,
              ),
              title: GestureDetector(
                onTap: () => Navigator.of(context).pushNamed('/products'),
                child: Text(
                  'Explore',
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.photo,
                color: Colors.black,
              ),
              title: Text(
                'Wallpaper',
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.help_outline,
                color: Colors.black,
              ),
              title: Text(
                'Help & Support',
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                FontAwesomeIcons.layerGroup,
                color: Colors.black,
              ),
              title: Text(
                'Shop',
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            GestureDetector(
              onTap: () =>
                  Navigator.of(context).pushReplacementNamed('/splashscreen'),
              child: ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.black,
                ),
                title: Text(
                  'Settings',
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
