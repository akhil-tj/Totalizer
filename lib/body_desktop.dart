import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CalculatorBodyDesktop extends StatelessWidget {
  const CalculatorBodyDesktop({Key? key}) : super(key: key);

  @override
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
