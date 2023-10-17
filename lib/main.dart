import 'package:components/cashback_banner.dart';
import 'package:components/estimated_budget.dart';
import 'package:components/property_info.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // so to access the other component file called property_info.dart, You can remove the CashBackBanner(), and replace it with PropertyInfo(),
      home: EstimatedBudget(),
    );
  }
}
