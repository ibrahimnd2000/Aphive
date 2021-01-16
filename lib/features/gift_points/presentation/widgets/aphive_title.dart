import 'package:Aphive/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:google_fonts/google_fonts.dart';

class AphiveTitle extends StatelessWidget {
  const AphiveTitle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        gift_points_title,
        style: GoogleFonts.montserrat(
          color: Colors.white,
          fontSize: 60.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
