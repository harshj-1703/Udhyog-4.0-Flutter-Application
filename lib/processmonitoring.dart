import 'package:flutter/material.dart';

class ProcessMonitoring extends StatefulWidget {
  const ProcessMonitoring({super.key});

  @override
  State<ProcessMonitoring> createState() => _ProcessMonitoringState();
}

class _ProcessMonitoringState extends State<ProcessMonitoring> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(5, 20, 5, 0),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(20, 4, 20, 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/logo1.png',
                            height: 65,
                          ),
                          Text(
                            'Process Monitoring',
                            style: TextStyle(
                                color: Color.fromARGB(255, 32, 161, 0),
                                fontSize: 13.5,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      color: Colors.white,
                      height: 80,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(10, 4, 10, 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'ABC INDUSTRIES',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 21),
                          ),
                          Text(
                            'Unit 1 [Rajkot]',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 15),
                          ),
                        ],
                      ),
                      color: Color.fromARGB(255, 65, 194, 58),
                      height: 40,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(14, 12, 14, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          print('1');
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 48,
                          child: Image.asset(
                            'assets/images/d1.png',
                            height: 70,
                            width: 70,
                          ),
                        ),
                      ),
                      Text(
                        'Customer',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 68, 7),
                            fontSize: 13.5,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 48,
                          child: Image.asset(
                            'assets/images/d1.png',
                            height: 70,
                            width: 70,
                          ),
                        ),
                      ),
                      Text(
                        'Capacity\nAssesment',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 68, 7),
                            fontSize: 13.5,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 48,
                          child: Image.asset(
                            'assets/images/d1.png',
                            height: 70,
                            width: 70,
                          ),
                        ),
                      ),
                      Text(
                        'Process\nPlanning',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 68, 7),
                            fontSize: 13.5,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(14, 12, 14, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          print('1');
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 48,
                          child: Image.asset(
                            'assets/images/d1.png',
                            height: 70,
                            width: 70,
                          ),
                        ),
                      ),
                      Text(
                        'Pattern',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 68, 7),
                            fontSize: 13.5,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 48,
                          child: Image.asset(
                            'assets/images/d1.png',
                            height: 70,
                            width: 70,
                          ),
                        ),
                      ),
                      Text(
                        'Shell',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 68, 7),
                            fontSize: 13.5,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 48,
                          child: Image.asset(
                            'assets/images/d1.png',
                            height: 70,
                            width: 70,
                          ),
                        ),
                      ),
                      Text(
                        'Melting &\nPouring',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 68, 7),
                            fontSize: 13.5,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(14, 12, 14, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          print('1');
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 48,
                          child: Image.asset(
                            'assets/images/d1.png',
                            height: 70,
                            width: 70,
                          ),
                        ),
                      ),
                      Text(
                        'Finishing',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 68, 7),
                            fontSize: 13.5,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 48,
                          child: Image.asset(
                            'assets/images/d1.png',
                            height: 70,
                            width: 70,
                          ),
                        ),
                      ),
                      Text(
                        'Heat\nTreatment',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 68, 7),
                            fontSize: 13.5,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 48,
                          child: Image.asset(
                            'assets/images/d1.png',
                            height: 70,
                            width: 70,
                          ),
                        ),
                      ),
                      Text(
                        'Testing &\nInspection',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 68, 7),
                            fontSize: 13.5,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(14, 12, 14, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          print('1');
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 48,
                          child: Image.asset(
                            'assets/images/d1.png',
                            height: 70,
                            width: 70,
                          ),
                        ),
                      ),
                      Text(
                        'Machining',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 68, 7),
                            fontSize: 13.5,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 48,
                          child: Image.asset(
                            'assets/images/d1.png',
                            height: 70,
                            width: 70,
                          ),
                        ),
                      ),
                      Text(
                        'Dispatch',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 68, 7),
                            fontSize: 13.5,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 48,
                          child: Image.asset(
                            'assets/images/d1.png',
                            height: 70,
                            width: 70,
                          ),
                        ),
                      ),
                      Text(
                        'Purchase',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 68, 7),
                            fontSize: 13.5,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Text(
                'COPYRIGHT@2020',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
              ),
            ),
            Text(
              'UDHYOG 4.0 LLP',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
            ),
          ],
        ),
      ),
    );
  }
}
