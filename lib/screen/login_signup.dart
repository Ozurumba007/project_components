import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../widgets/text_field_container.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final double fem = MediaQuery.of(context).size.width / 1440;
    final double ffem = fem * 0.97;

    return ScreenTypeLayout.builder(
      mobile: (context) => MobileView(),
      desktop: (context) => DesktopView(),
    );
  }

  // =============== M O B I L E ================

  Widget MobileView() {
    final double fem = MediaQuery.of(context).size.width / 1440;
    final double ffem = fem * 0.97;
    return Container(
      // height: fem * 803,
      // width: fem * 400,
      margin: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          SizedBox(height: ffem * 10),
          // wave image
          Image.asset('assets/wave.png'),
          SizedBox(height: ffem * 10),
          Text(
            'Hey There',
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.w600,
            ),
          ),

          SizedBox(height: ffem * 10),

          Text(
            'Create Your Account',
            style: TextStyle(
              fontSize: ffem * 32,
              fontFamily: 'Outfit',
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: ffem * 10),
          Text(
            'Let\'s make this journey of finding your dream home a remarkable success! Happy house hunting!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: ffem * 15,
            ),
          ),
          SizedBox(height: ffem * 20),

          // other means to sign up

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: ffem * 100,
                child: Container(
                  height: ffem * 25,
                  width: ffem * 25,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        ('assets/google.png'),
                      ),
                      // fit: BoxFit.none,
                    ),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.black),
                    // color: Colors.white,
                  ),
                ),
              ),
              Container(
                width: ffem * 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.black),
                ),
                child: Container(
                  height: ffem * 25,
                  width: ffem * 25,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        ('assets/facebook.png'),
                      ),
                      // fit: BoxFit.none,
                    ),

                    // color: Colors.white,
                  ),
                ),
              ),
              Container(
                width: ffem * 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.black),
                ),
                child: Container(
                  height: ffem * 25,
                  width: ffem * 25,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        ('assets/apple.png'),
                      ),
                      // fit: BoxFit.none,
                    ),
                    // borderRadius: BorderRadius.circular(15),
                    // border: Border.all(color: Colors.black),
                    // color: Colors.white,
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: ffem * 20),

          // =====================

          // Or Divider
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: ffem * 150,
                height: ffem * 1,
                child: Divider(),
              ),
              Text('OR'),
              Container(
                width: ffem * 150,
                height: ffem * 1,
                child: Divider(),
              ),
            ],
          ),
          SizedBox(height: ffem * 20),
          Row(
            children: [
              // First Name Textfield
              Expanded(
                  child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'First Name*',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: ffem * 5,
                    ),
                    Container(
                      child: TextField(
                        style: TextStyle(
                          fontSize: ffem * 20,
                        ),
                        decoration: InputDecoration(
                          hintText: 'First Name',
                          hintStyle: TextStyle(
                            fontSize: ffem * 16,
                          ),
                          // suffixIcon: Icons.email,
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(ffem * 23),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(ffem * 23),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                  ],
                ),
              )),

              SizedBox(width: ffem * 10),
              // Last Name Textfield
              Expanded(
                  child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Last Name*',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: ffem * 5,
                    ),
                    Container(
                        child: TextField(
                      style: TextStyle(
                        fontSize: ffem * 20,
                      ),
                      decoration: InputDecoration(
                        hintText: 'LastName',
                        hintStyle: TextStyle(
                          fontSize: ffem * 16,
                        ),
                        // suffixIcon: Icons.email,
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(ffem * 23),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(ffem * 23),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                      ),
                    )),
                  ],
                ),
              )),
            ],
          ),
          SizedBox(height: ffem * 20),
          // Email Textfield
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Email*',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: ffem * 5,
              ),
              TextField(
                style: TextStyle(
                  fontSize: ffem * 20,
                ),
                decoration: InputDecoration(
                  hintText: 'someone@example.com',
                  // label: Text('Email Address'),
                  floatingLabelStyle: TextStyle(fontSize: 20),
                  hintStyle: TextStyle(
                    fontSize: ffem * 16,
                  ),
                  // suffixIcon: Icons.email,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(ffem * 23),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(ffem * 23),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
              Text(
                '     We\'ll send a verification code to this email to validate your account',
                style: TextStyle(color: Colors.grey, fontSize: ffem * 12),
              ),
            ],
          ),

          SizedBox(height: ffem * 20),
          // Password Textfield
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Password*',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: ffem * 5,
              ),
              TextField(
                style: TextStyle(
                  fontSize: ffem * 20,
                ),
                decoration: InputDecoration(
                  hintText: '*******',
                  suffixIcon: Icon(Icons.remove_red_eye),
                  hintStyle: TextStyle(
                    fontSize: ffem * 16,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(ffem * 23),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(ffem * 23),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
            ],
          ),
          SizedBox(height: ffem * 20),

          Row(
            children: [
              Icon(Icons.check_box_outline_blank_outlined),
              SizedBox(width: ffem * 5),
              SizedBox(
                child: Text(
                  'Yes, email me tips, newsletters, Market Pulse, and real estate and\nneighbourhood insights. I may unsubscribe any time.',
                  style: TextStyle(
                    color: Color(0xFF476788),
                    fontSize: ffem * 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: ffem * 20),
          // create account button

          Container(
            height: 40,
            width: 400,
            decoration: ShapeDecoration(
              color: Color(0xFF006BFF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(23),
              ),
            ),
            child: Center(
                child: Text('Create an Account',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: ffem * 14,
                    ))),
          ),

          SizedBox(height: 20),

          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'By joining, you agree to the ',
                  style: TextStyle(
                    color: Color(0xFF476788),
                    fontSize: ffem * 12,
                    fontWeight: FontWeight.w400,
                    height: 0.12,
                  ),
                ),
                TextSpan(
                  text: 'Terms',
                  style: TextStyle(
                    color: Color(0xFF006BFF),
                    fontSize: ffem * 12,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.underline,
                    height: 0.12,
                  ),
                ),
                TextSpan(
                  text: ' and ',
                  style: TextStyle(
                    color: Color(0xFF476788),
                    fontSize: ffem * 12,
                    fontWeight: FontWeight.w400,
                    height: 0.12,
                  ),
                ),
                TextSpan(
                  text: 'Privacy Policy',
                  style: TextStyle(
                    color: Color(0xFF006BFF),
                    fontSize: ffem * 12,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.underline,
                    height: 0.12,
                  ),
                ),
                TextSpan(
                  text: '.',
                  style: TextStyle(
                    color: Color(0xFF476788),
                    fontSize: ffem * 12,
                    fontWeight: FontWeight.w400,
                    height: 0.12,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  // =============== D E S K T O P ================

  Widget DesktopView() {
    final double fem = MediaQuery.of(context).size.width / 1440;
    final double ffem = fem * 0.97;

    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //
                Container(
                  height: fem * 803,
                  width: fem * 400,
                  margin: EdgeInsets.only(left: 60),
                  child: Column(
                    children: [
                      SizedBox(height: ffem * 10),
                      // wave image
                      Image.asset('assets/wave.png'),
                      SizedBox(height: ffem * 10),
                      Text(
                        'Hey There',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      SizedBox(height: ffem * 10),

                      Text(
                        'Create Your Account',
                        style: TextStyle(
                          fontSize: 32,
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: ffem * 10),
                      Text(
                        'Let\'s make this journey of finding your dream home a remarkable success! Happy house hunting!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: ffem * 20),

                      // other means to sign up ( Google + Facebook s)

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: ffem * 100,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.black),
                              // color: Colors.white,
                            ),
                            child: Container(
                              height: ffem * 25,
                              width: ffem * 25,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    ('assets/google.png'),
                                  ),
                                  // fit: BoxFit.none,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: ffem * 100,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.black),
                            ),
                            child: Container(
                              height: ffem * 25,
                              width: ffem * 25,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    ('assets/facebook.png'),
                                  ),
                                  // fit: BoxFit.none,
                                ),

                                // color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: ffem * 20),

                      // =====================

                      // Or Divider
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: ffem * 160,
                            height: ffem * 1,
                            child: Divider(
                              color: Colors.black,
                            ),
                          ),
                          Text('OR'),
                          Container(
                            width: ffem * 160,
                            height: ffem * 1,
                            child: Divider(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: ffem * 20),
                      Row(
                        children: [
                          // First Name Textfield
                          Expanded(
                              child: TextFieldContainer(
                            text: 'First Name*',
                            hintText: 'First Name',
                            isReadOnly: false,
                            withTextHeader: true,
                            fillColor: Colors.white,
                            controller: TextEditingController(),
                            width: ffem * 200,
                          )),

                          SizedBox(width: ffem * 10),
                          // Last Name Textfield
                          Expanded(
                            child: TextFieldContainer(
                              text: 'Last Name*',
                              hintText: 'Last Name',
                              isReadOnly: false,
                              withTextHeader: true,
                              fillColor: Colors.white,
                              controller: TextEditingController(),
                              width: ffem * 200,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: ffem * 20),
                      // Email Textfield
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFieldContainer(
                            text: 'Email*',
                            hintText: 'someone@example.com',
                            isReadOnly: false,
                            withTextHeader: true,
                            fillColor: Colors.white,
                            controller: TextEditingController(),
                            width: ffem * 400,
                          ),
                          Text(
                            '     We\'ll send a verification code to this email to validate your account',
                            style: TextStyle(
                                color: Colors.grey, fontSize: ffem * 12),
                          ),
                        ],
                      ),

                      SizedBox(height: ffem * 20),

                      // Password Textfield

                      TextFieldContainer(
                        text: 'Password*',
                        hintText: '********',
                        isReadOnly: false,
                        suffixIcon: Icon(Icons.remove_red_eye_outlined),
                        withTextHeader: true,
                        fillColor: Colors.white,
                        controller: TextEditingController(),
                        width: ffem * 400,
                      ),
                      SizedBox(height: 20),

                      Row(
                        children: [
                          Icon(Icons.check_box_outline_blank_outlined),
                          SizedBox(width: 5),
                          SizedBox(
                            child: Text(
                              'Yes, email me tips, newsletters, Market Pulse, and real estate and\nneighbourhood insights. I may unsubscribe any time.',
                              style: TextStyle(
                                color: Color(0xFF476788),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 20),
                      // create account button

                      Container(
                        height: ffem * 40,
                        width: ffem * 400,
                        decoration: ShapeDecoration(
                          color: Color(0xFF006BFF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(23),
                          ),
                        ),
                        child: Center(
                            child: Text('Create an Account',
                                style: TextStyle(color: Colors.white))),
                      ),

                      SizedBox(height: 20),

                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'By joining, you agree to the ',
                              style: TextStyle(
                                color: Color(0xFF476788),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                height: 0.12,
                              ),
                            ),
                            TextSpan(
                              text: 'Terms',
                              style: TextStyle(
                                color: Color(0xFF006BFF),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.underline,
                                height: 0.12,
                              ),
                            ),
                            TextSpan(
                              text: ' and ',
                              style: TextStyle(
                                color: Color(0xFF476788),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                height: 0.12,
                              ),
                            ),
                            TextSpan(
                              text: 'Privacy Policy',
                              style: TextStyle(
                                color: Color(0xFF006BFF),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.underline,
                                height: 0.12,
                              ),
                            ),
                            TextSpan(
                              text: '.',
                              style: TextStyle(
                                color: Color(0xFF476788),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                height: 0.12,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                // image column
                Container(
                  padding: const EdgeInsets.only(top: 285, left: 685),
                  height: 554 * fem,
                  width: 743 * fem,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/sign_up.png'),
                      // fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
