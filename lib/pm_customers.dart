import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class Customers extends StatefulWidget {
  const Customers({super.key});

  @override
  State<Customers> createState() => _CustomersState();
}

int setPage = 0;

class _CustomersState extends State<Customers> {
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
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(0, 4, 0, 4),
                                      child: Container(
                                        padding: EdgeInsets.all(4),
                                        alignment: Alignment.center,
                                        // height: 25,
                                        color: Colors.green,
                                        // width: 250,
                                        child: Text(
                                          'Customers',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
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
                        padding: EdgeInsets.fromLTRB(50, 1, 50, 1),
                        height: 40,
                        color: Colors.transparent,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 40,
                              width: 120,
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
                                    'Order',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  )),
                            ),
                            SizedBox(
                              height: 40,
                              width: 120,
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
                                    'Follow-Up',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
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
          Overview2(),
        ],
      ),
    );
  }
}

int activeIndexCustomer = 0;

CarouselController customerCarouselController = CarouselController();

class Overview2 extends StatefulWidget {
  const Overview2({super.key});

  @override
  State<Overview2> createState() => _Overview2State();
}

class _Overview2State extends State<Overview2> {
  @override
  Widget build(BuildContext context) {
    if (setPage == 0) {
      return Expanded(
        child: MediaQuery.removePadding(
            context: context,
            removeTop: true,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        CarouselSlider(
                            carouselController: customerCarouselController,
                            items: [
                              Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                color: Colors.white,
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            6, 20, 6, 6),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Customer',
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w900),
                                            ),
                                            Text(
                                              'BHARAT ELECTRONICS',
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w900),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            6, 6, 6, 6),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'O.A.',
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w900),
                                            ),
                                            Text(
                                              'ACB02250',
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w900),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            6, 6, 6, 6),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Die',
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w900),
                                            ),
                                            Text(
                                              '05111',
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w900),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            6, 6, 6, 6),
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
                                              '-',
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w900),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            6, 6, 6, 6),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Order Quantity',
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w900),
                                            ),
                                            Text(
                                              '5',
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w900),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            6, 6, 6, 6),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Plan Quantity',
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w900),
                                            ),
                                            Text(
                                              '5',
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w900),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            6, 6, 6, 15),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Delivary Date',
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w900),
                                            ),
                                            Text(
                                              '31-07-2021',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w800),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Divider(
                                        height: 2,
                                        thickness: 1,
                                        color: Colors.black,
                                      ),
                                      Flexible(
                                        child: SfRadialGauge(
                                            enableLoadingAnimation: true,
                                            animationDuration: 1000,
                                            axes: <RadialAxis>[
                                              RadialAxis(
                                                annotations: <GaugeAnnotation>[
                                                  GaugeAnnotation(
                                                      angle: 240,
                                                      positionFactor: 1.15,
                                                      widget: Text(
                                                        'Heat Treatment',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 20,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    244,
                                                                    125,
                                                                    40)),
                                                      )),
                                                  GaugeAnnotation(
                                                      angle: 245,
                                                      positionFactor: 0.93,
                                                      widget: Text(
                                                        'Finishing',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 20,
                                                            color: Colors
                                                                .green[900]),
                                                      )),
                                                  GaugeAnnotation(
                                                      angle: 230,
                                                      positionFactor: 0.89,
                                                      widget: Text(
                                                        'Melting & Pouring',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 20,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    244,
                                                                    125,
                                                                    40)),
                                                      )),
                                                  GaugeAnnotation(
                                                      angle: 242,
                                                      positionFactor: 0.58,
                                                      widget: Text(
                                                        'Shell',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 20,
                                                            color: Colors
                                                                .green[900]),
                                                      )),
                                                  GaugeAnnotation(
                                                      angle: 230,
                                                      positionFactor: 0.48,
                                                      widget: Text(
                                                        'Pattern',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 20,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    244,
                                                                    125,
                                                                    40)),
                                                      )),
                                                ],
                                                interval: 10,
                                                startAngle: 270,
                                                endAngle: 180,
                                                showTicks: false,
                                                showLabels: false,
                                                axisLineStyle: AxisLineStyle(
                                                    thickness: 20),
                                                pointers: <GaugePointer>[
                                                  RangePointer(
                                                      value: 75,
                                                      width: 20,
                                                      color: Color.fromARGB(
                                                          255, 244, 125, 40),
                                                      enableAnimation: true,
                                                      cornerStyle: CornerStyle
                                                          .bothCurve),
                                                ],
                                              ),
                                              RadialAxis(
                                                radiusFactor: 0.8,
                                                // showAxisLine: false,
                                                interval: 10,
                                                startAngle: 270,
                                                endAngle: 180,
                                                showTicks: false,
                                                showLabels: false,
                                                axisLineStyle: AxisLineStyle(
                                                    thickness: 20),
                                                pointers: <GaugePointer>[
                                                  RangePointer(
                                                      value: 65,
                                                      width: 20,
                                                      color: Colors.green[900],
                                                      enableAnimation: true,
                                                      cornerStyle: CornerStyle
                                                          .bothCurve),
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
                                                axisLineStyle: AxisLineStyle(
                                                    thickness: 20),
                                                pointers: <GaugePointer>[
                                                  RangePointer(
                                                      value: 55,
                                                      width: 20,
                                                      color: Color.fromARGB(
                                                          255, 244, 125, 40),
                                                      enableAnimation: true,
                                                      cornerStyle: CornerStyle
                                                          .bothCurve),
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
                                                axisLineStyle: AxisLineStyle(
                                                    thickness: 20),
                                                pointers: <GaugePointer>[
                                                  RangePointer(
                                                      value: 45,
                                                      width: 20,
                                                      color: Colors.green[900],
                                                      enableAnimation: true,
                                                      cornerStyle: CornerStyle
                                                          .bothCurve),
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
                                                axisLineStyle: AxisLineStyle(
                                                    thickness: 20),
                                                pointers: <GaugePointer>[
                                                  RangePointer(
                                                      value: 25,
                                                      width: 20,
                                                      color: Color.fromARGB(
                                                          255, 244, 125, 40),
                                                      enableAnimation: true,
                                                      cornerStyle: CornerStyle
                                                          .bothCurve),
                                                ],
                                              ),
                                            ]),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                            options: CarouselOptions(
                              height: 630,
                              // aspectRatio: 0.6,
                              viewportFraction: 0.95,
                              initialPage: 0,
                              enableInfiniteScroll: true,
                              reverse: false,
                              autoPlay: true,
                              autoPlayInterval: Duration(seconds: 10),
                              autoPlayAnimationDuration:
                                  Duration(milliseconds: 800),
                              autoPlayCurve: Curves.fastOutSlowIn,
                              enlargeCenterPage: true,
                              enlargeFactor: 0.3,
                              scrollDirection: Axis.horizontal,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  activeIndexCustomer = index;
                                });
                              },
                            )),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: AnimatedSmoothIndicator(
                        activeIndex: activeIndexCustomer,
                        count: 2,
                      ),
                    ),
                  ],
                ),
              ),
            )),
      );
    } else {
      return Text('No Data');
    }
  }
}
