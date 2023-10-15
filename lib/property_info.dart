import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PropertyInfo extends StatelessWidget {
  const PropertyInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: Center(
        child: Container(
          height: 246,
          width: 610,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // House Amount For Purchase
                      Text(
                        '\$925,000',
                        style: GoogleFonts.outfit(
                          fontSize: 42,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF0B3558),
                        ),
                      ),

                      // House Location
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: Colors.green,
                          ),
                          SizedBox(width: 5),
                          Text(
                            '37 Frontier Ptwy, Toronto, Ontario\nM1B 4G6',
                            style: GoogleFonts.outfit(
                              color: Color(0xFF476788),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                      // directions + street view button
                      Row(
                        children: [
                          button(
                            icon: Icons.location_on,
                            text: 'Direction',
                            onTap: () {},
                          ),
                          const SizedBox(width: 10),
                          button(
                            icon: Icons.signpost,
                            text: 'Street View',
                            onTap: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // Utilities for the apartment
                Container(
                  width: 242,
                  height: 246,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey[100],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            houseInfo(
                              icon: Icons.bed_sharp,
                              text: '3 + 1 Bedroom',
                            ),
                            SizedBox(width: 40),
                            houseInfo(
                              icon: Icons.shower,
                              text: '3 Bathrooms',
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.black,
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            houseInfo(
                              icon: Icons.rectangle_outlined,
                              text: '1500 - 2500 sqft',
                            ),
                            SizedBox(width: 40),
                            houseInfo(
                              icon: Icons.house,
                              text: 'Detached',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // the direct button and street view button code

  Widget button({
    required IconData icon,
    required String text,
    required Function()? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 150,
        height: 46,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 2, color: Color(0xFFE1F2FF)),
            borderRadius: BorderRadius.circular(23),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Color(0xFF006BFF)),
            Text(
              text,
              style: GoogleFonts.outfit(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF006BFF)),
            ),
          ],
        ),
      ),
    );
  }

  // the house info code
  houseInfo({required IconData icon, required String text}) {
    return Column(
      children: [
        Icon(
          icon,
          size: 30,
        ),
        Text(
          text,
          style: GoogleFonts.outfit(
            fontWeight: FontWeight.w500,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
