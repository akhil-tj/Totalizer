import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class CalculatorBodyMobile extends StatelessWidget {
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
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.fromLTRB(16, 32, 16, 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SelectableText(
              'CUSAT CGPA  CALCULATOR',
              style: TextStyle(
                fontFamily: 'Montserrat',
                letterSpacing: 1.25,
                fontSize: 28,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(height: 20),
            SelectableText(
              'Provide the following details to calculate your CGPA',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 6),
            SelectableText(
              'The calculator is currently restricted to B.Tech, 2015 scheme. Support for other courses and schemes will be added soon.',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 16,
              ),
            ),
            SizedBox(height: 32),
            Row(
              children: [
                Expanded(child: Container()),
                Image.asset(
                  'images/illustration.png',
                  height: 300,
                  width: 300,
                ),
                Expanded(child: Container()),
              ],
            ),
            SizedBox(height: 32),
            SelectableText(
              'GPA of Each Semester',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 22),
            Form(
              key: _key,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SelectableText(
                    'Semester 1 (Required)*',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 6),
                  Container(
                    width: double.infinity,
                    child: FocusScope(
                      child: Focus(
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "GPA of semester 1 cannot be empty";
                            } else if (double.parse(value).isNegative) {
                              return "GPA should not be negative";
                            } else if (double.parse(value) < 5.0) {
                              return "GPA should not be less than 5.0";
                            } else if (value.length > 4) {
                              return "GPA can have only a max of 3 digits";
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
                          decoration: new InputDecoration(
                            hintText: 'Eg: 7.80',
                            border: new OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(6.0),
                              ),
                              borderSide: new BorderSide(
                                color: Colors.black,
                                width: 1.0,
                              ),
                            ),
                            isDense: true,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  SelectableText(
                    'Semester 2',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 6),
                  Container(
                    width: double.infinity,
                    child: FocusScope(
                      child: Focus(
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return null;
                            } else if (double.parse(value).isNegative) {
                              return "GPA should not be negative";
                            } else if (double.parse(value) < 5.0) {
                              return "GPA should not be less than 5.0";
                            } else if (value.length > 4) {
                              return "GPA can have only a max of 3 digits";
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
                          decoration: new InputDecoration(
                            hintText: 'Eg: 7.39',
                            border: new OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(6.0),
                              ),
                              borderSide: new BorderSide(
                                color: Colors.black,
                                width: 1.0,
                              ),
                            ),
                            isDense: true,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  SelectableText(
                    'Semester 3',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 6),
                  Container(
                    width: double.infinity,
                    child: FocusScope(
                      child: Focus(
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return null;
                            } else if (double.parse(value).isNegative) {
                              return "GPA should not be negative";
                            } else if (double.parse(value) < 5.0) {
                              return "GPA should not be less than 5.0";
                            } else if (value.length > 4) {
                              return "GPA can have only a max of 3 digits";
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
                          decoration: new InputDecoration(
                            hintText: 'Eg: 7.61',
                            border: new OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(6.0),
                              ),
                              borderSide: new BorderSide(
                                color: Colors.black,
                                width: 1.0,
                              ),
                            ),
                            isDense: true,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  SelectableText(
                    'Semester 4',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 6),
                  Container(
                    width: double.infinity,
                    child: FocusScope(
                      child: Focus(
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return null;
                            } else if (double.parse(value).isNegative) {
                              return "GPA should not be negative";
                            } else if (double.parse(value) < 5.0) {
                              return "GPA should not be less than 5.0";
                            } else if (value.length > 4) {
                              return "GPA can have only a max of 3 digits";
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
                          decoration: new InputDecoration(
                            hintText: 'Eg: 7.91',
                            border: new OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(6.0),
                              ),
                              borderSide: new BorderSide(
                                color: Colors.black,
                                width: 1.0,
                              ),
                            ),
                            isDense: true,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  SelectableText(
                    'Semester 5',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 6),
                  Container(
                    width: double.infinity,
                    child: FocusScope(
                      child: Focus(
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return null;
                            } else if (double.parse(value).isNegative) {
                              return "GPA should not be negative";
                            } else if (double.parse(value) < 5.0) {
                              return "GPA should not be less than 5.0";
                            } else if (value.length > 4) {
                              return "GPA can have only a max of 3 digits";
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
                          decoration: new InputDecoration(
                            hintText: 'Eg: 8.50',
                            border: new OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(6.0),
                              ),
                              borderSide: new BorderSide(
                                color: Colors.black,
                                width: 1.0,
                              ),
                            ),
                            isDense: true,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  SelectableText(
                    'Semester 6',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 6),
                  Container(
                    width: double.infinity,
                    child: FocusScope(
                      child: Focus(
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return null;
                            } else if (double.parse(value).isNegative) {
                              return "GPA should not be negative";
                            } else if (double.parse(value) < 5.0) {
                              return "GPA should not be less than 5.0";
                            } else if (value.length > 4) {
                              return "GPA can have only a max of 3 digits";
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
                          decoration: new InputDecoration(
                            hintText: 'Eg: 8.60',
                            border: new OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(6.0),
                              ),
                              borderSide: new BorderSide(
                                color: Colors.black,
                                width: 1.0,
                              ),
                            ),
                            isDense: true,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  SelectableText(
                    'Semester 7',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 6),
                  Container(
                    width: double.infinity,
                    child: FocusScope(
                      child: Focus(
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return null;
                            } else if (double.parse(value).isNegative) {
                              return "GPA should not be negative";
                            } else if (double.parse(value) < 5.0) {
                              return "GPA should not be less than 5.0";
                            } else if (value.length > 4) {
                              return "GPA can have only a max of 3 digits";
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
                          decoration: new InputDecoration(
                            hintText: 'Eg: 8.70',
                            border: new OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(6.0),
                              ),
                              borderSide: new BorderSide(
                                color: Colors.black,
                                width: 1.0,
                              ),
                            ),
                            isDense: true,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  SelectableText(
                    'Semester 8',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 6),
                  Container(
                    width: double.infinity,
                    child: FocusScope(
                      child: Focus(
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return null;
                            } else if (double.parse(value).isNegative) {
                              return "GPA should not be negative";
                            } else if (double.parse(value) < 5.0) {
                              return "GPA should not be less than 5.0";
                            } else if (value.length > 4) {
                              return "GPA can have only a max of 3 digits";
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
                          decoration: new InputDecoration(
                            hintText: 'Eg: 8.80',
                            border: new OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(6.0),
                              ),
                              borderSide: new BorderSide(
                                color: Colors.black,
                                width: 1.0,
                              ),
                            ),
                            isDense: true,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 32),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 76, vertical: 12),
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
            ),
            SizedBox(height: 72),
            SelectableText.rich(
              TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text:
                          'This application is not registered under CUSAT. Please '),
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
            SizedBox(height: 40),
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
    );
  }
}
