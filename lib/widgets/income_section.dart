import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';

import '../utils/app_styles.dart';
import 'income_seaction_header.dart';
import 'range_options.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
      children: [
        IncomeSectionHeader(),
      ],
    ));
  }
}
