import 'package:flutter/material.dart';
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
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              assetPath,
              height: 35,
              width: 35,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              aphiveUserBalance,
              style: GoogleFonts.montserrat(
                color: Colors.white,
                fontSize: 14.0,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        )
      ],
    );
  }
}
