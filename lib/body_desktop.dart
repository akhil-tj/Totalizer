import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class CalculatorBodyDesktop extends StatelessWidget {
  final _key = GlobalKey<FormState>();

  TextEditingController semester_1 = TextEditingController();
  TextEditingController semester_2 = TextEditingController();
  TextEditingController semester_3 = TextEditingController();
  TextEditingController semester_4 = TextEditingController();
  TextEditingController semester_5 = TextEditingController();
  TextEditingController semester_6 = TextEditingController();
  TextEditingController semester_7 = TextEditingController();
  TextEditingController semester_8 = TextEditingController();

  double s1 = 0, s2 = 0, s3 = 0, s4 = 0, s5 = 0, s6 = 0, s7 = 0, s8 = 0;

  @override
  // ignore: override_on_non_overriding_member
  void dispose() {
    semester_1.dispose();
    semester_2.dispose();
    semester_3.dispose();
    semester_4.dispose();
    semester_5.dispose();
    semester_6.dispose();
    semester_7.dispose();
    semester_8.dispose();
  }

  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(140, 40, 100, 32),
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
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(height: 24),
                SelectableText(
                  'Provide the following details to calculate your CGPA',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 20,
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
                SizedBox(height: 40),
                SelectableText(
                  'GPA of Each Semester(Eg: 7.14)',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 18),
                Form(
                  key: _key,
                  child: Column(
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
                                  child: TextFormField(
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "Semester 1 GPA cannot be empty";
                                      } else if (double.parse(value)
                                          .isNegative) {
                                        return "GPA should not be negative";
                                      } else if (double.parse(value) < 5.0) {
                                        return "GPA should not be less than 5.0";
                                      } else if (value.length > 5) {
                                        return "GPA should be not be greater than 4";
                                      } else
                                        return null;
                                    },
                                    controller: semester_1,
                                    cursorColor: Colors.black,
                                    textAlign: TextAlign.start,
                                    keyboardType: TextInputType.number,
                                    textInputAction: TextInputAction.next,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Montserrat',
                                      fontSize: 16,
                                    ),
                                    decoration: InputDecoration(
                                      hintText: 'Semester 1 (Required)*',
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
                                  child: TextFormField(
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return null;
                                      } else if (double.parse(value)
                                          .isNegative) {
                                        return "GPA should not be negative";
                                      } else if (double.parse(value) < 5.0) {
                                        return "GPA should not be less than 5.0";
                                      } else if (value.length > 5) {
                                        return "GPA should be not be greater than 4";
                                      } else
                                        return null;
                                    },
                                    controller: semester_2,
                                    cursorColor: Colors.black,
                                    textAlign: TextAlign.start,
                                    keyboardType: TextInputType.number,
                                    textInputAction: TextInputAction.next,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Montserrat',
                                      fontSize: 16,
                                    ),
                                    decoration: InputDecoration(
                                      hintText: 'Semester 2',
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
                                  child: TextFormField(
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return null;
                                      } else if (double.parse(value)
                                          .isNegative) {
                                        return "GPA should not be negative";
                                      } else if (double.parse(value) < 5.0) {
                                        return "GPA should not be less than 5.0";
                                      } else if (value.length > 5) {
                                        return "GPA should be not be greater than 4";
                                      } else
                                        return null;
                                    },
                                    controller: semester_3,
                                    cursorColor: Colors.black,
                                    textAlign: TextAlign.start,
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
                                  child: TextFormField(
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return null;
                                      } else if (double.parse(value)
                                          .isNegative) {
                                        return "GPA should not be negative";
                                      } else if (double.parse(value) < 5.0) {
                                        return "GPA should not be less than 5.0";
                                      } else if (value.length > 5) {
                                        return "GPA should be not be greater than 4";
                                      } else
                                        return null;
                                    },
                                    controller: semester_4,
                                    cursorColor: Colors.black,
                                    textAlign: TextAlign.start,
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
                                  child: TextFormField(
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return null;
                                      } else if (double.parse(value)
                                          .isNegative) {
                                        return "GPA should not be negative";
                                      } else if (double.parse(value) < 5.0) {
                                        return "GPA should not be less than 5.0";
                                      } else if (value.length > 5) {
                                        return "GPA should be not be greater than 4";
                                      } else
                                        return null;
                                    },
                                    controller: semester_5,
                                    cursorColor: Colors.black,
                                    textAlign: TextAlign.start,
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
                                  child: TextFormField(
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return null;
                                      } else if (double.parse(value)
                                          .isNegative) {
                                        return "GPA should not be negative";
                                      } else if (double.parse(value) < 5.0) {
                                        return "GPA should not be less than 5.0";
                                      } else if (value.length > 5) {
                                        return "GPA should be not be greater than 4";
                                      } else
                                        return null;
                                    },
                                    controller: semester_6,
                                    cursorColor: Colors.black,
                                    textAlign: TextAlign.start,
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
                                  child: TextFormField(
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return null;
                                      } else if (double.parse(value)
                                          .isNegative) {
                                        return "GPA should not be negative";
                                      } else if (double.parse(value) < 5.0) {
                                        return "GPA should not be less than 5.0";
                                      } else if (value.length > 5) {
                                        return "GPA should be not be greater than 4";
                                      } else
                                        return null;
                                    },
                                    controller: semester_7,
                                    cursorColor: Colors.black,
                                    textAlign: TextAlign.start,
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
                                  child: TextFormField(
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return null;
                                      } else if (double.parse(value)
                                          .isNegative) {
                                        return "GPA should not be negative";
                                      } else if (double.parse(value) < 5.0) {
                                        return "GPA should not be less than 5.0";
                                      } else if (value.length > 5) {
                                        return "GPA should be not be greater than 4";
                                      } else
                                        return null;
                                    },
                                    controller: semester_8,
                                    cursorColor: Colors.black,
                                    textAlign: TextAlign.start,
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
                ),
                SizedBox(height: 32),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    primary: Colors.black,
                  ),
                  onPressed: () {
                    int count = 8;
                    print('Result : ');
                    s1 = semester_1.text.isEmpty
                        ? 0
                        : double.parse(semester_1.text);
                    s2 = semester_2.text.isEmpty
                        ? 0
                        : double.parse(semester_2.text);
                    s3 = semester_3.text.isEmpty
                        ? 0
                        : double.parse(semester_3.text);
                    s4 = semester_4.text.isEmpty
                        ? 0
                        : double.parse(semester_4.text);
                    s5 = semester_5.text.isEmpty
                        ? 0
                        : double.parse(semester_5.text);
                    s6 = semester_6.text.isEmpty
                        ? 0
                        : double.parse(semester_6.text);
                    s7 = semester_7.text.isEmpty
                        ? 0
                        : double.parse(semester_7.text);
                    s8 = semester_8.text.isEmpty
                        ? 0
                        : double.parse(semester_8.text);

                    if (semester_1.text.isEmpty) {
                      count--;
                    }
                    if (semester_2.text.isEmpty) {
                      count--;
                    }
                    if (semester_3.text.isEmpty) {
                      count--;
                    }
                    if (semester_4.text.isEmpty) {
                      count--;
                    }
                    if (semester_5.text.isEmpty) {
                      count--;
                    }
                    if (semester_6.text.isEmpty) {
                      count--;
                    }
                    if (semester_7.text.isEmpty) {
                      count--;
                    }
                    if (semester_8.text.isEmpty) {
                      count--;
                    }
                    print((s1 * 22 +
                            s2 * 22 +
                            s3 * 22 +
                            s4 * 22 +
                            s5 * 22 +
                            s6 * 22 +
                            s7 * 22 +
                            s8 * 22) /
                        (count * 22));
                    if (_key.currentState!.validate()) {
                      print("Your data is submitted");
                    }
                  },
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
                        mouseCursor: MaterialStateMouseCursor.clickable,
                        recognizer: TapGestureRecognizer()
                          ..onTap = () async {
                            const url = 'https://google.com';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                            print('Tapped Verify the Equation');
                          },
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
                      TextSpan(text: ' Illustration(s) from '),
                      TextSpan(
                        mouseCursor: MaterialStateMouseCursor.clickable,
                        recognizer: TapGestureRecognizer()
                          ..onTap = () async {
                            const url = 'https://absurd.design';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                            print('Tapped absurd.design');
                          },
                        text: 'absurd.design',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontFamily: 'Montserrat',
                          fontStyle: FontStyle.italic,
                          fontSize: 16,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(height: 32),
                Row(
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Colors.black,
                      size: 20,
                    ),
                    SizedBox(width: 8),
                    SelectableText.rich(
                      TextSpan(
                        children: [
                          TextSpan(text: 'Designed & Developed by '),
                          TextSpan(
                            mouseCursor: MaterialStateMouseCursor.clickable,
                            recognizer: TapGestureRecognizer()
                              ..onTap = () async {
                                const url = 'https://akhiltj.codes';
                                if (await canLaunch(url)) {
                                  await launch(url);
                                } else {
                                  throw 'Could not launch $url';
                                }

                                print('Tapped Akhil T J');
                              },
                            text: 'Akhil T J',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontFamily: 'Montserrat',
                              fontStyle: FontStyle.italic,
                              fontSize: 16,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
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
          //SizedBox(width: 64),
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
