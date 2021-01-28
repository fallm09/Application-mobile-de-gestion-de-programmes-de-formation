import 'package:flutter/material.dart';
import 'package:getechapplication/Candidature.dart';
import 'package:getechapplication/Departements.dart';
import 'package:getechapplication/Home.dart';
import 'package:getechapplication/formations.dart';
import 'package:getechapplication/profil.dart';
import 'package:getechapplication/responsable.dart';

void main() => runApp(MaterialApp(
      home: getechapplication(),
    ) //MaterialApp
        );

class getechapplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Container(
                    child: Image.asset("images/getech.png"),
                    //: AssetImage("images/getech.png"),
                  ),
                ),
              ),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.white, Colors.deepOrange])),
            ),
            ListTile(
              title: Text(
                'Home',
                style: TextStyle(fontSize: 28),
              ),
              leading: Icon(Icons.home),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new HomePage()));
              },
            ),
            Divider(
              color: Colors.deepOrange,
            ),
            ListTile(
              title: Text(
                'Candidature',
                style: TextStyle(fontSize: 28),
              ),
              leading: Icon(Icons.post_add),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => new CanditaturePage()));
              },
            ),
            Divider(
              color: Colors.deepOrange,
            ),
            ListTile(
              title: Text(
                'Department',
                style: TextStyle(fontSize: 28),
              ),
              leading: Icon(Icons.account_balance_rounded),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => new DepartementsPage()));
              },
            ),
            Divider(
              color: Colors.deepOrange,
            ),
            ListTile(
              title: Text(
                'Formations',
                style: TextStyle(fontSize: 28),
              ),
              leading: Icon(Icons.computer_rounded),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => new FormationsPage()));
              },
            ),
            Divider(
              color: Colors.deepOrange,
            ),
            ListTile(
              title: Text(
                'Profil',
                style: TextStyle(fontSize: 28),
              ),
              leading: Icon(Icons.person_add),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new ProfilPage()));
              },
            ),
            Divider(
              color: Colors.deepOrange,
            ),
            ListTile(
              title: Text(
                'Responsable',
                style: TextStyle(fontSize: 28),
              ),
              leading: Icon(Icons.person),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => new ResponsablePage()));
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('My Home Page'),
      ),
      body: Center(
        child: Text(
          'Bienvenue au centre Getech',
          style: TextStyle(color: Colors.orange, fontSize: 23),
        ),
      ),
    );
  }
}
