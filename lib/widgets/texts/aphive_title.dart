import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:Aphive/configs/constants.dart';

class AphiveTitle extends StatelessWidget {
  const AphiveTitle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        gift_points_title,
        style: GoogleFonts.montserrat(
          color: Colors.white,
          fontSize: ScreenUtil().setSp(70),
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
