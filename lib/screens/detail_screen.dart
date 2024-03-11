import 'package:flutter/material.dart';
import 'package:flutter_iot_sample/screens/control.dart';
import 'package:flutter_iot_sample/screens/control_panel.dart';
import 'package:flutter_iot_sample/utils/widgets/image_dir.dart';
import 'package:google_fonts/google_fonts.dart';
class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});
  @override
  State<DetailScreen> createState() => _DetailScreenState();
}
class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: new BoxDecoration(
            gradient: new LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xfffabebe),
                Color(0xff644a4a),
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
                  padding: const EdgeInsets.only(top: 35, left: 102),
                  child: Image.asset(ImageDir.pic_iot),
                  ),
                InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> ControlPanelScreens())
                      );
                    },
                  child: Padding(
                      padding: const EdgeInsets.only(top: 6, left: 0),
                  child: Image.asset(ImageDir.p1),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 84, left: 200),
                  child: Container(
                    height: 198,
                    child: Image.asset(ImageDir.r1),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 181, left: 31, right: 27),
                  child: Container(
                    child: Image.asset(ImageDir.r2),

                  ),
                ),
                Padding(
                      padding: const EdgeInsets.only(top:95, left: 85),
                  child: Text(
                      'suhu',
                    style: GoogleFonts.roboto(
                      fontSize: 32,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  ),
                Padding(
                      padding: const EdgeInsets.only(top:143, left: 59),
                  child: Text(
                      'Avg Soil Temp',
                    style: GoogleFonts.roboto(
                      fontSize: 18,
                      fontWeight: FontWeight.normal
                    ),
                  ),
                  ),
                Padding(
                  padding: const EdgeInsets.only(top:95, left: 250),
                  child: Text(
                    'suhu',
                    style: GoogleFonts.roboto(
                        fontSize: 32,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:143, left: 229),
                  child: Text(
                    'Outside Temp',
                    style: GoogleFonts.roboto(
                        fontSize: 18,
                        fontWeight: FontWeight.normal
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 186, left: 45),
                  child: Text(
                    'presntase',
                    style: GoogleFonts.roboto(
                        fontSize: 32,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:237, left: 79),
                  child: Text(
                    'Humadity',
                    style: GoogleFonts.roboto(
                        fontSize: 18,
                        fontWeight: FontWeight.normal
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:186, left: 237),
                  child: Text(
                    'jumlah',
                    style: GoogleFonts.roboto(
                        fontSize: 32,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:237, left: 257),
                  child: Text(
                    'Devices',
                    style: GoogleFonts.roboto(
                        fontSize: 18,
                        fontWeight: FontWeight.normal
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:307, left: 36),
                  child: Text(
                    'Room',
                    style: GoogleFonts.roboto(
                        fontSize: 21,
                        color: Color(0xfffda43c),
                        fontWeight: FontWeight.normal
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 356, left: 32),
                  child: Image.asset(ImageDir.r3),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 371, left: 44),
                  child: Text(
                      'Mousture Sensor',
                  style: GoogleFonts.roboto(
                    fontSize: 18
                  ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 356, left: 216),
                  child: Image.asset(ImageDir.r3),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 371 , left: 252),
                  child: Text(
                    'NPK Sensor',
                    style: GoogleFonts.roboto(
                      fontSize: 18,

                    ),
                  ),

                ),


                Padding(
                  padding: const EdgeInsets.only(top: 445, left: 32),
                  child: Image.asset(ImageDir.r3),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 459, left: 55),
                  child: Text(
                    'Temp',
                    style: GoogleFonts.roboto(
                      fontSize: 18,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 441, left: 216),
                  child: Image.asset(ImageDir.r3),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 455, left: 238),
                  child: Text(
                    'Drawing Room',
                    style: GoogleFonts.roboto(
                      fontSize: 18,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:518, left: 36),
                  child: Text(
              'Routines',
                    style: GoogleFonts.roboto(
                        fontSize: 21,
                        color: Color(0xffFDA43C),
                        fontWeight: FontWeight.normal
                    ),
            ),
          ),
                Padding(
                    padding: const EdgeInsets.only(top: 504, left: 0),
                      child: Image.asset(ImageDir.r4)
                ),
                Padding(
                  padding:const EdgeInsets.only(top:573, left: 75),
                  child: Image.asset(ImageDir.sun),
                ),
                Padding(
                  padding: EdgeInsets.only(top:617, left: 60),
                  child: Text(
                    'Morning',
                    style: GoogleFonts.roboto(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 504, left: 140),
                      child: Image.asset(ImageDir.r5)
                ),
                Padding(
                  padding:const EdgeInsets.only(top:580, left: 255),
                  child: Image.asset(ImageDir.o),
                ),
                Padding(
                  padding: EdgeInsets.only(top:617, left: 250),
                  child: Text(
                    'Out',
                    style: GoogleFonts.roboto(
                        fontSize: 18,
                        color: Color(0xffFDA43C),
                        fontWeight: FontWeight.normal
                    ),),
                ),

                Padding(
                    padding: const EdgeInsets.only(top:666, left: 36),
                    child: Text(
                'Device in Use',
                style: GoogleFonts.roboto(
                    fontSize: 21,
                    color: Color(0xffFDA43C),
                    fontWeight: FontWeight.normal
                ),
              ),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 702,left:40  ),
                child: Image.asset(ImageDir.r6),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 715, left: 75),
                child: Image.asset(ImageDir.kps),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 711, left: 155),
                  child: Image.asset(ImageDir.lmp),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 711, left: 250),
                  child: Image.asset(ImageDir.ac1),)
              ],
              ),
            ),
          ),
        ),
    );
  }
}
