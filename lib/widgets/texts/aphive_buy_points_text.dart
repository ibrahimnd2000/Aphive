import 'file:///D:/Aphive%20Project/Aphive/lib/configs/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AphiveBuyPointsLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          aphive_icon,
          height: ScreenUtil().setHeight(178.05),
          width: ScreenUtil().setHeight(153.83),
        ),
      ],
    );
  }
}

class AphiveBuyPointsText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          buy_points,
          style: GoogleFonts.montserrat(
            color: Colors.white,
            fontSize: ScreenUtil().setSp(70),
            letterSpacing: 1,
          ),
        ),
      ],
    );
  }
}
