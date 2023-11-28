import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../widgets/text_field_container.dart';

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
    final form = GlobalKey<FormState>();
    bool isValid = false;

    void saveForm() {
      setState(() {
        isValid = form.currentState!.validate();
      });
    }

    final double fem = MediaQuery.of(context).size.width / 600;
    final double ffem = fem * 0.97;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0 * ffem),
      child: Column(
        children: [
          // ( Thumbs up ) Image Container
          Container(
            height: 50 * ffem,
            width: 50 * ffem,
            child: Image.asset('assets/investment.png'),
          ),
          SizedBox(height: 8 * ffem),

          // Heading of the design
          Text(
            'WE\'RE STILL',
            style: TextStyle(
              fontSize: 25 * ffem,
              fontWeight: FontWeight.w500,
              color: Colors.grey.shade800,
            ),
          ),
          SizedBox(height: 5 * ffem),

          // Subheading of the design

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
          SizedBox(height: 5 * ffem),

          // Message Content

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
          SizedBox(height: 10 * ffem),

          TextFieldContainer(
            text: '',
            hintText: 'Email',
            isReadOnly: false,
            withTextHeader: true,
            fillColor: Colors.white,
            controller: TextEditingController(),
            width: ffem * 300,
            formKey: form,
            onValidate: (value) {
              // Check if this field is empty
              if (value == null || value.isEmpty) {
                return 'This field is required';
              }

              // using regular expression
              if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                return "Please enter a valid email address";
              }

              // the email is valid
              return null;
            },
          ),

          SizedBox(height: 15 * ffem),
          // Container with Elevations
          InkWell(
            onTap: saveForm,
            child: Material(
              elevation: 20 * ffem,
              borderRadius: BorderRadius.circular(40 * ffem),
              child: Container(
                height: ffem * 50,
                width: ffem * 270,
                padding: EdgeInsets.all(10 * ffem),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40 * ffem),
                  color: Color.fromARGB(255, 62, 78, 182),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 36 * ffem,
                      width: 36 * ffem,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13 * ffem),
                        color: Colors.white,
                      ),
                      child: Icon(
                        Icons.email_outlined,
                        color: Colors.blue.shade700,
                        size: 20 * ffem,
                        weight: 10 * ffem,
                      ),
                    ),
                    // ( Notify me ) text
                    Text(
                      'Notify Me',
                      style:
                          TextStyle(color: Colors.white, fontSize: 18 * ffem),
                    ),
                    Icon(Icons.arrow_forward_ios,
                        color: Colors.white, size: 18 * ffem),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10 * ffem),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Material(
                elevation: 20 * ffem,
                borderRadius: BorderRadius.circular(40 * ffem),
                child: Container(
                  height: 50 * ffem,
                  width: 50 * ffem,
                  padding: EdgeInsets.all(8 * ffem),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25 * ffem),
                    color: Colors.grey[100],
                  ),
                  child: Container(
                    child: Image.asset('assets/facebook.png'),
                  ),
                ),
              ),
              SizedBox(width: 10 * ffem),
              Material(
                elevation: 20 * ffem,
                borderRadius: BorderRadius.circular(40 * ffem),
                child: Container(
                  height: 50 * ffem,
                  width: 50 * ffem,
                  padding: EdgeInsets.all(10 * ffem),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25 * ffem),
                    color: Colors.grey[100],
                  ),
                  child: Container(
                    child: Image.asset('assets/linkedin.png'),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // =============== D E S K T O P ================
  Widget DesktopView() {
    final form = GlobalKey<FormState>();
    bool isValid = false;

    final double fem = MediaQuery.of(context).size.width / 1440;
    final double ffem = fem * 0.97;
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            // ( Thumbs up ) Image Container

            Container(
              height: 50 * ffem,
              width: 50 * ffem,
              child: Image.asset('assets/investment.png'),
            ),
            SizedBox(height: 20 * ffem),

            // Heading of the design

            Text(
              'WE\'RE STILL',
              style: TextStyle(
                  fontSize: 30 * ffem,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey.shade800),
            ),
            SizedBox(height: 10 * ffem),

            // Subheading of the design

            Text(
              'Cooking Our Website.',
              style: TextStyle(
                fontSize: 60 * ffem,
                color: Colors.blue.shade900,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 10 * ffem),

            // Message Content

            Text(
              'We going to launch our website\nVery Soon. Stay Tune.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 36 * ffem,
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              ),
            ),

            // ( Notify me ) text

            TextFieldContainer(
              text: '',
              hintText: 'Email',
              formKey: form,
              isReadOnly: false,
              withTextHeader: true,
              fillColor: Colors.white,
              controller: TextEditingController(),
              width: ffem * 300,
              onValidate: (value) {
                // Check if this field is empty
                if (value == null || value.isEmpty) {
                  return 'This field is required';
                }

                // using regular expression
                if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                  return "Please enter a valid email address";
                }

                // the email is valid
                return null;
              },
            ),

            SizedBox(height: 30 * ffem),

            Material(
              elevation: 20 * ffem,
              borderRadius: BorderRadius.circular(40 * ffem),
              child: Container(
                height: ffem * 50,
                width: ffem * 270,
                padding: EdgeInsets.all(10 * ffem),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40 * ffem),
                  color: Color.fromARGB(255, 62, 78, 182),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 36 * ffem,
                      width: 36 * ffem,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13 * ffem),
                        color: Colors.white,
                      ),
                      child: Icon(Icons.email_outlined,
                          color: Colors.blue.shade700,
                          weight: 10 * ffem,
                          size: 18 * ffem),
                    ),
                    Text(
                      'Notify Me',
                      style:
                          TextStyle(color: Colors.white, fontSize: 18 * ffem),
                    ),
                    Icon(Icons.arrow_forward_ios,
                        color: Colors.white, size: 18 * ffem),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40 * ffem),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Material(
                  elevation: 20 * ffem,
                  borderRadius: BorderRadius.circular(40 * ffem),
                  child: Container(
                    height: 50 * ffem,
                    width: 50 * ffem,
                    padding: EdgeInsets.all(8 * ffem),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25 * ffem),
                      color: Colors.grey[100],
                    ),
                    child: Container(
                      child: Image.asset('assets/facebook.png'),
                    ),
                  ),
                ),
                SizedBox(width: 10 * ffem),
                Material(
                  elevation: 20 * ffem,
                  borderRadius: BorderRadius.circular(40 * ffem),
                  child: Container(
                    height: 50 * ffem,
                    width: 50 * ffem,
                    padding: EdgeInsets.all(10 * ffem),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25 * ffem),
                      color: Colors.grey[100],
                    ),
                    child: Container(
                      child: Image.asset('assets/linkedin.png'),
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
