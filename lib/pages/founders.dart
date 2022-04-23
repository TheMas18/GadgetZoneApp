// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}

class Founders extends StatefulWidget {
  const Founders({Key key}) : super(key: key);

  @override
  State<Founders> createState() => _FoundersState();
}

class _FoundersState extends State<Founders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          title: Text(
            'Founders Page',
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 0, 18, 99),
        ),
        body: Column(
          children: [
            // ignore: duplicate_ignore
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue.withOpacity(0.8),
                        spreadRadius: 4,
                        blurRadius: 10,
                        offset: Offset(0, 0), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      width: 3,
                      color: Colors.blue,
                    ),
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(190),
                      child: GestureDetector(
                        // Image tapped
                        child: Image.asset(
                          "assets/images/mayuresh.jpeg",
                          fit: BoxFit.cover,
                          height: 140,
                          width: 140.0,
                        ),
                      )),
                ),
                Container(
                  margin: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue.withOpacity(0.8),
                        spreadRadius: 4,
                        blurRadius: 10,
                        offset: Offset(0, 0), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      width: 3,
                      color: Colors.blue,
                    ),
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(190),
                      child: GestureDetector(
                        // Image tapped
                        child: Image.asset(
                          "assets/images/tushar.jpeg",
                          fit: BoxFit.cover,
                          height: 140,
                          width: 140.0,
                        ),
                      )),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 20),
                Text(
                  "Mayuresh",
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255), fontSize: 30),
                ),
                SizedBox(width: 80),
                Text(
                  "Tushar",
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255), fontSize: 30),
                ),
              ],
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    _showDialog(context);
                  },
                  child: Icon(
                    MdiIcons.facebook,
                    size: 50,
                    color: Color.fromARGB(255, 32, 147, 255),
                  ),
                ),
                Icon(
                  MdiIcons.instagram,
                  size: 50,
                  color: Color.fromARGB(255, 255, 0, 221),
                ),
                // ignore: prefer_const_constructors
                Icon(
                  MdiIcons.twitter,
                  size: 50,
                  color: Color.fromARGB(255, 6, 255, 243),
                )
              ],
            ),
            SizedBox(height: 30),
            Center(
                child: Container(
                    child: SfCartesianChart(
                        primaryXAxis: CategoryAxis(),
                        series: <LineSeries<SalesData, String>>[
                  LineSeries<SalesData, String>(
                      // Bind data source
                      dataSource: <SalesData>[
                        SalesData('Laptops', 35),
                        SalesData('TV', 28),
                        SalesData('Headphones', 34),
                        SalesData('SmartPhones', 32),
                      ],
                      xValueMapper: (SalesData sales, _) => sales.year,
                      yValueMapper: (SalesData sales, _) => sales.sales)
                ])))
          ],
        ));
  }
}

void _showDialog(BuildContext context) {
  // flutter defined function
  showDialog(
    context: context,
    builder: (BuildContext context) {
      // return object of type Dialog
      return AlertDialog(
        title: Text("Message"),
        content: Text("This is Facebook Icon"),
        actions: <Widget>[
          // ignore: deprecated_member_use
          FlatButton(
            child: Text("Close"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
