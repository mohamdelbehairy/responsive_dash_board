import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('Quick Invoice', style: AppStyles.styleSemiBold20),
        const Expanded(child: SizedBox()),
        Container(
          height: 48,
          width: 48,
          decoration: const ShapeDecoration(
              shape: OvalBorder(), color: Color(0xFFFAFAFA)),
          child: const Icon(
            Icons.add,
            color: Color(0xff4EB7F2),
          ),
        )
      ],
    );
  }
}
