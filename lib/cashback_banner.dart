import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CashBackBanner extends StatelessWidget {
  const CashBackBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 192,
          width: 521,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment(0.00, -1.00),
              end: Alignment(0, 1),
              colors: [
                Color.fromRGBO(11, 53, 88, 1),
                Color.fromRGBO(10, 37, 64, 1),
              ],
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Buy with Realte and save',
                  style: GoogleFonts.outfit(
                    color: Color(0xFFB8DCFF),
                    fontSize: 21,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    cashBackMoney(),
                    Row(
                      children: [
                        Text(
                          'Learn more',
                          style: GoogleFonts.outfit(
                            color: Color(0xFF006BFF),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(width: 5),
                        Icon(
                          Icons.arrow_forward,
                          color: Color(0xFF006BFF),
                        ),
                      ],
                    ),
                  ],
                ),
                cashBack_Policy()
              ],
            ),
          ),
        ),
      ),
    );
  }

  SizedBox cashBack_Policy() {
    return SizedBox(
      width: 473,
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text:
                  '*Cashback vary by sale price, market and are subject to a minimum commission. Please get in touch and  read the Cashback ',
              style: GoogleFonts.outfit(
                color: Color(0xFF68819B),
                fontSize: 10,
                fontWeight: FontWeight.w400,
              ),
            ),
            TextSpan(
              text: 'Terms and Conditions',
              style: GoogleFonts.outfit(
                color: Color(0xFF006BFF),
                fontSize: 10,
                fontWeight: FontWeight.w400,
                decoration: TextDecoration.underline,
              ),
            ),
            const TextSpan(
              text: ' to learn more about it.',
              style: TextStyle(
                color: Color(0xFF68819B),
                fontSize: 10,
                fontFamily: 'Outfit',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  cashBackMoney() {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: '\$13,875',
            style: GoogleFonts.outfit(
              color: Color(0xFF00BE6B),
              fontSize: 42,
              fontWeight: FontWeight.w700,
            ),
          ),
          TextSpan(
            text: ' ',
            style: TextStyle(
              fontSize: 42,
            ),
          ),
          TextSpan(
            text: 'as Cashback* ',
            style: GoogleFonts.outfit(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          TextSpan(
            text: '|',
            style: TextStyle(
              color: Color(0xFF68819B),
              fontSize: 42,
              fontWeight: FontWeight.w100,
            ),
          ),
        ],
      ),
    );
  }
}
