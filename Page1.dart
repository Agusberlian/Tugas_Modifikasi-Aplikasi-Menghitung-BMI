import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Detail Akun'),
          backgroundColor: Colors.redAccent,
          leading: Icon(
            Icons.dehaze,
            color: Colors.white,
            size: 25,
          ),
          actions: <Widget> [
            IconButton(icon: Icon(Icons.mail, color: Colors.white,)),
            IconButton(icon: Icon(Icons.notifications, color: Colors.white,))
          ],
          centerTitle: true,
        ),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomCenter,
              stops: [0.3, 0.6, 0.9],
              colors: [
                Color.fromRGBO(12, 235, 235, 1),
                Color.fromRGBO(32, 227, 178, 1),
                Color.fromRGBO(41, 255, 198, 1),
              ],
            ),
          ),
          child: Center(
            child: Column(
              children: <Widget> [
                Mypict(),
                Desc(),
                Email(),
                Cont1(),
                Cont2()
              ],
            ),
          ),
        ),
        bottomSheet: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          width: double.infinity,
          height: 60,
          child: RaisedButton(
            child: Text('Kembali',
              style: TextStyle(
                  fontSize: 30
              ),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}

class Mypict extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Center(
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/Foto 1.jpg'),
          radius: 80,
        ),
      ),
    );
  }
}

class Desc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 5),
      child: Center(
        child: Column(
          children: <Widget> [
            Text('Kadek Agus Berlian Pangestu', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

class Email extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget> [
            Text('agus.berlian@undiksha.ac.id', style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}

class Cont1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: <Widget> [
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      blurRadius: 18,
                      spreadRadius: 2,
                      color: Colors.transparent.withOpacity(.5)
                  ),
                ],
              ),
              margin: EdgeInsets.only(left: 65, top: 40),
              width: 115,
              height: 90,
              child: Card(
                child: Center(
                  child: Column(
                    children: <Widget> [
                      Icon(Icons.home, size: 50, color: Colors.black,),
                      Text('Penarungan', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      blurRadius: 18,
                      spreadRadius: 2,
                      color: Colors.transparent.withOpacity(.5)
                  ),
                ],
              ),
              margin: EdgeInsets.only(left: 55, top: 40),
              width: 115,
              height: 90,
              child: Card(
                child: Center(
                  child: Column(
                    children: <Widget> [
                      Icon(Icons.grade, size: 50, color: Colors.yellow,),
                      Text('Top 3 HTG', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Cont2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: <Widget> [
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      blurRadius: 18,
                      spreadRadius: 2,
                      color: Colors.transparent.withOpacity(.5)
                  ),
                ],
              ),
              margin: EdgeInsets.only(left: 65, top: 50),
              width: 115,
              height: 90,
              child: Card(
                child: Center(
                  child: Column(
                    children: <Widget> [
                      Icon(Icons.school, size: 50, color: Colors.blueAccent,),
                      Text('Undiksha', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      blurRadius: 18,
                      spreadRadius: 2,
                      color: Colors.transparent.withOpacity(.5)
                  ),
                ],
              ),
              margin: EdgeInsets.only(left: 55, top: 50),
              width: 115,
              height: 90,
              child: Card(
                child: Center(
                  child: Column(
                    children: <Widget> [
                      Icon(Icons.games, size: 50, color: Colors.red,),
                      Text('Action', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
