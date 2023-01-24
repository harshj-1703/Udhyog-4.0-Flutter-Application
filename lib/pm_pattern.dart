// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:http/http.dart' as http;
import 'package:udhyog4/models/Press.dart';

import 'models/Press.dart';

class PmPattern extends StatefulWidget {
  PmPattern({super.key});
  @override
  State<PmPattern> createState() => _PmPatternState();
}

int setPage = 0;

// String data1 = '0';
Future? _futurePress1;

Future<Press1> getPress1Data() async {
  var url = Uri.parse(
      'http://192.168.4.245/udhyog4/lib/apis/pattern/pattern_press1.php');
  var response = await http.get(url);
  // print('Response status: ${response.statusCode}');
  // print('Response body: ${response.body}');
  var responseData = json.decode(response.body);
  // print(responseData[0]['data1']);
  // data1 = responseData[0]['data1'];
  await Future.delayed(Duration(seconds: 1));
  return Press1.fromJSON(responseData[0]);
}

// ignore: non_constant_identifier_names
Stream<Press1> getPress1_Data() async* {
  while (true) {
    yield await getPress1Data();
  }
}

class _PmPatternState extends State<PmPattern> {
  @override
  void initState() {
    // _futurePress1 = getPress1Data();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(7, 4, 7, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Image.asset(
                                'assets/images/logo1.png',
                                height: 50,
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(2),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 4, 0, 4),
                                        child: Container(
                                          padding: EdgeInsets.all(4),
                                          alignment: Alignment.center,
                                          // height: 25,
                                          color: Colors.amber,
                                          // width: 250,
                                          child: Text(
                                            'ABC INDUSTRIES',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 4, 0, 4),
                                        child: Container(
                                          padding: EdgeInsets.all(4),
                                          alignment: Alignment.center,
                                          // height: 25,
                                          color: Colors.green,
                                          // width: 250,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Pattern Injection',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12),
                                              ),
                                              Text(
                                                'Pattern Processing',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        color: Colors.transparent,
                        height: 80,
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        height: 40,
                        color: Colors.transparent,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 30,
                              // width: ,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.all(0),
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      setPage = 0;
                                    });
                                  },
                                  child: Text(
                                    'Overview',
                                    style: TextStyle(
                                        color: Colors.grey[700],
                                        fontSize: 12.5),
                                  )),
                            ),
                            SizedBox(
                              height: 30,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.all(0),
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      setPage = 1;
                                    });
                                  },
                                  child: Text(
                                    'Press 1',
                                    style: TextStyle(
                                        color: Colors.grey[700],
                                        fontSize: 12.5),
                                  )),
                            ),
                            SizedBox(
                              height: 30,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.all(0),
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      setPage = 2;
                                    });
                                  },
                                  child: Text(
                                    'Press 2',
                                    style: TextStyle(
                                        color: Colors.grey[700],
                                        fontSize: 12.5),
                                  )),
                            ),
                            SizedBox(
                              height: 30,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.all(0),
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      setPage = 3;
                                    });
                                  },
                                  child: Text(
                                    'Press 3',
                                    style: TextStyle(
                                        color: Colors.grey[700],
                                        fontSize: 12.5),
                                  )),
                            ),
                            SizedBox(
                              height: 30,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.all(0),
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      setPage = 4;
                                    });
                                  },
                                  child: Text(
                                    'Press 4',
                                    style: TextStyle(
                                        color: Colors.grey[700],
                                        fontSize: 12.5),
                                  )),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          Overview(),
        ],
      ),
    );
  }
}

class Overview extends StatefulWidget {
  const Overview({super.key});

  @override
  State<Overview> createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {
  @override
  Widget build(BuildContext context) {
    if (setPage == 0) {
      return Expanded(
        child: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: ListView(
            padding: EdgeInsets.all(5),
            children: [
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Press 1',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w900),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.red[900],
                            ),
                            height: 50,
                            width: 100,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'JB0302',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Die No',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              'M5050',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Part',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              'Box Casting',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Planned Qty',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              '4',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Injected Qty',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              '4',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Date',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              '05-12-2022',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Operator',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              'JSK',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Pending',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'PRC',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              'JB0028',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Die No',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              'M5034',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Part',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              'Bearning Block Rear',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Planned Qauntity',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              '352',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Press 2',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w900),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.red[900],
                            ),
                            height: 50,
                            width: 100,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'JB0302',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Die No',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              'M5050',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Part',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              'Box Casting',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Planned Qty',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              '4',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Injected Qty',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              '4',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Date',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              '05-12-2022',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Operator',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              'JSK',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Pending',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'PRC',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              'JB0028',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Die No',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              'M5034',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Part',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              'Bearning Block Rear',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Planned Qauntity',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              '352',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Press 3',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w900),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.red[900],
                            ),
                            height: 50,
                            width: 100,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'JB0302',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Die No',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              'M5050',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Part',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              'Box Casting',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Planned Qty',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              '4',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Injected Qty',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              '4',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Date',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              '05-12-2022',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Operator',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              'JSK',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Pending',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'PRC',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              'JB0028',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Die No',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              'M5034',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Part',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              'Bearning Block Rear',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Planned Qauntity',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              '352',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Press 4',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w900),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.red[900],
                            ),
                            height: 50,
                            width: 100,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'JB0302',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Die No',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              'M5050',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Part',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              'Box Casting',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Planned Qty',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              '4',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Injected Qty',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              '4',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Date',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              '05-12-2022',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Operator',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              'JSK',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Pending',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'PRC',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              'JB0028',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Die No',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              'M5034',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Part',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              'Bearning Block Rear',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Planned Qauntity',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              '352',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Temprature',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w900),
                        ),
                      ),
                      Container(
                        color: Colors.transparent,
                        width: double.infinity,
                        height: 270,
                        child: SfRadialGauge(
                          enableLoadingAnimation: true,
                          animationDuration: 3500,
                          axes: <RadialAxis>[
                            // ignore: prefer_const_literals_to_create_immutables
                            RadialAxis(
                              // ignore: prefer_const_literals_to_create_immutables
                              interval: 10,
                              startAngle: 180,
                              endAngle: 0,
                              canScaleToFit: true,
                              pointers: <GaugePointer>[
                                NeedlePointer(
                                    value: 50,
                                    needleColor: Colors.black,
                                    tailStyle: TailStyle(
                                        length: 0.15,
                                        width: 7,
                                        color: Colors.black,
                                        lengthUnit: GaugeSizeUnit.factor),
                                    needleLength: 0.5,
                                    needleStartWidth: 1,
                                    needleEndWidth: 8,
                                    knobStyle: KnobStyle(
                                        knobRadius: 0.07,
                                        color: Colors.white,
                                        borderWidth: 0.05,
                                        borderColor: Colors.black),
                                    lengthUnit: GaugeSizeUnit.factor)
                                // ignore: prefer_const_literals_to_create_immutables
                              ],
                              annotations: <GaugeAnnotation>[
                                GaugeAnnotation(
                                    angle: 90,
                                    positionFactor: 0.28,
                                    widget: Text(
                                      '50.0',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ))
                              ],
                              ranges: <GaugeRange>[
                                // GaugeRange(
                                //     startValue: -60,
                                //     endValue: 120,
                                //     startWidth: 0.1,
                                //     sizeUnit: GaugeSizeUnit.factor,
                                //     endWidth: 0.1,
                                //     gradient: SweepGradient(
                                //         stops: <double>[
                                //           0.5,
                                //           0.75
                                //         ],
                                //         colors: <Color>[
                                //           Colors.green,
                                //           Colors.red
                                //         ]))
                                GaugeRange(
                                    startValue: 0,
                                    endValue: 50,
                                    color: Colors.green,
                                    startWidth: 10,
                                    endWidth: 10),
                                GaugeRange(
                                    startValue: 50,
                                    endValue: 100,
                                    color: Colors.orange,
                                    startWidth: 10,
                                    endWidth: 10),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Humidity',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w900),
                        ),
                      ),
                      Container(
                        color: Colors.transparent,
                        width: double.infinity,
                        height: 270,
                        child: SfRadialGauge(
                          enableLoadingAnimation: true,
                          animationDuration: 3500,
                          axes: <RadialAxis>[
                            // ignore: prefer_const_literals_to_create_immutables
                            RadialAxis(
                              // ignore: prefer_const_literals_to_create_immutables
                              interval: 10,
                              startAngle: 180,
                              endAngle: 0,
                              canScaleToFit: true,
                              pointers: <GaugePointer>[
                                NeedlePointer(
                                    value: 50,
                                    needleColor: Colors.black,
                                    tailStyle: TailStyle(
                                        length: 0.15,
                                        width: 7,
                                        color: Colors.black,
                                        lengthUnit: GaugeSizeUnit.factor),
                                    needleLength: 0.5,
                                    needleStartWidth: 1,
                                    needleEndWidth: 8,
                                    knobStyle: KnobStyle(
                                        knobRadius: 0.07,
                                        color: Colors.white,
                                        borderWidth: 0.05,
                                        borderColor: Colors.black),
                                    lengthUnit: GaugeSizeUnit.factor)
                                // ignore: prefer_const_literals_to_create_immutables
                              ],
                              annotations: <GaugeAnnotation>[
                                GaugeAnnotation(
                                    angle: 90,
                                    positionFactor: 0.28,
                                    widget: Text(
                                      '50.0',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ))
                              ],
                              ranges: <GaugeRange>[
                                GaugeRange(
                                    startValue: 0,
                                    endValue: 50,
                                    color: Colors.green,
                                    startWidth: 10,
                                    endWidth: 10),
                                GaugeRange(
                                    startValue: 50,
                                    endValue: 100,
                                    color: Colors.orange,
                                    startWidth: 10,
                                    endWidth: 10),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Graph',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w900),
                          ),
                        ],
                      ),
                      SfRadialGauge(
                          enableLoadingAnimation: true,
                          animationDuration: 3500,
                          axes: <RadialAxis>[
                            RadialAxis(
                              annotations: <GaugeAnnotation>[
                                GaugeAnnotation(
                                    angle: 256,
                                    positionFactor: 1.05,
                                    widget: Text(
                                      'PRC25',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Colors.green),
                                    )),
                                GaugeAnnotation(
                                    angle: 253,
                                    positionFactor: 0.90,
                                    widget: Text(
                                      'PRC13',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Colors.green[900]),
                                    )),
                                GaugeAnnotation(
                                    angle: 249,
                                    positionFactor: 0.75,
                                    widget: Text(
                                      'PRC08',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Colors.green),
                                    )),
                                GaugeAnnotation(
                                    angle: 242,
                                    positionFactor: 0.6,
                                    widget: Text(
                                      'PRC15',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Colors.green[900]),
                                    )),
                                GaugeAnnotation(
                                    angle: 230,
                                    positionFactor: 0.45,
                                    widget: Text(
                                      'PRC05',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Colors.green),
                                    )),
                              ],
                              // axisLabelStyle: GaugeTextStyle(
                              //     fontSize: 20, fontStyle: FontStyle.italic),
                              // showAxisLine: false,
                              interval: 10,
                              startAngle: 270,
                              endAngle: 180,
                              showTicks: false,
                              showLabels: false,
                              axisLineStyle: AxisLineStyle(thickness: 20),
                              pointers: <GaugePointer>[
                                RangePointer(
                                    value: 75,
                                    width: 20,
                                    color: Colors.green,
                                    enableAnimation: true,
                                    cornerStyle: CornerStyle.bothCurve),
                              ],
                              // annotations: <GaugeAnnotation>[
                              //   GaugeAnnotation(
                              //     widget: Column(
                              //       children: <Widget>[
                              //         SizedBox(
                              //           width: 50.00,
                              //           height: 50.00,
                              //         ),
                              //         Padding(
                              //           padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
                              //           child: Text('73°F',
                              //               style: TextStyle(
                              //                   fontWeight: FontWeight.bold,
                              //                   fontSize: 25)),
                              //         )
                              //       ],
                              //     ),
                              //     angle: 90,
                              //     // positionFactor: 0.1
                              //   )
                              // ]
                            ),
                            RadialAxis(
                              radiusFactor: 0.8,
                              // showAxisLine: false,
                              interval: 10,
                              startAngle: 270,
                              endAngle: 180,
                              showTicks: false,
                              showLabels: false,
                              axisLineStyle: AxisLineStyle(thickness: 20),
                              pointers: <GaugePointer>[
                                RangePointer(
                                    value: 65,
                                    width: 20,
                                    color: Colors.green[900],
                                    enableAnimation: true,
                                    cornerStyle: CornerStyle.bothCurve),
                              ],
                            ),
                            RadialAxis(
                              radiusFactor: 0.65,
                              // showAxisLine: false,
                              interval: 10,
                              startAngle: 270,
                              endAngle: 180,
                              showTicks: false,
                              showLabels: false,
                              axisLineStyle: AxisLineStyle(thickness: 20),
                              pointers: <GaugePointer>[
                                RangePointer(
                                    value: 55,
                                    width: 20,
                                    color: Colors.green,
                                    enableAnimation: true,
                                    cornerStyle: CornerStyle.bothCurve),
                              ],
                            ),
                            RadialAxis(
                              radiusFactor: 0.5,
                              // showAxisLine: false,
                              interval: 10,
                              startAngle: 270,
                              endAngle: 180,
                              showTicks: false,
                              showLabels: false,
                              axisLineStyle: AxisLineStyle(thickness: 20),
                              pointers: <GaugePointer>[
                                RangePointer(
                                    value: 45,
                                    width: 20,
                                    color: Colors.green[900],
                                    enableAnimation: true,
                                    cornerStyle: CornerStyle.bothCurve),
                              ],
                            ),
                            RadialAxis(
                              // showAxisLine: false,
                              radiusFactor: 0.35,
                              interval: 10,
                              startAngle: 270,
                              endAngle: 180,
                              showTicks: false,
                              showLabels: false,
                              axisLineStyle: AxisLineStyle(thickness: 20),
                              pointers: <GaugePointer>[
                                RangePointer(
                                    value: 25,
                                    width: 20,
                                    color: Colors.green,
                                    enableAnimation: true,
                                    cornerStyle: CornerStyle.bothCurve),
                              ],
                            ),
                          ]),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    } else if (setPage == 1) {
      return StreamBuilder(
          stream: getPress1_Data(),
          builder: (ctx, snapshot) {
            if (!snapshot.hasData) {
              return Center(child: CircularProgressIndicator());
            }
            return Expanded(
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: ListView(
                  padding: EdgeInsets.all(5),
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Text(
                          //   'Machine Photo Press 1',
                          //   style: TextStyle(
                          //       fontSize: 17, fontWeight: FontWeight.w900),
                          // ),
                          Stack(
                            children: [
                              SizedBox(
                                height: 440,
                                width: 340,
                                child: Image.asset(
                                    'assets/images/Machines/Wax Injection Press 1.png'),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(231.5, 136, 0, 0),
                                child: Text(
                                  // snapshot.data[0]['id'],
                                  snapshot.data!.data1,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.yellow, fontSize: 11),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(277, 136, 0, 0),
                                child: Text(
                                  // snapshot.data[0]['data2'],
                                  snapshot.data!.data2,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.yellow, fontSize: 11),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(231.5, 162, 0, 0),
                                child: Text(
                                  'data',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.yellow, fontSize: 11),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(277, 162, 0, 0),
                                child: Text(
                                  'data 1',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.yellow, fontSize: 11),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(231.5, 190, 0, 0),
                                child: Text(
                                  'data',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.yellow, fontSize: 11),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(277, 190, 0, 0),
                                child: Text(
                                  'data 1',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.yellow, fontSize: 11),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Status',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w900),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.red[900],
                                  ),
                                  height: 50,
                                  width: 100,
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(6),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'PRC',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  Text(
                                    'JB0302',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(6),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Die No',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  Text(
                                    'M5050',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(6),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Part',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  Text(
                                    'Box Casting',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(6),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Operator',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  Text(
                                    'JSK',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(6),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Planned Qty',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  Text(
                                    '4',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(6),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Injected Qty',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  Text(
                                    '4',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(6),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Rejected Qty',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  Text(
                                    '0',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(6),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Set Pressure',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  Text(
                                    '-kgf/cm2',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(6),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Set Tempreture 1',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  Text(
                                    '220 C',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(6),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Set Tempreture 2',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  Text(
                                    '220 C',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(6),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Set Tempreture 3',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  Text(
                                    '220 C',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(6),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Set Tempreture 4',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  Text(
                                    '220 C',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(6),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Set Dwell Time',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  Text(
                                    '2.5 Min',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(6),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Power Consumption',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  Text(
                                    '120.12 Units',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          });
    } else if (setPage == 2) {
      return Expanded(
        child: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: ListView(
            padding: EdgeInsets.all(5),
            children: [
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Text(
                    //   'Machine Photo Press 1',
                    //   style: TextStyle(
                    //       fontSize: 17, fontWeight: FontWeight.w900),
                    // ),
                    Stack(
                      children: [
                        SizedBox(
                          height: 440,
                          width: 340,
                          child: Image.asset(
                              'assets/images/Machines/Wax Injection Press 2.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(231.5, 136, 0, 0),
                          child: Text(
                            'data',
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(color: Colors.yellow, fontSize: 11),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(277, 136, 0, 0),
                          child: Text(
                            'data 1',
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(color: Colors.yellow, fontSize: 11),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(231.5, 162, 0, 0),
                          child: Text(
                            'data',
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(color: Colors.yellow, fontSize: 11),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(277, 162, 0, 0),
                          child: Text(
                            'data 1',
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(color: Colors.yellow, fontSize: 11),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(231.5, 190, 0, 0),
                          child: Text(
                            'data',
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(color: Colors.yellow, fontSize: 11),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(277, 190, 0, 0),
                          child: Text(
                            'data 1',
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(color: Colors.yellow, fontSize: 11),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Status',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w900),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.red[900],
                            ),
                            height: 50,
                            width: 100,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'PRC',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              'JB0302',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Die No',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              'M5050',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Part',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              'Box Casting',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Operator',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              'JSK',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Planned Qty',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              '4',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Injected Qty',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              '4',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Rejected Qty',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              '0',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Set Pressure',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              '-kgf/cm2',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Set Tempreture 1',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              '220 C',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Set Tempreture 2',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              '220 C',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Set Tempreture 3',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              '220 C',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Set Tempreture 4',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              '220 C',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Set Dwell Time',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              '2.5 Min',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Power Consumption',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              '120.12 Units',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    } else if (setPage == 3) {
      return Expanded(
        child: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: ListView(
            padding: EdgeInsets.all(5),
            children: [
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Text(
                    //   'Machine Photo Press 1',
                    //   style: TextStyle(
                    //       fontSize: 17, fontWeight: FontWeight.w900),
                    // ),
                    Stack(
                      children: [
                        SizedBox(
                          height: 440,
                          width: 340,
                          child: Image.asset(
                              'assets/images/Machines/Wax Injection Press 3.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(231.5, 136, 0, 0),
                          child: Text(
                            'data',
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(color: Colors.yellow, fontSize: 11),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(277, 136, 0, 0),
                          child: Text(
                            'data 1',
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(color: Colors.yellow, fontSize: 11),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(231.5, 162, 0, 0),
                          child: Text(
                            'data',
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(color: Colors.yellow, fontSize: 11),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(277, 162, 0, 0),
                          child: Text(
                            'data 1',
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(color: Colors.yellow, fontSize: 11),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(231.5, 190, 0, 0),
                          child: Text(
                            'data',
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(color: Colors.yellow, fontSize: 11),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(277, 190, 0, 0),
                          child: Text(
                            'data 1',
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(color: Colors.yellow, fontSize: 11),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Status',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w900),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.red[900],
                            ),
                            height: 50,
                            width: 100,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'PRC',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              'JB0302',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Die No',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              'M5050',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Part',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              'Box Casting',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Operator',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              'JSK',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Planned Qty',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              '4',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Injected Qty',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              '4',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Rejected Qty',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              '0',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Set Pressure',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              '-kgf/cm2',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Set Tempreture 1',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              '220 C',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Set Tempreture 2',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              '220 C',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Set Tempreture 3',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              '220 C',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Set Tempreture 4',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              '220 C',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Set Dwell Time',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              '2.5 Min',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Power Consumption',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              '120.12 Units',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      return Expanded(
        child: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: ListView(
            padding: EdgeInsets.all(5),
            children: [
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Text(
                    //   'Machine Photo Press 1',
                    //   style: TextStyle(
                    //       fontSize: 17, fontWeight: FontWeight.w900),
                    // ),
                    Stack(
                      children: [
                        SizedBox(
                          height: 440,
                          width: 340,
                          child: Image.asset(
                              'assets/images/Machines/Wax Injection Press 4.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(231.5, 136, 0, 0),
                          child: Text(
                            'data',
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(color: Colors.yellow, fontSize: 11),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(277, 136, 0, 0),
                          child: Text(
                            'data 1',
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(color: Colors.yellow, fontSize: 11),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(231.5, 162, 0, 0),
                          child: Text(
                            'data',
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(color: Colors.yellow, fontSize: 11),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(277, 162, 0, 0),
                          child: Text(
                            'data 1',
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(color: Colors.yellow, fontSize: 11),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(231.5, 190, 0, 0),
                          child: Text(
                            'data',
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(color: Colors.yellow, fontSize: 11),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(277, 190, 0, 0),
                          child: Text(
                            'data 1',
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(color: Colors.yellow, fontSize: 11),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Status',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w900),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.red[900],
                            ),
                            height: 50,
                            width: 100,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'PRC',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              'JB0302',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Die No',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              'M5050',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Part',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              'Box Casting',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Operator',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              'JSK',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Planned Qty',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              '4',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Injected Qty',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              '4',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Rejected Qty',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              '0',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Set Pressure',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              '-kgf/cm2',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Set Tempreture 1',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              '220 C',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Set Tempreture 2',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              '220 C',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Set Tempreture 3',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              '220 C',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Set Tempreture 4',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              '220 C',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Set Dwell Time',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              '2.5 Min',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Power Consum.',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              '120.12 Units',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}
