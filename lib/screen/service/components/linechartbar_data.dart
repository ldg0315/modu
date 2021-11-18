import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

List<Color> lineColor = [
  Color(0xff3553bd),
];

List<LineChartBarData> lineChartBarData = [
  LineChartBarData(
      colors: lineColor,
      dotData: FlDotData(show: false),
      gradientFrom: Offset(100,0),
      barWidth: (1.0),
      spots: [
        FlSpot(1, 26.5),
        FlSpot(2, 26.5),
        FlSpot(3, 25.4),
        FlSpot(4, 23.3),
        FlSpot(5, 20.6),
        FlSpot(6, 18.0),
        FlSpot(7, 17.4),
        FlSpot(8, 18.9),
        FlSpot(9, 21.2),
        FlSpot(10, 22.8),
        FlSpot(11, 23.8),
        FlSpot(12, 25.5)
      ]
  )
];

class LinesData {
  LinesData(this.year, this.sales);
  final String year;
  final double sales;
}