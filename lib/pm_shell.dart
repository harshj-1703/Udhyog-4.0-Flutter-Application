// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class PmShell extends StatefulWidget {
  const PmShell({super.key});

  @override
  State<PmShell> createState() => _PmShellState();
}

int setPage = 0;

class _PmShellState extends State<PmShell> {
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
                        // ignore: sort_child_properties_last
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
                                          padding:
                                              EdgeInsets.fromLTRB(25, 4, 25, 4),
                                          alignment: Alignment.center,
                                          // height: 25,
                                          color: Colors.green,
                                          // width: 250,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            // ignore: prefer_const_literals_to_create_immutables
                                            children: [
                                              SizedBox(
                                                height: 30,
                                                child: TextButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      padding:
                                                          EdgeInsets.all(0),
                                                      // backgroundColor:
                                                      //     Colors.white,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          50)),
                                                    ),
                                                    onPressed: () {
                                                      setState(() {
                                                        setPage = 0;
                                                      });
                                                    },
                                                    child: Text(
                                                      'Coating',
                                                      style: (setPage == 0)
                                                          ? TextStyle(
                                                              letterSpacing:
                                                                  1.2,
                                                              decoration:
                                                                  TextDecoration
                                                                      .underline,
                                                              // decorationStyle:
                                                              //     TextDecorationStyle
                                                              //         .wavy,
                                                              decorationThickness:
                                                                  2.1,
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 16,
                                                            )
                                                          : TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 16,
                                                            ),
                                                    )),
                                              ),
                                              SizedBox(
                                                height: 30,
                                                child: TextButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    padding: EdgeInsets.all(0),
                                                    // backgroundColor:
                                                    //     Colors.white,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        50)),
                                                  ),
                                                  onPressed: () {
                                                    setState(() {
                                                      setPage = 1;
                                                    });
                                                  },
                                                  child: Text(
                                                    'Dewaxing',
                                                    style: (setPage == 1)
                                                        ? TextStyle(
                                                            letterSpacing: 1.2,
                                                            decoration:
                                                                TextDecoration
                                                                    .underline,
                                                            // decorationStyle:
                                                            //     TextDecorationStyle
                                                            //         .wavy,
                                                            decorationThickness:
                                                                2.1,
                                                            color: Colors.white,
                                                            fontSize: 16,
                                                          )
                                                        : TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 16,
                                                          ),
                                                  ),
                                                ),
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
                        height: 90,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Divider(),
          Overview1(),
        ],
      ),
    );
  }
}

class Overview1 extends StatefulWidget {
  const Overview1({super.key});

  @override
  State<Overview1> createState() => _Overview1State();
}

class _Overview1State extends State<Overview1> {
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
                            'Primary Coating',
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
                              'PRC Quantity',
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
                              'Plate Weight',
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
                              'Specific Density',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              '3.01',
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
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Viscocity',
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Intermediate Coating',
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
                              'PRC Quantity',
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
                              'Plate Weight',
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
                              'Specific Density',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              '3.01',
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
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.red[900],
                              ),
                              height: 45,
                              width: 67,
                              child: Text(
                                '1',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.red[900],
                              ),
                              height: 45,
                              width: 67,
                              child: Text(
                                '2',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.red[900],
                              ),
                              height: 45,
                              width: 67,
                              child: Text(
                                '3',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.red[900],
                              ),
                              height: 45,
                              width: 67,
                              child: Text(
                                '4',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.red[900],
                              ),
                              height: 45,
                              width: 67,
                              child: Text(
                                '5',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.red[900],
                              ),
                              height: 45,
                              width: 67,
                              child: Text(
                                '6',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.red[900],
                              ),
                              height: 45,
                              width: 67,
                              child: Text(
                                '7',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.red[900],
                              ),
                              height: 45,
                              width: 67,
                              child: Text(
                                '8',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
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
                          'Viscocity',
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Backup Coating',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w900),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.green[900],
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
                              'PRC Quantity',
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
                              'Plate Weight',
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
                              'Specific Density',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              '3.01',
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
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.green[900],
                              ),
                              height: 45,
                              width: 67,
                              child: Text(
                                '1',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.green[900],
                              ),
                              height: 45,
                              width: 67,
                              child: Text(
                                '2',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.red[900],
                              ),
                              height: 45,
                              width: 67,
                              child: Text(
                                '3',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.red[900],
                              ),
                              height: 45,
                              width: 67,
                              child: Text(
                                '4',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.red[900],
                              ),
                              height: 45,
                              width: 67,
                              child: Text(
                                '5',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.red[900],
                              ),
                              height: 45,
                              width: 67,
                              child: Text(
                                '6',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.red[900],
                              ),
                              height: 45,
                              width: 67,
                              child: Text(
                                '7',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.red[900],
                              ),
                              height: 45,
                              width: 67,
                              child: Text(
                                '8',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
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
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Viscocity',
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
                          height: 300,
                          width: 340,
                          child: Image.asset(
                              'assets/images/Machines/Autoclave Boiler with Controller.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(12, 76, 0, 0),
                          child: Text(
                            'data',
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(color: Colors.yellow, fontSize: 11),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(12, 108, 0, 0),
                          child: Text(
                            'data',
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(color: Colors.yellow, fontSize: 11),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(274, 179, 0, 0),
                          child: Text(
                            'data',
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(color: Colors.yellow, fontSize: 11),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(305, 179, 0, 0),
                          child: Text(
                            'data',
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
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.red[900],
                            ),
                            height: 50,
                            width: 100,
                            child: Text(
                              'Off',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
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
                              'IB0998',
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
                              'PRC Quantity',
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
                              'PRC Qauntity',
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
            ],
          ),
        ),
      );
    }
  }
}
