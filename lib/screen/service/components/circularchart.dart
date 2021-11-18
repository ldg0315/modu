import 'package:layout_prac/screen/service/components/circularchart_data.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';

SfCircularChart circularchart() {
  return SfCircularChart(
    series: [
      PieSeries<ChartData, String>(
          dataSource: chartData,
          xValueMapper: (ChartData data, _) => data.x,
          yValueMapper: (ChartData data, _) => data.y,
          explode: true,
          explodeIndex: 2,
          pointColorMapper: (ChartData data, _) => data.color,
          dataLabelSettings: const DataLabelSettings(isVisible: true, textStyle: TextStyle(color: Colors.white)),
          enableTooltip: true
      )
    ],
  );
}