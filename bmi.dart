import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:date_field/date_field.dart';
import 'Page1.dart';
import 'bmi_result.dart';

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class InputBMI extends StatefulWidget {
  @override
  _InputBMIState createState() => _InputBMIState();
}

class _InputBMIState extends State<InputBMI> {
  DateTime selectedDate;
  TextEditingController controllernama =  TextEditingController();

  int tinggi = 0;
  int berat = 0;
  String _jk="";

  void _selectJk(String value){
    setState(() {
      _jk = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          //backgroundColor: Colors.blue[900],
          centerTitle: true,
          leading: Icon(
            Icons.menu,
            size: 30,
          ),
          actions: <Widget> [
            IconButton(
              icon: Icon(Icons.account_circle, size: 30,),
              onPressed: (){
                Navigator.pushNamed(context, '/Page1');
              },
            )
          ],
          title: Text('MENGHITUNG BMI'),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                child:
                Image.asset('assets/bmi.jpg',
                  fit: BoxFit.fitWidth,
                ),
              ),

              Container(
                margin: EdgeInsets.only(top:20),
                padding: EdgeInsets.all(10),
                child: Column(
                  children: <Widget> [
                    TextField(
                      controller: controllernama,
                      decoration: InputDecoration(
                        labelText: 'Nama',
                        hintText: 'Masukkan Nama',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: <Widget> [
                    DateTimeField(
                      selectedDate: selectedDate,
                      onDateSelected: (DateTime date) {
                        setState(() {
                          selectedDate = date;
                        });
                      },
                      lastDate: DateTime(2020),
                    ),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text ("Jenis Kelamin", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    RadioListTile(
                        value: "Laki - Laki",
                        title: Text("Laki - Laki"),
                        groupValue: _jk,
                        onChanged: (String value){
                          _selectJk(value);
                        }
                    ),
                    RadioListTile(
                        value: "Perempuan",
                        title: Text("Perempuan"),
                        groupValue: _jk,
                        onChanged: (String value){
                          _selectJk(value);
                        }
                    ),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.all(10),
                // color: Colors.blue[700],
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            tinggi = int.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 3,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        decoration: InputDecoration(
                            suffix: Text('cm'),

                            filled: true,
                            hintText: 'Tinggi'),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            berat = int.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 3,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        decoration: InputDecoration(
                            suffix: Text('kg'),
                            filled: true,
                            hintText: 'Berat'),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(left: 10,right: 10,bottom: 20),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BMIResult(nama: controllernama.text, ttl: selectedDate.year, jenis_kelamin: _jk, tinggi_badan: tinggi, berat_badan: berat)),
                    );
                  },
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  color: Colors.lightBlue,
                  // textColor: Colors.white,
                  child: Text(
                    'HITUNG BMI',
                    style:
                    TextStyle(fontSize: 30, fontWeight: FontWeight.w500, color: Color(0xFFF2F2F2)),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }
}
