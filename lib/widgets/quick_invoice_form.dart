import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(children: [
          Expanded(
              child: TitleTextField(
                  title: 'Customer name', hintText: 'Type customer name')),
          SizedBox(width: 16),
          Expanded(
              child: TitleTextField(
                  title: 'Customer email', hintText: 'Type customer email')),
        ]),
        SizedBox(height: 24),
        Row(children: [
          Expanded(
              child: TitleTextField(
                  title: 'Item name', hintText: 'Type customer name')),
          SizedBox(width: 16),
          Expanded(child: TitleTextField(title: 'Item mount', hintText: 'USD')),
        ])
      ],
    );
  }
}
