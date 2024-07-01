import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
      sectionsSpace: 0.0,
      centerSpaceRadius: 10,
      pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (flTouchEvent, pieTouchResponse) {
            activeIndex =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          }),
      sections: [
        PieChartSectionData(
            showTitle: false,
            value: 40,
            radius: activeIndex == 0 ? 60 : 50,
            color: const Color(0xff208BC7)),
        PieChartSectionData(
            showTitle: false,
            value: 25,
            radius: activeIndex == 1 ? 60 : 50,
            color: const Color(0xff4DB7F2)),
        PieChartSectionData(
            showTitle: false,
            value: 20,
            radius: activeIndex == 2 ? 60 : 50,
            color: const Color(0xff064060)),
        PieChartSectionData(
            showTitle: false,
            value: 22,
            radius: activeIndex == 3 ? 60 : 50,
            color: const Color(0xffE2DECD)),
      ],
    );
  }
}
