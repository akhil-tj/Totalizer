import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DialogUtils {
  static DialogUtils _instance = new DialogUtils.internal();

  DialogUtils.internal();

  factory DialogUtils() => _instance;

  static void showCustomDialog(BuildContext context,
      {@required String? title,
      String okBtnText = "Ok",
      String cancelBtnText = "Cancel",
      @required Function? okBtnFunction}) {
    showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Result',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  '7.68',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 56,
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                SelectableText.rich(
                  TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text:
                            'This application is not registered under CUSAT. Please ',
                      ),
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
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                      primary: Colors.black,
                    ),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32, vertical: 12),
                      child: Text(
                        'Re-Calculate',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 6),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Report an Error',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }
}
