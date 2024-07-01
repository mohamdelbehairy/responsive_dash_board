import 'package:flutter/material.dart';

import 'all_expensess_and_quick_invoic_section.dart';
import 'income_section.dart';
import 'my_card_and_transcation_history_section.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensessAndQuickInvoicSection(),
          SizedBox(height: 24),
          MyCardAndTranscationHistorySection(),
          SizedBox(height: 24),
          IncomeSection()
        ],
      ),
    );
  }
}
