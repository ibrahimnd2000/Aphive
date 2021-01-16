import 'package:Aphive/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/size_extension.dart';

class AphiveBlueButton extends StatelessWidget {
  String text;
  double height;
  Function buttonAction;
  AphiveBlueButton(
      {Key key, this.text = "", this.height = 45, this.buttonAction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonAction,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.75,
        height: height,
        color: Color(0xff005AFF),
        child: Center(
            child: Text(
          text,
          style: GoogleFonts.montserrat(
            color: Colors.white,
            fontSize: 45.sp,
            letterSpacing: 1,
            fontWeight: FontWeight.w600,
          ),
        )),
      ),
    );
  }
}
