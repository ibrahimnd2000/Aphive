import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AphiveGreetingsText extends StatelessWidget {
  String aphiveGreetings;
  AphiveGreetingsText({this.aphiveGreetings});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          aphiveGreetings,
          style: GoogleFonts.montserrat(
            color: Colors.white,
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
