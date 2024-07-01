import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expensess_and_quick_invoic_section.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(flex: 3, child: AllExpensessAndQuickInvoicSection()),
        SizedBox(width: 32),
      ],
    );
  }
}
