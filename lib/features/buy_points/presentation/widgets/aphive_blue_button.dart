import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AphiveBlueButton extends StatelessWidget {
  String buttonText;
  Function buttonAction;
  AphiveBlueButton({this.buttonText, this.buttonAction});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonAction,
      child: Container(
        alignment: Alignment.center,
        height: 50,
        width: 280,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0),
          color: Theme.of(context).primaryColor,
        ),
        child: Text(
          buttonText,
          style: GoogleFonts.montserrat(
            fontSize: 16.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
