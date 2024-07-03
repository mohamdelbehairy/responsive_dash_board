import 'package:flutter/material.dart';

import 'all_expensess.dart';
import 'quick_invoice.dart';

class AllExpensessAndQuickInvoicSection extends StatelessWidget {
  const AllExpensessAndQuickInvoicSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpensess(),
        SizedBox(height: 24),
        QuickInvoice(),
      ],
    );
  }
}
