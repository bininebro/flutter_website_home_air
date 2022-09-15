import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class GraphChart extends StatelessWidget {
  final double width;
  GraphChart({super.key, required this.width});
  final List<FlSpot> dummyData2 = List.generate(8, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble() * 10);
  });
  List<Color> gradientColors = [
    const Color(0xffe68e23),
    const Color(0xfff6dbb5),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: width,
      height: 300,
      child: LineChart(
        LineChartData(
            borderData: FlBorderData(show: false),
            gridData: FlGridData(show: false),
            titlesData: FlTitlesData(
                show: true,
                rightTitles:
                    AxisTitles(sideTitles: SideTitles(showTitles: false)),
                topTitles:
                    AxisTitles(sideTitles: SideTitles(showTitles: false))),
            lineBarsData: [
              LineChartBarData(
                spots: dummyData2,
                isCurved: true,
                barWidth: 1,
                color: Colors.deepOrangeAccent,
                belowBarData: BarAreaData(
                  show: true,
                  gradient: LinearGradient(
                    colors: gradientColors
                        .map((color) => color.withOpacity(0.2))
                        .toList(),
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
