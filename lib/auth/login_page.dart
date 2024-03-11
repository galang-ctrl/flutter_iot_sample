import 'package:flutter/material.dart';
import 'package:flutter_iot_sample/screens/detail_screen.dart';
import 'package:flutter_iot_sample/utils/widgets/image_dir.dart';
import 'package:google_fonts/google_fonts.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: new BoxDecoration(
            gradient: new LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xfffabebe).withOpacity(0.1),
                Color(0xff644a4a),
                Color(0xff724b4a),
                Color(0xff000000),
              ],
            )
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(ImageDir.depan,
                      height: 461,
                      width: 414,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(top: 311, left: 40),
                  child:  Text(
                    'SAMPLE',
                    style: GoogleFonts.roboto(
                      fontSize: 33,
                      fontWeight: FontWeight.w400,),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 352, left: 39),
                  child:  Text(
                    'IOT APP',
                    style: GoogleFonts.roboto(
                      fontSize: 82,
                      fontWeight: FontWeight.bold,),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 495, left: 52),
                  child: Text(
                    'Sing In',
                    style: GoogleFonts.roboto(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 535),
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 42),
                    decoration: BoxDecoration(
                      color: Colors.black12, borderRadius: BorderRadius.circular(8),
                    ),
                    child: TextField(
                      onChanged: (String value) {},
                      decoration: InputDecoration(
                        hintText: 'Email ID',
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                        suffixIcon: const Icon(
                            Icons.email,
                        color: Colors.orange,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 598),
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 42),
                    decoration: BoxDecoration(
                      color: Colors.black12, borderRadius: BorderRadius.circular(8),
                    ),
                    child: TextField(
                      onChanged: (String value) {},
                      decoration: InputDecoration(
                        hintText: 'Enter Password',
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                        suffixIcon: const Icon(
                          Icons.lock,
                          color: Colors.orange,
                        ),

                      ),
                    ),

                  ),
                ),

                 Padding(
                   padding: const EdgeInsets.only(top: 670, left: 47),
                   child: Container(
                         width: 301,
                         height: 50,
                         child: ElevatedButton(
                             style: ElevatedButton.styleFrom(
                               backgroundColor: Colors.orange,
                                 shape: RoundedRectangleBorder(
                                     borderRadius: BorderRadius.circular(8))),
                             onPressed: () {
                              Navigator.push(context,
                              MaterialPageRoute(builder: (context)=> DetailScreen())
                              );
                             },
                             child: Text(
                                 'Log In',
                             style: GoogleFonts.roboto(
                               color: Colors.black,
                               fontSize: 18,
                               fontWeight: FontWeight.bold
                             ),)),
                       ),
                 ),
                Container(
                  padding: const EdgeInsets.only(top: 736, left: 118),
                  child: Text(
                    'don’t have an account yet?',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.normal,
                      fontSize: 13,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 763, left: 148),
                  child: Text(
                    'Create an Account',
                    style: GoogleFonts.roboto(
                      decoration: TextDecoration.underline,
                      decorationColor: Color(0xffFDA43C),
                      fontSize: 13,
                      color: Color(0xffFDA43C),
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
}
