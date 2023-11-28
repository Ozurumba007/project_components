import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ComingSoon extends StatefulWidget {
  const ComingSoon({super.key});

  @override
  State<ComingSoon> createState() => _ComingSoonState();
}

class _ComingSoonState extends State<ComingSoon> {
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
    final double fem = MediaQuery.of(context).size.width / 500;
    final double ffem = fem * 0.97;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0 * ffem),
      child: Column(
        children: [
          Container(
            height: 50 * ffem,
            width: 50 * ffem,
            child: Image.asset('assets/pro.png'),
          ),
          SizedBox(height: 30 * ffem),
          Text(
            'WE\'RE STILL',
            style: TextStyle(
              fontSize: 25 * ffem,
              fontWeight: FontWeight.w500,
              color: Colors.grey.shade800,
            ),
          ),
          SizedBox(height: 10 * ffem),
          Center(
            child: Text(
              'Cooking Our Website.',
              style: TextStyle(
                fontSize: 45 * ffem,
                color: Colors.blue.shade900,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(height: 10 * ffem),
          Center(
            child: Text(
              'We going to launch our website\nVery Soon. Stay Tune.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 26 * ffem,
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: 40 * ffem),
          Material(
            elevation: 20 * ffem,
            borderRadius: BorderRadius.circular(40 * ffem),
            child: Container(
              height: ffem * 80,
              width: ffem * 320,
              padding: EdgeInsets.all(10 * ffem),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40 * ffem),
                color: Color(0xFF1E265C),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 46 * ffem,
                    width: 46 * ffem,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(23 * ffem),
                      color: Colors.white,
                    ),
                    child: Icon(
                      Icons.email_outlined,
                      color: Colors.blue.shade700,
                      weight: 10 * ffem,
                    ),
                  ),
                  Text(
                    'Notify Me',
                    style: TextStyle(color: Colors.white, fontSize: 20 * ffem),
                  ),
                  Icon(Icons.arrow_forward_ios, color: Colors.white),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // =============== D E S K T O P ================
  Widget DesktopView() {
    final double fem = MediaQuery.of(context).size.width / 1440;
    final double ffem = fem * 0.97;
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 50 * ffem,
              width: 50 * ffem,
              child: Image.asset('assets/pro.png'),
            ),
            SizedBox(height: 20 * ffem),
            Text(
              'WE\'RE STILL',
              style: TextStyle(
                  fontSize: 30 * ffem,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey.shade800),
            ),
            SizedBox(height: 10 * ffem),
            Text(
              'Cooking Our Website.',
              style: TextStyle(
                fontSize: 60 * ffem,
                color: Colors.blue.shade900,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 10 * ffem),
            Text(
              'We going to launch our website\nVery Soon. Stay Tune.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 36 * ffem,
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 40 * ffem),
            Material(
              elevation: 20 * ffem,
              borderRadius: BorderRadius.circular(40 * ffem),
              child: Container(
                height: ffem * 80,
                width: ffem * 320,
                padding: EdgeInsets.all(10 * ffem),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40 * ffem),
                  color: Color(0xFF1E265C),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 46 * ffem,
                      width: 46 * ffem,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(23 * ffem),
                        color: Colors.white,
                      ),
                      child: Icon(
                        Icons.email_outlined,
                        color: Colors.blue.shade700,
                        weight: 10 * ffem,
                      ),
                    ),
                    Text(
                      'Notify Me',
                      style:
                          TextStyle(color: Colors.white, fontSize: 20 * ffem),
                    ),
                    Icon(Icons.arrow_forward_ios, color: Colors.white),
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
