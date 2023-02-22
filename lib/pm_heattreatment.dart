import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HeatTreatment extends StatefulWidget {
  const HeatTreatment({super.key});

  @override
  State<HeatTreatment> createState() => _HeatTreatmentState();
}

int setPage = 0;

class _HeatTreatmentState extends State<HeatTreatment> {
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
                                          'Heat Treatment',
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
                              width: 150,
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
                                    'Furnace I',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  )),
                            ),
                            SizedBox(
                              height: 60,
                              width: 150,
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
                                    'Furnace II',
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

int activeIndexMain = 0;
int activeIndexSub = 0;

CarouselController buttonCarouselController = CarouselController();

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
                    //       fontSize: 17, ),
                    // ),
                    Stack(
                      children: [
                        SizedBox(
                          height: 320,
                          width: 370,
                          child:
                              Image.asset('assets/images/Machines/htfurn1.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(268, 127, 0, 0),
                          child: Text(
                            'data',
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(color: Colors.yellow, fontSize: 11),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(310, 127, 0, 0),
                          child: Text(
                            'data',
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(color: Colors.yellow, fontSize: 11),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(317, 190, 0, 0),
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
                            'Furnace 1',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w900),
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
                        padding: EdgeInsets.all(6),
                        child: Container(
                          child: Text(
                            'No Current History',
                            style: TextStyle(color: Colors.grey, fontSize: 20),
                          ),
                        ),
                      ),
                      Divider(
                        height: 1,
                        // thickness: 0.2,
                        // color: Colors.black,
                      ),
                      Padding(
                        padding: EdgeInsets.all(6),
                        child: Container(
                          child: Text(
                            'Pending',
                            style: TextStyle(
                                fontSize: 19, fontWeight: FontWeight.w900),
                          ),
                        ),
                      ),
                      Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          SingleChildScrollView(
                            child: CarouselSlider(
                                items: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(9, 9, 9, 0),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(6),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Heat No.',
                                                style: TextStyle(
                                                  fontSize: 17,
                                                ),
                                              ),
                                              Text(
                                                'M5050',
                                                style: TextStyle(
                                                  fontSize: 17,
                                                ),
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
                                                'PRC No.',
                                                style: TextStyle(
                                                  fontSize: 17,
                                                ),
                                              ),
                                              Text(
                                                'IB0998',
                                                style: TextStyle(
                                                  fontSize: 17,
                                                ),
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
                                                'Die No.',
                                                style: TextStyle(
                                                  fontSize: 17,
                                                ),
                                              ),
                                              Text(
                                                'M5050',
                                                style: TextStyle(
                                                  fontSize: 17,
                                                ),
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
                                                ),
                                              ),
                                              Text(
                                                '1',
                                                style: TextStyle(
                                                  fontSize: 17,
                                                ),
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
                                                ),
                                              ),
                                              Text(
                                                '4',
                                                style: TextStyle(
                                                  fontSize: 17,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(6),
                                          child: SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                              children: [
                                                Text(
                                                  'Issue Date & Time',
                                                  style: TextStyle(
                                                    fontSize: 17,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          30, 0, 0, 0),
                                                  child: Text(
                                                    '22-02-2023-10:54:AM',
                                                    style: TextStyle(
                                                      fontSize: 17,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(9, 9, 9, 0),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(6),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Heat No.',
                                                style: TextStyle(
                                                  fontSize: 17,
                                                ),
                                              ),
                                              Text(
                                                'M5051',
                                                style: TextStyle(
                                                  fontSize: 17,
                                                ),
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
                                                'PRC No.',
                                                style: TextStyle(
                                                  fontSize: 17,
                                                ),
                                              ),
                                              Text(
                                                'IB0998',
                                                style: TextStyle(
                                                  fontSize: 17,
                                                ),
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
                                                'Die No.',
                                                style: TextStyle(
                                                  fontSize: 17,
                                                ),
                                              ),
                                              Text(
                                                'M5050',
                                                style: TextStyle(
                                                  fontSize: 17,
                                                ),
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
                                                ),
                                              ),
                                              Text(
                                                '1',
                                                style: TextStyle(
                                                  fontSize: 17,
                                                ),
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
                                                ),
                                              ),
                                              Text(
                                                '4',
                                                style: TextStyle(
                                                  fontSize: 17,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(6),
                                          child: SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                              children: [
                                                Text(
                                                  'Issue Date & Time',
                                                  style: TextStyle(
                                                    fontSize: 17,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          30, 0, 0, 0),
                                                  child: Text(
                                                    '22-02-2023-10:54:AM',
                                                    style: TextStyle(
                                                      fontSize: 17,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                                carouselController: buttonCarouselController,
                                options: CarouselOptions(
                                  height: 250,
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
                                      activeIndexSub = index;
                                    });
                                  },
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: AnimatedSmoothIndicator(
                              activeIndex: activeIndexSub,
                              count: 2,
                            ),
                          ),
                        ],
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
                    //       fontSize: 17, ),
                    // ),
                    Stack(
                      children: [
                        SizedBox(
                          height: 320,
                          width: 370,
                          child:
                              Image.asset('assets/images/Machines/htfurn2.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(308, 110, 0, 0),
                          child: Text(
                            'data',
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(color: Colors.yellow, fontSize: 11),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(286, 161, 0, 0),
                          child: Text(
                            'data',
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(color: Colors.yellow, fontSize: 11),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(326, 161, 0, 0),
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
                            'Furnace 2',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w900),
                          ),
                          Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.green[900],
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
                        padding: const EdgeInsets.fromLTRB(6, 15, 6, 6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Heat Treatment Cycle No.',
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            ),
                            Text(
                              'M5050',
                              style: TextStyle(
                                fontSize: 17,
                              ),
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
                              'Heat No.',
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            ),
                            Text(
                              'M5050',
                              style: TextStyle(
                                fontSize: 17,
                              ),
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
                              'PRC No.',
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            ),
                            Text(
                              'IB0998',
                              style: TextStyle(
                                fontSize: 17,
                              ),
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
                              'Die No.',
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            ),
                            Text(
                              'M5050',
                              style: TextStyle(
                                fontSize: 17,
                              ),
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
                              'Grade',
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            ),
                            Text(
                              '1',
                              style: TextStyle(
                                fontSize: 17,
                              ),
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
                              'Quantity',
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            ),
                            Text(
                              '4',
                              style: TextStyle(
                                fontSize: 17,
                              ),
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
                              'Total Quantity',
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            ),
                            Text(
                              '22',
                              style: TextStyle(
                                fontSize: 17,
                              ),
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
                              'Total Weight',
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            ),
                            Text(
                              '22',
                              style: TextStyle(
                                fontSize: 17,
                              ),
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
                              'Start Date & Time',
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            ),
                            Text(
                              '22-02-2023-10:54:AM',
                              style: TextStyle(
                                fontSize: 17,
                              ),
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
                              'Supervisor',
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            ),
                            Text(
                              'JSK',
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        height: 1,
                        // thickness: 0.2,
                        // color: Colors.black,
                      ),
                      Padding(
                        padding: EdgeInsets.all(6),
                        child: Container(
                          child: Text(
                            'Pending',
                            style: TextStyle(
                                fontSize: 19, fontWeight: FontWeight.w900),
                          ),
                        ),
                      ),
                      Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          SingleChildScrollView(
                            child: CarouselSlider(
                                items: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(9, 9, 9, 0),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(6),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Heat No.',
                                                style: TextStyle(
                                                  fontSize: 17,
                                                ),
                                              ),
                                              Text(
                                                'M5050',
                                                style: TextStyle(
                                                  fontSize: 17,
                                                ),
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
                                                'PRC No.',
                                                style: TextStyle(
                                                  fontSize: 17,
                                                ),
                                              ),
                                              Text(
                                                'IB0998',
                                                style: TextStyle(
                                                  fontSize: 17,
                                                ),
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
                                                'Die No.',
                                                style: TextStyle(
                                                  fontSize: 17,
                                                ),
                                              ),
                                              Text(
                                                'M5050',
                                                style: TextStyle(
                                                  fontSize: 17,
                                                ),
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
                                                ),
                                              ),
                                              Text(
                                                '1',
                                                style: TextStyle(
                                                  fontSize: 17,
                                                ),
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
                                                ),
                                              ),
                                              Text(
                                                '4',
                                                style: TextStyle(
                                                  fontSize: 17,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(6),
                                          child: SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                              children: [
                                                Text(
                                                  'Issue Date & Time',
                                                  style: TextStyle(
                                                    fontSize: 17,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          30, 0, 0, 0),
                                                  child: Text(
                                                    '22-02-2023-10:54:AM',
                                                    style: TextStyle(
                                                      fontSize: 17,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(9, 9, 9, 0),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(6),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Heat No.',
                                                style: TextStyle(
                                                  fontSize: 17,
                                                ),
                                              ),
                                              Text(
                                                'M5051',
                                                style: TextStyle(
                                                  fontSize: 17,
                                                ),
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
                                                'PRC No.',
                                                style: TextStyle(
                                                  fontSize: 17,
                                                ),
                                              ),
                                              Text(
                                                'IB0998',
                                                style: TextStyle(
                                                  fontSize: 17,
                                                ),
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
                                                'Die No.',
                                                style: TextStyle(
                                                  fontSize: 17,
                                                ),
                                              ),
                                              Text(
                                                'M5050',
                                                style: TextStyle(
                                                  fontSize: 17,
                                                ),
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
                                                ),
                                              ),
                                              Text(
                                                '1',
                                                style: TextStyle(
                                                  fontSize: 17,
                                                ),
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
                                                ),
                                              ),
                                              Text(
                                                '4',
                                                style: TextStyle(
                                                  fontSize: 17,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(6),
                                          child: SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                              children: [
                                                Text(
                                                  'Issue Date & Time',
                                                  style: TextStyle(
                                                    fontSize: 17,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          30, 0, 0, 0),
                                                  child: Text(
                                                    '22-02-2023-10:54:AM',
                                                    style: TextStyle(
                                                      fontSize: 17,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                                carouselController: buttonCarouselController,
                                options: CarouselOptions(
                                  height: 250,
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
                                      activeIndexSub = index;
                                    });
                                  },
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: AnimatedSmoothIndicator(
                              activeIndex: activeIndexSub,
                              count: 2,
                            ),
                          ),
                        ],
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
