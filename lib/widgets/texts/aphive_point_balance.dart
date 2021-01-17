import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AphivePointBalance extends StatelessWidget {
  String assetPath;
  String aphiveBalancePointText;
  String aphiveUserBalance;
  AphivePointBalance(
      {this.assetPath, this.aphiveBalancePointText, this.aphiveUserBalance});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              aphiveBalancePointText,
              style: GoogleFonts.montserrat(
                color: Colors.white,
                fontSize: ScreenUtil().setSp(60),
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
        SizedBox(
          height: ScreenUtil().setHeight(93.2),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              assetPath,
              height: ScreenUtil().setHeight(122.29),
              width: ScreenUtil().setWidth(105.66),
            ),
            SizedBox(
              width: ScreenUtil().setWidth(54.3),
            ),
            Text(
              aphiveUserBalance,
              style: GoogleFonts.montserrat(
                color: Colors.white,
                fontSize: ScreenUtil().setSp(40),
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        )
      ],
    );
  }
}
