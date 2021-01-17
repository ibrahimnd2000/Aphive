import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AphiveBlueButton extends StatelessWidget {
  String buttonText;
  Function buttonAction;
  AphiveBlueButton({this.buttonText, this.buttonAction});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonAction,
      child: Container(
        alignment: Alignment.center,
        height: ScreenUtil().setHeight(152.43),
        width: ScreenUtil().setWidth(954),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0),
          color: Theme.of(context).primaryColor,
        ),
        child: Text(
          buttonText,
          style: GoogleFonts.montserrat(
            fontSize: ScreenUtil().setSp(50),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
