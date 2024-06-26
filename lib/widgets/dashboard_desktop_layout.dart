import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/income_section.dart';
import 'package:responsive_dash_board/widgets/my_card_and_transcation_history_section.dart';

import 'all_expensess_and_quick_invoic_section.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
            flex: 2,
            child: Padding(
                padding: EdgeInsets.only(top: 40),
                child: AllExpensessAndQuickInvoicSection())),
        SizedBox(width: 24),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: 40),
            child: Column(
              children: [
                SizedBox(height: 40),
                MyCardAndTranscationHistorySection(),
                SizedBox(height: 24),
                Expanded(child: IncomeSection()),
              ],
            ),
          ),
        )
      ],
    );
  }
}
