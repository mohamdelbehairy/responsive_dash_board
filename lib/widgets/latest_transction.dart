import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_text_field.dart';

import '../utils/app_styles.dart';
import 'latest_transction_list_view.dart';

class LastestTransction extends StatelessWidget {
  const LastestTransction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Lastest transaction', style: AppStyles.styleMedium16),
        SizedBox(height: 16),
        LastestTransctionListview(),
        Divider(height: 48),
        CustomTextField()
      ],
    );
  }
}
