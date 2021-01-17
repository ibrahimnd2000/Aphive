import 'file:///D:/Aphive%20Project/Aphive/lib/configs/constants.dart';
import 'file:///D:/Aphive%20Project/Aphive/lib/widgets/logo/aphive_logo.dart';
import 'file:///D:/Aphive%20Project/Aphive/lib/widgets/texts/aphive_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/size_extension.dart';

class AphiveTopHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AphiveLogo(),
          ],
        ),
        SizedBox(
          height: ScreenUtil().setHeight(125.8),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AphiveTitle(),
          ],
        )
      ],
    );
  }
}

class AphiveBottomHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          point_balance,
          style: GoogleFonts.montserrat(
            color: Colors.white,
            fontSize: 50.sp,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          user_point_balance,
          style: GoogleFonts.montserrat(
            color: Colors.white,
            fontSize: 50.sp,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
