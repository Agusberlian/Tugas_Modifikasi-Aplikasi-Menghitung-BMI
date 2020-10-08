import 'package:flutter/material.dart';
import 'dart:math';


class BMIResult extends StatelessWidget {

  BMIResult({@required this.nama, @required this.jenis_kelamin, @required this.ttl, @required this.tinggi_badan, @required this.berat_badan});

  final String nama;
  final String jenis_kelamin;
  final int ttl;
  final int tinggi_badan;
  final int berat_badan;
  int umur = 2020;

  @override
  Widget build(BuildContext context) {
    umur -= ttl;
    double bmi = berat_badan/pow(tinggi_badan/100,2);
    String cBMI;
    if (bmi>=28) cBMI="Obesitas";
    else if (bmi>=23) cBMI="Kegemukan";
    else if (bmi>=17.5) cBMI="Normal";
    else cBMI="Kurus";
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('RESULT'),
      ),
      resizeToAvoidBottomPadding: false,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    "Nama: ${nama}",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.lightBlue),
                  ),
                  Text(
                    "Jenis Kelamin: ${jenis_kelamin}",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.lightBlue),
                  ),
                  Text(
                    "Umur: ${umur}",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.lightBlue),
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 70),
              child: Column(
                children: [
                  Text(
                    cBMI,
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w500,
                      color: Colors.green,
                    ),
                  ),
                  Text(
                    bmi.toStringAsFixed(2),
                    style: TextStyle(
                      fontSize: 100,
                      fontWeight: FontWeight.w800,
                      color: Colors.green,
                    ),
                  ),
                  Text(
                    'Normal BMI Range',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Colors.green,
                    ),
                  ),
                  Text(
                    '17,5 -  22.9 ',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        width: double.infinity,
        height: 80,
        child: RaisedButton(

          color: Colors.lightBlue,
          child: Text('BACK',
            style: TextStyle(
                color: Colors.white,
                fontSize: 30
            ),

          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
