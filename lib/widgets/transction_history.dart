import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

import 'transaaction_history_header.dart';

class TransctionHistory extends StatelessWidget {
  const TransctionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransctionHistoryHeader(),
        SizedBox(height: 20),
        Text('13 April 2022', style: AppStyles.styleMedium16),
      ],
    );
  }
}
