import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_form.dart';

import 'latest_transction.dart';
import 'quick_invoic_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuickInvoiceHeader(),
        LastestTransction(),
        Divider(height: 48, color: Color(0xffF1F1F1)),
        QuickInvoiceForm()
      ],
    ));
  }
}
