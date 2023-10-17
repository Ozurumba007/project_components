// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class EstimatedBudget extends StatelessWidget {
  const EstimatedBudget({super.key});

  @override
  Widget build(BuildContext context) {
    double fem = MediaQuery.of(context).size.width / 1440;
    double ffem = fem * 0.97;
    final textColor = Color(0xFF0B3558);

    var propertyTaxes = Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'Property taxes ',
            style: TextStyle(
              fontSize: ffem * 16,
              color: Color(0xFF476788),
              fontWeight: FontWeight.w600,
            ),
          ),
          TextSpan(
            text: '(\$2,604.00 annually)',
            style: TextStyle(
              color: Color(0xFF476788),
              fontSize: ffem * 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
    return Center(
      child: Container(
        color: Colors.white,
        height: fem * 350,
        width: fem * 1360,
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Estimated Budget',
                      style: TextStyle(
                        fontSize: ffem * 42,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: fem * 30),
                Row(
                  children: [
                    textfieldContainer(
                      text: 'Selling Price / Your Offer',
                      hintText: '\$925,000',
                      height: fem * 46,
                      width: fem * 290,
                    ),
                    SizedBox(width: fem * 24),
                    textfieldContainer(
                      text: 'Down Payment',
                      hintText: '20%',
                      height: fem * 46,
                      width: fem * 160,
                      suffixIcon: Icon(
                        Icons.keyboard_arrow_down,
                        size: ffem * 30,
                      ),
                    ),
                    SizedBox(width: fem * 16),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Text(
                        '=',
                        style: TextStyle(fontSize: ffem * 45),
                      ),
                    ),
                    SizedBox(width: fem * 16),
                    textfieldContainer(
                      text: '',
                      height: fem * 46,
                      width: fem * 209,
                      hintText: '185,000.00',
                    ),
                  ],
                ),
                SizedBox(height: fem * 30),
                Row(
                  children: [
                    textfieldContainer(
                      text: 'Rate (%)',
                      hintText: '5',
                      height: fem * 46,
                      width: fem * 290,
                    ),
                    SizedBox(width: fem * 24),
                    textfieldContainer(
                      text: 'Amortization Period',
                      hintText: '30 years',
                      height: fem * 46,
                      width: fem * 160,
                    ),
                    SizedBox(width: fem * 24),
                    textfieldContainer(
                      text: 'Payment Frequency',
                      hintText: 'Monthly',
                      height: fem * 46,
                      width: fem * 209,
                      suffixIcon: Icon(
                        Icons.keyboard_arrow_down,
                        size: ffem * 30,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(width: fem * 40),
            Container(
              width: fem * 521,
              height: fem * 172,
              decoration: ShapeDecoration(
                color: Color(0xFFF7FAFF),
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0xFFE1F2FF)),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Principal and Interest',
                          style: TextStyle(
                            fontSize: ffem * 16,
                            color: textColor,
                          ),
                        ),
                        Text(
                          '\$ 3,972.48',
                          style: TextStyle(
                            fontSize: ffem * 16,
                            color: textColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        propertyTaxes,
                        Text(
                          '\$217',
                          style: TextStyle(
                            fontSize: ffem * 16,
                            color: textColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Period Cost',
                            style: TextStyle(
                              fontSize: ffem * 24,
                              fontWeight: FontWeight.w600,
                              color: textColor,
                            )),
                        Text(
                          '\$4,189.48',
                          style: TextStyle(
                            color: textColor,
                            fontSize: ffem * 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    )
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

class textfieldContainer extends StatelessWidget {
  const textfieldContainer({
    super.key,
    required this.width,
    required this.text,
    required this.height,
    this.suffixIcon,
    this.hintText,
  });

  final double width;
  final double height;
  final String text;
  final Widget? suffixIcon;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    double fem = MediaQuery.of(context).size.width / 1440;
    double ffem = fem * 0.97;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: ffem * 16),
        ),
        const SizedBox(height: 8),
        Container(
          width: width,
          height: height,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                width: 1,
                strokeAlign: BorderSide.strokeAlignCenter,
                color: Color(0xFFD4E0ED),
              ),
              borderRadius: BorderRadius.circular(ffem * 23),
            ),
            shadows: [
              const BoxShadow(
                color: Color(0x0C101828),
                blurRadius: 2,
                offset: Offset(0, 1),
                spreadRadius: 0,
              )
            ],
          ),
          child: TextField(
            style: TextStyle(
              fontSize: ffem * 20,
            ),
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                fontSize: ffem * 16,
              ),
              suffixIcon: suffixIcon,
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(ffem * 23),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(ffem * 23),
              ),
              fillColor: Colors.white,
              filled: true,
            ),
          ),
        ),
      ],
    );
  }
}
