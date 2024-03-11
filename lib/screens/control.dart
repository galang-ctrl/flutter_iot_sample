import 'package:flutter/material.dart';
import 'package:flutter_iot_sample/utils/widgets/image_dir.dart';
import 'package:google_fonts/google_fonts.dart';
import '../grafik/lineChart.dart';
import '../grafik/pricePoints.dart';
class ControlPanel extends StatefulWidget {
  const ControlPanel({super.key});
  @override
  State<ControlPanel> createState() => _ControlPanelState();
}
class _ControlPanelState extends State<ControlPanel> {
  DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SafeArea(
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
                      padding: const EdgeInsets.only(top: 67, left: 40),
                  child: Text(
                      'Kelembapan',
                    style: GoogleFonts.openSans(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.normal
                    ),
                  ),
                  ),
                  content(),
                ],
              ),
          ),
        ),
    );
  }
}

Widget content () {
  return Padding(
    padding: const EdgeInsets.only(top: 120),
    child: Container(
      child: LineChartWidget(pricePoints),
    ),
  );
}