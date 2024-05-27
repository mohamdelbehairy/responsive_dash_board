import 'package:flutter/material.dart';

import '../utils/app_styles.dart';
import 'latest_transction_list_view.dart';

class LastestTransction extends StatelessWidget {
  const LastestTransction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('Lastest transaction', style: AppStyles.styleMedium16),
        SizedBox(height: 16),
        LastestTransctionListview()
      ],
    );
  }
}
