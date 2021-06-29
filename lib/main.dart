import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: CalculatorBody(),
        ),
      ),
    );
  }
}

class CalculatorBody extends StatelessWidget {
  const CalculatorBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(140, 40, 130, 32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SelectableText(
                  'CUSAT CGPA  CALCULATOR',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 28,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 24),
                SelectableText(
                  'Provide the following details to calculate your CGPA',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 4),
                SelectableText(
                  'The calculator is currently restricted to B.Tech, 2015 scheme. Support for other courses and schemes will be added soon.',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 36),
                SelectableText(
                  'GPA of Each Semester',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 20),
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 260,
                          height: 48,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black54),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                            ),
                            child: FocusScope(
                              child: Focus(
                                child: TextField(
                                  cursorColor: Colors.black,
                                  textAlign: TextAlign.start,
                                  // controller: widget.controller,
                                  keyboardType: TextInputType.number,
                                  textInputAction: TextInputAction.next,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Montserrat',
                                    fontSize: 16,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: 'Semester 1 (Eg: 7.14)*',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 80),
                        Container(
                          width: 260,
                          height: 48,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black54),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                            ),
                            child: FocusScope(
                              child: Focus(
                                child: TextField(
                                  cursorColor: Colors.black,
                                  textAlign: TextAlign.start,
                                  // controller: widget.controller,
                                  keyboardType: TextInputType.number,
                                  textInputAction: TextInputAction.next,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Montserrat',
                                    fontSize: 16,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: 'Semester 2 (Eg: 8.465)*',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Container(
                          width: 260,
                          height: 48,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black54),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                            ),
                            child: FocusScope(
                              child: Focus(
                                child: TextField(
                                  cursorColor: Colors.black,
                                  textAlign: TextAlign.start,
                                  // controller: widget.controller,
                                  keyboardType: TextInputType.number,
                                  textInputAction: TextInputAction.next,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Montserrat',
                                    fontSize: 16,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: 'Semester 3',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 80),
                        Container(
                          width: 260,
                          height: 48,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black54),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                            ),
                            child: FocusScope(
                              child: Focus(
                                child: TextField(
                                  cursorColor: Colors.black,
                                  textAlign: TextAlign.start,
                                  // controller: widget.controller,
                                  keyboardType: TextInputType.number,
                                  textInputAction: TextInputAction.next,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Montserrat',
                                    fontSize: 16,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: 'Semester 4',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Container(
                          width: 260,
                          height: 48,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black54),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                            ),
                            child: FocusScope(
                              child: Focus(
                                child: TextField(
                                  cursorColor: Colors.black,
                                  textAlign: TextAlign.start,
                                  // controller: widget.controller,
                                  keyboardType: TextInputType.number,
                                  textInputAction: TextInputAction.next,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Montserrat',
                                    fontSize: 16,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: 'Semester 5',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 80),
                        Container(
                          width: 260,
                          height: 48,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black54),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                            ),
                            child: FocusScope(
                              child: Focus(
                                child: TextField(
                                  cursorColor: Colors.black,
                                  textAlign: TextAlign.start,
                                  // controller: widget.controller,
                                  keyboardType: TextInputType.number,
                                  textInputAction: TextInputAction.next,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Montserrat',
                                    fontSize: 16,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: 'Semester 6',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Container(
                          width: 260,
                          height: 48,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black54),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                            ),
                            child: FocusScope(
                              child: Focus(
                                child: TextField(
                                  cursorColor: Colors.black,
                                  textAlign: TextAlign.start,
                                  // controller: widget.controller,
                                  keyboardType: TextInputType.number,
                                  textInputAction: TextInputAction.next,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Montserrat',
                                    fontSize: 16,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: 'Semester 7',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 80),
                        Container(
                          width: 260,
                          height: 48,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black54),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                            ),
                            child: FocusScope(
                              child: Focus(
                                child: TextField(
                                  cursorColor: Colors.black,
                                  textAlign: TextAlign.start,
                                  // controller: widget.controller,
                                  keyboardType: TextInputType.number,
                                  textInputAction: TextInputAction.next,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Montserrat',
                                    fontSize: 16,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: 'Semester 8',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 32),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    primary: Colors.black,
                  ),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 76, vertical: 12),
                    child: Text(
                      'Calculate',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 72),
                SelectableText.rich(
                  TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text:
                              'This application is not officially povided by CUSAT. Please '),
                      TextSpan(
                        text: 'verify the equation',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontFamily: 'Montserrat',
                          fontStyle: FontStyle.italic,
                          fontSize: 16,
                          color: Colors.black87,
                        ),
                      ),
                      TextSpan(
                          text:
                              ' used for calculation before blindly trusting the developer.'),
                    ],
                  ),
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Colors.black,
                      size: 20,
                    ),
                    SizedBox(width: 8),
                    SelectableText.rich(
                      TextSpan(children: [
                        TextSpan(text: 'Designed & Developed by '),
                        TextSpan(
                          text: 'Akhil T J',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontFamily: 'Montserrat',
                            fontStyle: FontStyle.italic,
                            fontSize: 16,
                            color: Colors.black87,
                          ),
                        ),
                      ]),
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(width: 64),
          Image.asset(
            'images/illustration.png',
            height: 500,
            width: 500,
          ),
        ],
      ),
    );
  }
}
