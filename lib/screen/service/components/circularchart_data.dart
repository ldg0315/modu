import 'package:flutter/material.dart';

List<ChartData> chartData = [
  ChartData('one', 33.3, Colors.indigo),
  ChartData('two', 50, Colors.blue),
  ChartData('three', 16.7, Colors.lightBlueAccent),
];

class ChartData {
  ChartData(this.x, this.y, this.color);
  final String x;
  final double y;
  final Color color;

}
