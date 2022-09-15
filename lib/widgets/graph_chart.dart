import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class GraphChart extends StatelessWidget {
  final double width;
  GraphChart({super.key, required this.width});
  final List<FlSpot> dummyData2 = List.generate(8, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble() * 10);
  });
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
            lineBarsData: [
              LineChartBarData(
                spots: dummyData2,
                isCurved: true,
                barWidth: 3,
                color: Colors.orange,
              ),
            ]),
      ),
    );
  }
}
