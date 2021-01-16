import 'package:Aphive/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AphiveBuyPointsLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          aphive_icon,
          height: 50,
          width: 50,
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
            fontSize: 20,
            letterSpacing: 1,
          ),
        ),
      ],
    );
  }
}
