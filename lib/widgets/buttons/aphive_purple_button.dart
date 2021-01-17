import 'file:///D:/Aphive%20Project/Aphive/lib/configs/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/size_extension.dart';

class AphivePurpleButton extends StatelessWidget {
  const AphivePurpleButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(ScreenUtil().setHeight(44)),
      width: ScreenUtil().setWidth(954),
      height: 40,
      color: Colors.purple,
      child: Center(
          child: Text(
        select_contacts,
        style: GoogleFonts.montserrat(
          color: Colors.white,
          fontSize: 45.sp,
          fontWeight: FontWeight.w600,
        ),
      )),
    );
  }
}
