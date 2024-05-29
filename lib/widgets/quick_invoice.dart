import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/title_text_field.dart';

import 'latest_transction.dart';
import 'quick_invoic_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
      children: [
        QuickInvoiceHeader(),
        LastestTransction(),
        Divider(height: 48),
        TitleTextField(title: 'Customer name', hintText: 'Type customer name'),
      ],
    ));
  }
}
