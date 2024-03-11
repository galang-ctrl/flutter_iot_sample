import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class ControlPanelScreens extends StatefulWidget {
  const ControlPanelScreens({super.key});
  @override
  State<ControlPanelScreens> createState() => _ControlPanelScreensState();
}

class _ControlPanelScreensState extends State<ControlPanelScreens> {
  DateTime selectedDate = DateTime.now();
  final List <Color> gradientColors = const [
    CupertinoColors.systemBlue,
    CupertinoColors.systemGreen,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xffb29393),
              Color(0xffa17878),
              Color(0xff724b4a),
              Color(0xff000000),
            ],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16, left: 240),
                  child: Column(
                    children: <Widget>[
                      ElevatedButton(
                        child:  Text(
                            '${selectedDate.day}-${selectedDate.month}-${selectedDate.year} ▼'),
                        onPressed: () async {
                          final DateTime? dateTime = await  showDatePicker(
                            context: context,
                            initialDate: selectedDate,
                            firstDate: DateTime(1945),
                            lastDate: DateTime(2030),
                          );
                          if (dateTime !=null ) {
                            setState(() {
                              selectedDate =dateTime!;
                            });
                          }
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 900, left: 40),
                  child: Text(
                    'layar',
                    style: GoogleFonts.openSans(
                        fontSize: 1,
                        color: Colors.black,
                        fontWeight: FontWeight.normal
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18, left: 25),
                  child: Text(
                    'Kelembapan',
                    style: GoogleFonts.openSans(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.normal
                    ),
                  ),
                ),
                Padding(
                padding: const EdgeInsets.only(top: 85,  right: 10),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        AspectRatio(
                          aspectRatio: 1.70,
                          child: LineChart(lineChartData()),
                        ),
    ],
    ),
    ),
    ),
    ],
    ),
    ),
    ),
      ),
    );
  }

  TextStyle axisTextStyle () {
    return const  TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );
  }
  Widget bottomTiles (double value, TitleMeta meta) {
    String text;
    switch (value.toInt()) {
      case 1:
        text = '21:30';
        break;
      case 4:
        text = '21:40';
        break;
      case 7:
        text = '21:50';
        break;
      case 10:
        text = '22:00';
        break;
      case 13:
        text = '22:10';
        break;
      case 17:
        text = '22:20';
        break;
      default:
        return Container();
    }
    return Text(text, style: axisTextStyle(),
      textAlign: TextAlign.left,

    );
  }
  Widget leftTiles(double value, TitleMeta meta) {
    String text;
    switch (value.toInt()) {
      case 1:
        text = '';
        break;
      case 2:
        text = '';
        break;
      case 3:
        text = '';
        break;
      case 4:
        text = '';
        break;
      case 5:
        text = '';
        break;
      case 6:
        text = '';
        break;
      default:
        return Container();
    }
    return Text(text, style: axisTextStyle(),
      textAlign: TextAlign.left,
    );
  }
  LineChartData lineChartData() {

    final AxisTitles hideAxisTile = AxisTitles(
      sideTitles: SideTitles(showTitles: false),
    );
    return LineChartData (
      gridData: FlGridData(
        show: true,
        drawHorizontalLine: true,
        drawVerticalLine: true,
        verticalInterval: 1,
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: hideAxisTile,
        topTitles: hideAxisTile,
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 1,
            getTitlesWidget: leftTiles,
            reservedSize: 10,
          ),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 1,
            getTitlesWidget: bottomTiles,
            reservedSize: 30,
          ),
        ),
      ),
      borderData: FlBorderData(
        border: Border.all(
          color: Colors.black,
        ),
      ),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          isCurved: true,
          barWidth: 3,

          dotData: FlDotData(show: false),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
                colors: gradientColors
                    .map((color) => color.withOpacity(0.3))
                    .toList()),
          ),
          spots: const [
            FlSpot(0, 3),
            FlSpot(2, 3.5),
            FlSpot(4, 3.1),
            FlSpot(6, 4),
            FlSpot(8, 3.7),
            FlSpot(10, 4),
            FlSpot(11, 5),
          ],
        ),
      ],

    );

  }
}