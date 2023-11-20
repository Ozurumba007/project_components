import 'dart:html' as html;

import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  final void Function() onBuyHeaderTap;

  const Header({required this.onBuyHeaderTap, super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    final double fem = MediaQuery.of(context).size.width / 1440;
    final double ffem = fem * 0.97;

    return Container(
      width: 1440 * fem,
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 12 * fem,
              horizontal: 40 * fem,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    // html.window.open(HomeScreen.routeName, '_self');
                  },
                  child: Image.asset(
                    'assets/realte_logo_dark_background.png',
                    width: 92 * fem,
                  ),
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {
                    widget.onBuyHeaderTap();
                  },
                  child: Text(
                    'Buy',
                    style: TextStyle(
                      fontSize: 21 * ffem,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
                  ),
                ),
                SizedBox(
                  width: 40 * fem,
                ),
                Text(
                  'Sell/Estimate',
                  style: TextStyle(
                    color: Theme.of(context)
                        .colorScheme
                        .onBackground
                        .withOpacity(0.5),
                    fontSize: 21 * ffem,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: 6 * fem,
                ),
                // const ComingSoonTag(),
                SizedBox(
                  width: 32 * fem,
                ),
                Text(
                  'Explore',
                  style: TextStyle(
                    color: Theme.of(context)
                        .colorScheme
                        .onBackground
                        .withOpacity(0.5),
                    fontSize: 21 * ffem,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: 6 * fem,
                ),
                // const ComingSoonTag(),
                const Spacer(),
                SizedBox(width: 92 * fem),
              ],
            ),
          ),
          Container(
            height: 1,
            width: 1440 * fem,
            color: const Color(0xFFE7EDF6),
          ),
        ],
      ),
    );
  }
}
