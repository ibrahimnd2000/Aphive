import 'package:Aphive/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/size_extension.dart';

class AphivePurpleButton extends StatelessWidget {
  const AphivePurpleButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.75,
      height: 45,
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
