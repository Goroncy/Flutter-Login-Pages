import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:side_login/globals.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var colorSignIn = colorWhite;
  var textColorSignIn = colorDark;

  var colorSignUp = colorWhite;
  var textColorSignUp = colorDark;

  var fontWeightForgot = FontWeight.normal;
  var fontColorForgot = colorWhite;

  double widthForgot = 188;

  bool? checkboxValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: colorDark,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: MediaQuery.of(context).size.height / 1.3,
                width: MediaQuery.of(context).size.width / 3,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(44, 44, 44, 1),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15)),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 10,
                    ),
                    Text(
                      'Welcome to the login screen!',
                      style: TextStyle(
                          color: colorWhite,
                          decoration: null,
                          fontSize: MediaQuery.of(context).size.height / 44,
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 80,
                    ),
                    Text(
                      'Please insert your details',
                      style: TextStyle(
                        color: colorWhiteOpacity70,
                        decoration: null,
                        fontSize: MediaQuery.of(context).size.height / 54,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 12,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 5,
                      child: TextField(
                        style: const TextStyle(
                          color: colorWhite,
                        ),
                        cursorColor: colorWhite,
                        decoration: InputDecoration(
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: colorWhite,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusColor: colorWhite,
                          labelText: 'Username',
                          labelStyle: TextStyle(
                            color: colorWhite,
                            fontSize: MediaQuery.of(context).size.height / 60,
                            fontWeight: FontWeight.normal,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 25,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 5,
                      child: TextField(
                        style: const TextStyle(color: colorWhite),
                        cursorColor: colorWhite,
                        decoration: InputDecoration(
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: colorWhite),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusColor: colorWhite,
                          labelText: 'Password',
                          labelStyle: TextStyle(
                              color: colorWhite,
                              fontSize: MediaQuery.of(context).size.height / 60,
                              fontWeight: FontWeight.normal,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 100,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 16,
                        ),
                        Wrap(
                          direction: Axis.horizontal,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          spacing: MediaQuery.of(context).size.width / 5000,
                          children: [
                            Checkbox(
                              value: checkboxValue,
                              activeColor: colorWhite,
                              checkColor: colorDark,
                              splashRadius: 0,
                              onChanged: (checked) {
                                setState(() {
                                  checkboxValue = checked;
                                });
                              },
                            ),
                            const Text(
                              'Remember',
                              style: TextStyle(color: colorWhite),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 10.5,
                        ),
                        MouseRegion(
                          onHover: (event) {
                            setState(() {
                              fontColorForgot = colorGreen;
                              fontWeightForgot = FontWeight.bold;
                              widthForgot = 181;
                            });
                          },
                          onExit: (event) {
                            setState(() {
                              fontColorForgot = colorWhite;
                              fontWeightForgot = FontWeight.normal;
                              widthForgot = 188;
                            });
                          },
                          child: InkWell(
                            child: Text(
                              'Forgot Password',
                              style: TextStyle(
                                color: fontColorForgot,
                                fontWeight: fontWeightForgot,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 20,
                    ),
                    InkWell(
                      onHover: (isHovering) => {
                        setState(() {
                          if (isHovering) {
                            colorSignIn = colorGreen;
                            textColorSignIn = colorWhite;
                          } else {
                            colorSignIn = colorWhite;
                            textColorSignIn = colorDark;
                          }
                        })
                      },
                      onTap: () {},
                      child: Container(
                        height: MediaQuery.of(context).size.height / 20,
                        width: MediaQuery.of(context).size.width / 8.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: colorSignIn,
                        ),
                        child: Center(
                            child: Text(
                          'Sign In',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.height / 45,
                              color: textColorSignIn),
                        )),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 35,
                    ),
                    InkWell(
                      onHover: (isHovering) => {
                        setState(() {
                          if (isHovering) {
                            colorSignUp = colorGreen;
                            textColorSignUp = colorWhite;
                          } else {
                            colorSignUp = colorWhite;
                            textColorSignUp = colorDark;
                          }
                        })
                      },
                      onTap: () {},
                      child: Container(
                        height: MediaQuery.of(context).size.height / 20,
                        width: MediaQuery.of(context).size.width / 8.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: colorSignUp,
                        ),
                        child: Center(
                            child: Text(
                          'Sign Up',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.height / 45,
                              color: textColorSignUp),
                        )),
                      ),
                    ),
                  ],
                )),
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  bottomRight: Radius.circular(15)),
              child: Image.asset(
                height: MediaQuery.of(context).size.height / 1.3,
                width: MediaQuery.of(context).size.width / 3,
                'assets/sideLogin.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
