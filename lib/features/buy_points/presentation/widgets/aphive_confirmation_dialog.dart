import 'package:Aphive/features/buy_points/presentation/widgets/aphive_blue_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AphiveConfirmationDialog extends StatelessWidget {
  const AphiveConfirmationDialog({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        alignment: Alignment.center,
        height: 300,
        width: 325,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Success!",
              style: GoogleFonts.montserrat(
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "You bought XXX points.",
              style: GoogleFonts.montserrat(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "New balance: [UserPointBalance]",
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            AphiveBlueButton(
              buttonText: "Home",
              buttonAction: () =>
                  Navigator.pushReplacementNamed(context, '/points_main'),
            ),
          ],
        ),
      ),
    );
  }
}
