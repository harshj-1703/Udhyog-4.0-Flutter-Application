import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PmTestingInspection extends StatefulWidget {
  const PmTestingInspection({super.key});

  @override
  State<PmTestingInspection> createState() => _PmTestingInspectionState();
}

int setPage = 0;

class _PmTestingInspectionState extends State<PmTestingInspection> {
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
                                          'Testing & Inspection',
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
                        padding: EdgeInsets.fromLTRB(20, 1, 20, 1),
                        height: 50,
                        color: Colors.transparent,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 60,
                              width: 165,
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
                                    'Testing & Inspection',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  )),
                            ),
                            SizedBox(
                              height: 60,
                              width: 165,
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
                                    'GRN Data',
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

int activeIndexVisual = 0;
int activeIndexDimension = 0;
int activeIndexDistructive1 = 0;
int activeIndexDistructive2 = 0;
int activeIndexNonDistructive1 = 0;
int activeIndexNonDistructive2 = 0;

CarouselController visualbuttonCarouselController = CarouselController();
CarouselController dimensionbuttonCarouselController = CarouselController();
CarouselController distructivebuttonCarouselController1 = CarouselController();
CarouselController distructivebuttonCarouselController2 = CarouselController();
CarouselController nondistructivebuttonCarouselController1 =
    CarouselController();
CarouselController nondistructivebuttonCarouselController2 =
    CarouselController();

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
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'VISUAL',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w900),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(6, 20, 6, 6),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Step',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  Text(
                                    '1st View Inspection',
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
                                    'PRC No',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  Text(
                                    'IB0975',
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
                                    'Heat No',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  Text(
                                    'IB0975',
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
                                    'Front Y Slide Casting-LCB',
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
                                    'Grade',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  Text(
                                    'A356T6',
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
                                    'Quantity',
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
                              padding: const EdgeInsets.fromLTRB(6, 6, 6, 15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Inspector',
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
                              padding: const EdgeInsets.fromLTRB(6, 6, 6, 15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Issue Date',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  Text(
                                    '31-07-2021',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              height: 2,
                              thickness: 1,
                              color: Colors.black,
                            ),
                            Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    SingleChildScrollView(
                                      child: CarouselSlider(
                                          items: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      9, 9, 9, 0),
                                              child: Column(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(6, 20, 6, 6),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          'Step',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                        Text(
                                                          '1st View Inspection',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(6),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          'Die No',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                        Text(
                                                          'M5050',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(6),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          'PRC No',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                        Text(
                                                          'IB0975',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(6),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          'Heat No',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                        Text(
                                                          'IB0975',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(6),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          'Part',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                        Text(
                                                          'Front Y Slide Casting-LCB',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(6),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          'Grade',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                        Text(
                                                          'A356T6',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(6),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          'Quantity',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                        Text(
                                                          '4',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(6, 6, 6, 15),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          'Inspector',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                        Text(
                                                          'JSK',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(6, 6, 6, 15),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          'Issue Date',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                        Text(
                                                          '31-07-2021',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            /*
                                                      NEW PART STARTING
                                                    */
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      9, 9, 9, 0),
                                              child: Column(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(6, 20, 6, 6),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          'Step',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                        Text(
                                                          '1st View Inspection',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(6),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          'Die No',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                        Text(
                                                          'M5050',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(6),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          'PRC No',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                        Text(
                                                          'IB0975',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(6),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          'Heat No',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                        Text(
                                                          'IB0975',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(6),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          'Part',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                        Text(
                                                          'Front Y Slide Casting-LCB',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(6),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          'Grade',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                        Text(
                                                          'A356T6',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(6),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          'Quantity',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                        Text(
                                                          '4',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(6, 6, 6, 15),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          'Inspector',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                        Text(
                                                          'JSK',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(6, 6, 6, 15),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          'Issue Date',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                        Text(
                                                          '31-07-2021',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                          carouselController:
                                              visualbuttonCarouselController,
                                          options: CarouselOptions(
                                            height: 382,
                                            // aspectRatio: 1.1,
                                            viewportFraction: 0.95,
                                            initialPage: 0,
                                            enableInfiniteScroll: true,
                                            autoPlay: true,
                                            autoPlayInterval:
                                                Duration(seconds: 4),
                                            autoPlayAnimationDuration:
                                                Duration(milliseconds: 700),
                                            autoPlayCurve: Curves.fastOutSlowIn,
                                            enlargeCenterPage: true,
                                            // enlargeFactor: 0.3,
                                            scrollDirection: Axis.horizontal,
                                            onPageChanged: (index, reason) {
                                              setState(() {
                                                activeIndexVisual = index;
                                              });
                                            },
                                          )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(15),
                                      child: AnimatedSmoothIndicator(
                                        activeIndex: activeIndexVisual,
                                        count: 2,
                                      ),
                                    ),
                                  ],
                                ),
                                // Row(
                                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                //   children: [
                                //     Flexible(
                                //       child: IconButton(
                                //         onPressed: () {
                                //           buttonCarouselController.previousPage();
                                //         },
                                //         icon: Icon(
                                //           Icons.arrow_back_ios,
                                //           color: Colors.amber,
                                //           size: 30,
                                //         ),
                                //       ),
                                //     ),
                                //     Flexible(
                                //       child: IconButton(
                                //         onPressed: () {
                                //           buttonCarouselController.nextPage();
                                //         },
                                //         icon: Icon(
                                //           Icons.arrow_forward_ios,
                                //           color: Colors.amber,
                                //           size: 30,
                                //         ),
                                //       ),
                                //     ),
                                //   ],
                                // )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    //Dimension
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'DIMENSION',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w900),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(6, 20, 6, 6),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Step',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  Text(
                                    '1st View Inspection',
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
                                    'PRC No',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  Text(
                                    'IB0975',
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
                                    'Heat No',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  Text(
                                    'IB0975',
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
                                    'Front Y Slide Casting-LCB',
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
                                    'Grade',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  Text(
                                    'A356T6',
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
                                    'Quantity',
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
                              padding: const EdgeInsets.fromLTRB(6, 6, 6, 15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Inspector',
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
                              padding: const EdgeInsets.fromLTRB(6, 6, 6, 15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Issue Date',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  Text(
                                    '31-07-2021',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              height: 2,
                              thickness: 1,
                              color: Colors.black,
                            ),
                            Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    SingleChildScrollView(
                                      child: CarouselSlider(
                                          items: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      9, 9, 9, 0),
                                              child: Column(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(6, 20, 6, 6),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          'Step',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                        Text(
                                                          '1st View Inspection',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(6),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          'Die No',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                        Text(
                                                          'M5050',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(6),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          'PRC No',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                        Text(
                                                          'IB0975',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(6),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          'Heat No',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                        Text(
                                                          'IB0975',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(6),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          'Part',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                        Text(
                                                          'Front Y Slide Casting-LCB',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(6),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          'Grade',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                        Text(
                                                          'A356T6',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(6),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          'Quantity',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                        Text(
                                                          '4',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(6, 6, 6, 15),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          'Inspector',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                        Text(
                                                          'JSK',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(6, 6, 6, 15),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          'Issue Date',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                        Text(
                                                          '31-07-2021',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            /*
                                                      NEW PART STARTING
                                                    */
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      9, 9, 9, 0),
                                              child: Column(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(6, 20, 6, 6),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          'Step',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                        Text(
                                                          '1st View Inspection',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(6),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          'Die No',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                        Text(
                                                          'M5050',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(6),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          'PRC No',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                        Text(
                                                          'IB0975',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(6),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          'Heat No',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                        Text(
                                                          'IB0975',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(6),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          'Part',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                        Text(
                                                          'Front Y Slide Casting-LCB',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(6),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          'Grade',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                        Text(
                                                          'A356T6',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(6),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          'Quantity',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                        Text(
                                                          '4',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(6, 6, 6, 15),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          'Inspector',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                        Text(
                                                          'JSK',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(6, 6, 6, 15),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          'Issue Date',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                        Text(
                                                          '31-07-2021',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                          carouselController:
                                              dimensionbuttonCarouselController,
                                          options: CarouselOptions(
                                            height: 382,
                                            // aspectRatio: 1.1,
                                            viewportFraction: 0.95,
                                            initialPage: 0,
                                            enableInfiniteScroll: true,
                                            autoPlay: true,
                                            autoPlayInterval:
                                                Duration(seconds: 4),
                                            autoPlayAnimationDuration:
                                                Duration(milliseconds: 700),
                                            autoPlayCurve: Curves.fastOutSlowIn,
                                            enlargeCenterPage: true,
                                            // enlargeFactor: 0.3,
                                            scrollDirection: Axis.horizontal,
                                            onPageChanged: (index, reason) {
                                              setState(() {
                                                activeIndexDimension = index;
                                              });
                                            },
                                          )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(15),
                                      child: AnimatedSmoothIndicator(
                                        activeIndex: activeIndexDimension,
                                        count: 2,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    //destructive
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'DESTRUCTIVE',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w900),
                                ),
                              ],
                            ),
                            Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                CarouselSlider(
                                  items: [
                                    SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                6, 20, 6, 6),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Step',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                                Text(
                                                  '1st View Inspection',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(6),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Die No',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                                Text(
                                                  'M5050',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(6),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'PRC No',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                                Text(
                                                  'IB0975',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(6),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Heat No',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                                Text(
                                                  'IB0975',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(6),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Part',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                                Text(
                                                  'Front Y Slide Casting-LCB',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(6),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Grade',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                                Text(
                                                  'A356T6',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(6),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Quantity',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                                Text(
                                                  '4',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                6, 6, 6, 15),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Inspector',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                                Text(
                                                  'JSK',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                6, 6, 6, 15),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Issue Date&Time',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                                Text(
                                                  '31-07-2021',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    //another
                                    SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                6, 6, 6, 6),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Step',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                                Text(
                                                  '1st View Inspection',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(6),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Die No',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                                Text(
                                                  'M5050',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(6),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'PRC No',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                                Text(
                                                  'IB0975',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(6),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Heat No',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                                Text(
                                                  'IB0975',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(6),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Part',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                                Text(
                                                  'Front Y Slide Casting-LCB',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(6),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Grade',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                                Text(
                                                  'A356T6',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(6),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Quantity',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                                Text(
                                                  '4',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                6, 6, 6, 15),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Tensile(UTS)',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                                Text(
                                                  '280',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                6, 6, 6, 15),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Yield 0.2%',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                                Text(
                                                  '280',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                6, 6, 6, 15),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Elongation',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                                Text(
                                                  '4.08',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                6, 6, 6, 15),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Hardness',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                                Text(
                                                  '101-102',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                6, 6, 6, 15),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Chemical',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                                Text(
                                                  'OK',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                6, 6, 6, 15),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Inspector',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                                Text(
                                                  'JSK',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                6, 6, 6, 15),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Issue Date&Time',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                                Text(
                                                  '31-07-2021',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                  carouselController:
                                      distructivebuttonCarouselController1,
                                  options: CarouselOptions(
                                    height: 565,
                                    // aspectRatio: 1.1,
                                    viewportFraction: 0.95,
                                    initialPage: 0,
                                    enableInfiniteScroll: true,
                                    autoPlay: true,
                                    autoPlayInterval: Duration(seconds: 4),
                                    autoPlayAnimationDuration:
                                        Duration(milliseconds: 700),
                                    autoPlayCurve: Curves.fastOutSlowIn,
                                    enlargeCenterPage: true,
                                    // enlargeFactor: 0.3,
                                    scrollDirection: Axis.horizontal,
                                    onPageChanged: (index, reason) {
                                      setState(() {
                                        activeIndexDistructive1 = index;
                                      });
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: AnimatedSmoothIndicator(
                                    activeIndex: activeIndexDistructive1,
                                    count: 2,
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              height: 2,
                              thickness: 1,
                              color: Colors.black,
                            ),
                            //another half
                            Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                SingleChildScrollView(
                                  child: CarouselSlider(
                                      items: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              9, 9, 9, 0),
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        6, 20, 6, 6),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'Step',
                                                      style: TextStyle(
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w900),
                                                    ),
                                                    Text(
                                                      '1st View Inspection',
                                                      style: TextStyle(
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w900),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(6),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'Die No',
                                                      style: TextStyle(
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w900),
                                                    ),
                                                    Text(
                                                      'M5050',
                                                      style: TextStyle(
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w900),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(6),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'PRC No',
                                                      style: TextStyle(
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w900),
                                                    ),
                                                    Text(
                                                      'IB0975',
                                                      style: TextStyle(
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w900),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(6),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'Heat No',
                                                      style: TextStyle(
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w900),
                                                    ),
                                                    Text(
                                                      'IB0975',
                                                      style: TextStyle(
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w900),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(6),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'Part',
                                                      style: TextStyle(
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w900),
                                                    ),
                                                    Text(
                                                      'Front Y Slide Casting-LCB',
                                                      style: TextStyle(
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w900),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(6),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'Grade',
                                                      style: TextStyle(
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w900),
                                                    ),
                                                    Text(
                                                      'A356T6',
                                                      style: TextStyle(
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w900),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(6),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'Quantity',
                                                      style: TextStyle(
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w900),
                                                    ),
                                                    Text(
                                                      '4',
                                                      style: TextStyle(
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w900),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        6, 6, 6, 15),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'Inspector',
                                                      style: TextStyle(
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w900),
                                                    ),
                                                    Text(
                                                      'JSK',
                                                      style: TextStyle(
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w900),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        6, 6, 6, 15),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'Issue Date',
                                                      style: TextStyle(
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w900),
                                                    ),
                                                    Text(
                                                      '31-07-2021',
                                                      style: TextStyle(
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w900),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        /*
                                                  NEW PART STARTING
                                                */
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              9, 9, 9, 0),
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        6, 20, 6, 6),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'Step',
                                                      style: TextStyle(
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w900),
                                                    ),
                                                    Text(
                                                      '1st View Inspection',
                                                      style: TextStyle(
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w900),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(6),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'Die No',
                                                      style: TextStyle(
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w900),
                                                    ),
                                                    Text(
                                                      'M5050',
                                                      style: TextStyle(
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w900),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(6),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'PRC No',
                                                      style: TextStyle(
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w900),
                                                    ),
                                                    Text(
                                                      'IB0975',
                                                      style: TextStyle(
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w900),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(6),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'Heat No',
                                                      style: TextStyle(
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w900),
                                                    ),
                                                    Text(
                                                      'IB0975',
                                                      style: TextStyle(
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w900),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(6),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'Part',
                                                      style: TextStyle(
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w900),
                                                    ),
                                                    Text(
                                                      'Front Y Slide Casting-LCB',
                                                      style: TextStyle(
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w900),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(6),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'Grade',
                                                      style: TextStyle(
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w900),
                                                    ),
                                                    Text(
                                                      'A356T6',
                                                      style: TextStyle(
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w900),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(6),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'Quantity',
                                                      style: TextStyle(
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w900),
                                                    ),
                                                    Text(
                                                      '4',
                                                      style: TextStyle(
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w900),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        6, 6, 6, 15),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'Inspector',
                                                      style: TextStyle(
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w900),
                                                    ),
                                                    Text(
                                                      'JSK',
                                                      style: TextStyle(
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w900),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        6, 6, 6, 15),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'Issue Date',
                                                      style: TextStyle(
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w900),
                                                    ),
                                                    Text(
                                                      '31-07-2021',
                                                      style: TextStyle(
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w900),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                      carouselController:
                                          distructivebuttonCarouselController2,
                                      options: CarouselOptions(
                                        height: 382,
                                        // aspectRatio: 1.1,
                                        viewportFraction: 0.95,
                                        initialPage: 0,
                                        enableInfiniteScroll: true,
                                        autoPlay: true,
                                        autoPlayInterval: Duration(seconds: 4),
                                        autoPlayAnimationDuration:
                                            Duration(milliseconds: 700),
                                        autoPlayCurve: Curves.fastOutSlowIn,
                                        enlargeCenterPage: true,
                                        // enlargeFactor: 0.3,
                                        scrollDirection: Axis.horizontal,
                                        onPageChanged: (index, reason) {
                                          setState(() {
                                            activeIndexDistructive2 = index;
                                          });
                                        },
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: AnimatedSmoothIndicator(
                                    activeIndex: activeIndexDistructive2,
                                    count: 2,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    //Non-Distructive
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'NON-DESTRUCTIVE',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w900),
                                ),
                              ],
                            ),
                            Text(
                              'Waiting For New Task',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500),
                            ),
                            Divider(
                              height: 2,
                              thickness: 1,
                              color: Colors.black,
                            ),
                            Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    SingleChildScrollView(
                                      child: CarouselSlider(
                                          items: [],
                                          carouselController:
                                              visualbuttonCarouselController,
                                          options: CarouselOptions(
                                            height: 382,
                                            // aspectRatio: 1.1,
                                            viewportFraction: 0.95,
                                            initialPage: 0,
                                            enableInfiniteScroll: true,
                                            autoPlay: true,
                                            autoPlayInterval:
                                                Duration(seconds: 4),
                                            autoPlayAnimationDuration:
                                                Duration(milliseconds: 700),
                                            autoPlayCurve: Curves.fastOutSlowIn,
                                            enlargeCenterPage: true,
                                            // enlargeFactor: 0.3,
                                            scrollDirection: Axis.horizontal,
                                            onPageChanged: (index, reason) {
                                              setState(() {
                                                activeIndexNonDistructive2 =
                                                    index;
                                              });
                                            },
                                          )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(15),
                                      child: AnimatedSmoothIndicator(
                                        activeIndex: activeIndexNonDistructive2,
                                        count: 2,
                                      ),
                                    ),
                                  ],
                                ),
                                // Row(
                                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                //   children: [
                                //     Flexible(
                                //       child: IconButton(
                                //         onPressed: () {
                                //           buttonCarouselController.previousPage();
                                //         },
                                //         icon: Icon(
                                //           Icons.arrow_back_ios,
                                //           color: Colors.amber,
                                //           size: 30,
                                //         ),
                                //       ),
                                //     ),
                                //     Flexible(
                                //       child: IconButton(
                                //         onPressed: () {
                                //           buttonCarouselController.nextPage();
                                //         },
                                //         icon: Icon(
                                //           Icons.arrow_forward_ios,
                                //           color: Colors.amber,
                                //           size: 30,
                                //         ),
                                //       ),
                                //     ),
                                //   ],
                                // )
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )),
      );
    } else {
      return Expanded(
        child: MediaQuery.removePadding(
            context: context,
            removeTop: true,
            child: Text('No Data Available')),
      );
    }
  }
}
