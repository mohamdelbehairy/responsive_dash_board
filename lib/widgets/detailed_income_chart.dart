import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(getChartData()),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      sectionsSpace: 0.0,
      pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (flTouchEvent, pieTouchResponse) {
            activeIndex =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          }),
      sections: [
        PieChartSectionData(
            // showTitle: true,
            value: 40,
            radius: activeIndex == 0 ? 60 : 50,
            color: const Color(0xff208BC7)),
        PieChartSectionData(
            // showTitle: false,
            value: 25,
            radius: activeIndex == 1 ? 60 : 50,
            color: const Color(0xff4DB7F2)),
        PieChartSectionData(
            // showTitle: false,
            value: 20,
            radius: activeIndex == 2 ? 60 : 50,
            color: const Color(0xff064060)),
        PieChartSectionData(
            // showTitle: false,
            value: 22,
            radius: activeIndex == 3 ? 60 : 50,
            color: const Color(0xffE2DECD)),
      ],
    );
  }
}
