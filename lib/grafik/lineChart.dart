import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_iot_sample/grafik/pricePoints.dart';
class LineChartWidget extends StatelessWidget {
  final List <PricePoint> points;

  const LineChartWidget(this.points, {key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2,
      child: LineChart(LineChartData(lineBarsData: [
        LineChartBarData(
          spots: points.map((point) => FlSpot(point.x, point.y)).toList(),
          isCurved: false,
          dotData: FlDotData(show: true))
      ])),
    );
  }
}
